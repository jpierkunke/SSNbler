test_that("updist_sites", {
  expect_true(is.list(site.list_updist))
	expect_equal(length(site.list_updist), 2)
	expect_true("obs" %in% names(site.list_updist))
	expect_equal(dim(site.list_updist$obs), c(45, 21))
	expect_true("upDist" %in% names(site.list_updist$obs))
	expect_equal(site.list_updist$obs$upDist[1:2], c(14295.20, 16258.19), tolerance = 0.01)
	expect_true(all(site.list_updist$obs$upDist >= 0))
	expect_s3_class(site.list_updist$obs, "sf")
	expect_true("pred1km" %in% names(site.list_updist))
	expect_equal(dim(site.list_updist$pred1km), c(175, 14))
	expect_true("upDist" %in% names(site.list_updist$pred1km))
	expect_equal(site.list_updist$pred1km$upDist[1:2], c(16458.27, 15458.27), tolerance = 0.01)
	expect_true(all(site.list_updist$pred1km$upDist >= 0))
	expect_s3_class(site.list_updist$pred1km, "sf")
})


