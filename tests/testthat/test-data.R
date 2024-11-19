test_that("is it correct", {
  expect_s3_class(get_wnba_player_stats("Caitlin Clark"), "data.frame")
}
)