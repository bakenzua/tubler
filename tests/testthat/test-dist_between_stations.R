test_that("dist_between_stations() works", {

  expect_equal(
    dist_between_stations(
      station1 = "Aldgate",
      station2 = "Aldgate East"
    ),
    2
  )

  expect_equal(
    dist_between_stations(
      station1 = "Oxford Circus",
      station2 = "King's Cross St. Pancras"
    ),
    3
  )
})
