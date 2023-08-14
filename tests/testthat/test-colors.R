
test_that("carpentries_pal will create a function", {
  expect_type(carpentries_pal(), "closure")
  expect_type(carpentries_pal(discrete = TRUE), "closure")
  expect_type(carpentries_pal(discrete = FALSE), "closure")

})

test_that("discrete color palettes return expected colors", {
  dp <- carpentries_pal(discrete = TRUE)
  # I expect the dp to return a vector of the first three
  # colors of carpentries_colors
  expect_equal(dp(3), unname(carpentries_colors[1:3]))
  expect_equal(dp(14), unname(carpentries_colors[1:14]))
  expect_warning(dp(15))
  expect_warning(dp(100))
})

test_that("continuous color palettes return expected colors", {
  dp <- carpentries_pal(discrete = FALSE)
  # I expect the dp to return a vector of colors starting with the first and ending with the last
  expect_contains(dp(3), unname(carpentries_colors[c(1, 14)]))
  expect_contains(dp(14), unname(carpentries_colors[c(1, 14)]))
  expect_contains(dp(15), unname(carpentries_colors[c(1, 14)]))
  expect_contains(dp(100), unname(carpentries_colors[c(1, 14)]))
})
# Test continuous palette - we expect a vector starting with the first color and ending with the last color
