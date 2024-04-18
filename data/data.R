#' Connections between London Underground Stations
#'
#' Connections between individual stations, defines edges og London Underground graph.
#'
#' @format ## `connections_df`
#' A data frame with 372 rows and 2 columns:
#' \describe{
#'   \item{to}{Station Name}
#'   \item{from}{Station Name}
#'   ...
#' }
#' @source <https://github.com/nicola/tubemaps>
"connections_df"

#' London Underground Stations
#'
#' Names of London Underground Stations, No DLR only stations as per tuble.co.uk spec
#'
#' @format ## `stations_df`
#' A data frame with 372 rows and 2 columns:
#' \describe{
#'   \item{id}{A unique id, integer}
#'   \item{name}{Station Name}
#'   ...
#' }
#' @source <https://github.com/nicola/tubemaps>
"stations_df"

#' London Underground Graph
#'
#' Graph of London Underground Stations, No DLR only stations as per tuble.co.uk spec
#'
#' @format ## `lu_graph`
#' A tidygraph object of London Underground
#' }
#' @source <https://github.com/nicola/tubemaps>
"lu_graph"