## load underground stations

stations_url <- "https://raw.githubusercontent.com/nicola/tubemaps/31d8c26d5bde5dcf300d79f87388b0fbed3d5999/datasets/london.stations.csv"
stations_df <- read.csv(stations_url)[,c("id", "name")]

usethis::use_data(stations_df, overwrite = TRUE)

## load and wrangle underground stations connections

connections_url <- "https://raw.githubusercontent.com/nicola/tubemaps/31d8c26d5bde5dcf300d79f87388b0fbed3d5999/datasets/london.connections.csv"
connections_df <- read.csv(connections_url)
connections_df <- connections_df[connections_df$line != 13,]
connections_df <- merge(connections_df, stations_df, by.x="station1", by.y="id")
names(connections_df)[names(connections_df) == 'name'] <- 'to'
connections_df <- merge(connections_df, stations_df, by.x="station2", by.y="id")
names(connections_df)[names(connections_df) == 'name'] <- 'from'
connections_df <- connections_df[,c("to", "from")]
connections_df <- unique(connections_df)

usethis::use_data(connections_df, overwrite = TRUE)

# build tidygraph
lu_graph <- tidygraph::tbl_graph(nodes = data.frame(names = stations_df$name), edges = connections_df, directed = FALSE)

usethis::use_data(lu_graph, overwrite = TRUE)
§
