context("test-onload")

test_that("character vector returned by pkg_gif_paths", {
  expect_type(pkg_gif_paths(), "character")
})

test_that(" vectorof length more than 0 returned by pkg_gif_paths", {
  expect_gt(length(pkg_gif_paths()), 0)
})


