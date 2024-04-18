test_that("is.lu_station works", {
  expect_true(is.lu_station("Aldgate"))
  expect_false(is.lu_station("Aldgater"))
})
