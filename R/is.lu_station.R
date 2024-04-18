#' is.lu_station
#'
#' @param name
#'
#' @return
#' @export
#'
#' @examples
is.lu_station <- function(name) {
  name %in% tubler::stations_df$name
}
