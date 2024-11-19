test_that("Correct Data", {
  expect_s3_class(get_wnba_player_stats("Caitlin Clark"), "data.frame")
}
)