#' guess_tuble
#'
#' Given a tuble guess, i.e. a station and the number of stops, n_stops, to the
#' answer/target station, will return a set of stations that satisfy those two criteria.
#'
#' If a set of stations is provided, i.e. the result of a previous guess, the
#' intersection of that set with the results of this guess will be returned
#'
#' @param station
#' @param n_stops
#' @param prev_set
#' @param grph
#'
#' @return
#' @export
#'
#' @examples
guess_tuble <- function(station, n_stops, prev_set, grph) {

  # if grph not specified, default to tubler::lu_graph
  if (missing(grph)) {
    grph <- tubler::lu_graph
  }

  # default to all stations in prev_set, if not provided
  if(missing(prev_set)) {
    prev_set <- grph |>
      tidygraph::activate(nodes) |>
      as.data.frame() |>
      dplyr::pull(names)
  }

  if(missing(station) | missing(n_stops)) {
    stop("Provide both station and n_stops")
  }

  # check station names
  if(!is.lu_station(station)) {
    stop(paste(station1, " is not a station!"))
  }

  nms <- grph |>
    tidygraph::activate(nodes) |>
    dplyr::mutate(
      depth = tidygraph::bfs_dist(
        root = get_station_node_id(station)
      )
    ) |>
    dplyr::filter(depth == n_stops) |>
    as.data.frame() |>
    dplyr::pull(names)

  return(intersect(nms, prev_set))

}
