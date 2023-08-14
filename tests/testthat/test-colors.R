
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
})

# What happens if I put dp of 14, 15, or 100
# Test continuous palette - we expect a vector starting with the first color and ending with the last color
