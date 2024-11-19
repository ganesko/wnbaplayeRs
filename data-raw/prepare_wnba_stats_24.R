# code to prepare `wnba_stats_24` dataset goes here

wnba_stats_24 <- readr::read_csv("data-raw/wnba_stats_24.csv")

wnba_stats_24 <- janitor::clean_names(wnba_stats_24)

usethis::use_data(wnba_stats_24, overwrite = TRUE)

