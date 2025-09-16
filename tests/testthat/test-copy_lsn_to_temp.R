test_that("copy_lsn_to_temp", {
  expect_true(file.exists(paste0(path, "/MF_CapeHorn.gpkg")))
	expect_true(file.exists(paste0(path, "/MF_obs.gpkg")))
	expect_true(file.exists(paste0(path, "/MF_pred1km.gpkg")))
	expect_true(file.exists(paste0(path, "/MF_preds.gpkg")))
	expect_true(file.exists(paste0(path, "/MF_streams.gpkg")))
})
