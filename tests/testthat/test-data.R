test_that("MF_streams", {
  expect_equal(dim(MF_streams), c(163, 10))
	expect_true(all(sf::st_geometry_type(MF_streams) == "LINESTRING"))
	expect_s3_class(MF_streams, "sf")
})

test_that("MF_obs", {
	expect_equal(dim(MF_obs), c(45, 17))
	expect_true(all(sf::st_geometry_type(MF_obs) == "POINT"))
	expect_s3_class(MF_obs, "sf")
})


test_that("MF_pred1km", {
	expect_equal(dim(MF_pred1km), c(175, 10))
	expect_true(all(sf::st_geometry_type(MF_pred1km) == "POINT"))
	expect_s3_class(MF_pred1km, "sf")
})

test_that("MF_CapeHorn", {
	expect_equal(dim(MF_CapeHorn), c(654, 10))
	expect_true(all(sf::st_geometry_type(MF_CapeHorn) == "POINT"))
	expect_s3_class(MF_CapeHorn, "sf")
})

test_that("MF_preds", {
	expect_equal(dim(MF_preds), c(43, 10))
	expect_true(all(sf::st_geometry_type(MF_preds) == "POINT"))
	expect_s3_class(MF_preds, "sf")
})

test_that("Relevant files exist", {
	expect_equal(length(list.files(path)), 13)
	expect_true(file.exists(paste0(path, "/MF_CapeHorn.gpkg")))
	expect_true(file.exists(paste0(path, "/MF_obs.gpkg")))
	expect_true(file.exists(paste0(path, "/MF_pred1km.gpkg")))
	expect_true(file.exists(paste0(path, "/MF_preds.gpkg")))
	expect_true(file.exists(paste0(path, "/MF_streams.gpkg")))
	expect_true(file.exists(paste0(path, "/edges.gpkg")))
	expect_true(file.exists(paste0(path, "/nodes.gpkg")))
	expect_true(file.exists(paste0(path, "/obs.gpkg")))
	expect_true(file.exists(paste0(path, "/pred1km.gpkg")))
	expect_true(file.exists(paste0(path, "/noderelationships.csv")))
	expect_true(file.exists(paste0(path, "/nodexy.csv")))
	expect_true(file.exists(paste0(path, "/relationships.csv")))
	expect_true(file.exists(paste0(path, "/MF.ssn")))
	
})