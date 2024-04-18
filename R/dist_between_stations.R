#' dist_between_stations
#'
#' @param grph
#' @param station1
#' @param station2
#'
#' @return
#' @export
#'
#' @examples
dist_between_stations <- function(station1, station2, grph) {

  # check station names
  if(!is.lu_station(station1)) {
    stop(paste(station1, " is not a station!"))
  }
  if(!is.lu_station(station2)) {
    stop(paste(station2, " is not a station!"))
  }

  # if grph not specified, default to tubler::lu_graph
  if (missing(grph)) {
    grph <- tubler::lu_graph
  }

  # calculate distance between two nodes
  # this is a bit of a sledgehammer as calculates distances from station1 to all
  # stations and
  grph |>
    tidygraph::activate(nodes) |>
    dplyr::mutate(dist_to_hw = tidygraph::node_distance_to(get_station_node_id(station1))) |>
    dplyr::filter(names == station2) |>
    dplyr::pull(dist_to_hw)
}
