#' get_station_node_id
#'
#' Internal function to get the node id from the lu_graph by station name
#'
#' @param station
#' @param grph
#'
#' @return
#'
#' @examples
get_station_node_id <- function(station, grph) {
  if(missing(grph)) {
    grph <- tubler::lu_graph
  }
  node_list <- grph |>
    tidygraph::activate(nodes) |>
    as.data.frame()

  which(node_list$names == station)
}
