context("test-add_col.R")

test_that("where controls position of new column", {
  df <- data.frame(x = 1)

  expect_equal(
    add_col(df, "y", 2),
    data.frame(x = 1, y = 2)
  )
  expect_equal(
    add_col(df, "y", 2, where = 1),
    data.frame(y = 2, x = 1)
  )
})

test_that("column with same name overwrites", {
  df <- data.frame(x = 1)

  expect_equal(
    add_col(df, "x", 2),
    data.frame(x = 2)
  )

})
