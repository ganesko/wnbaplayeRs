# code to prepare `wnba` dataset goes here

wnba <- readr::read_csv("https://raw.githubusercontent.com/fivethirtyeight/WNBA-stats/refs/heads/master/wnba-player-stats.csv")
wnba <- janitor::clean_names(wnba)
usethis::use_data(wnba, overwrite = TRUE)
