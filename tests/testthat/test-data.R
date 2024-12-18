test_that("Correct Data", {
  expect_s3_class(get_wnba_player_stats("Caitlin Clark"), "data.frame")
})

test_that("wnba_stat_grapher returns a ggplot object", {
  player <- "Sue Bird"
  stat <- "f_tr"
  plot <- wnba_stat_grapher(player, stat)
  expect_s3_class(plot, "ggplot")
})
