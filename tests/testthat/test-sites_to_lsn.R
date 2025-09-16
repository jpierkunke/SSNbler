test_that("sites_to_lsn", {
	
	# MF_obs
	expect_equal(dim(obs_lsn), c(45, 20))
	expect_true("rid" %in% names(obs_lsn))
	expect_equal(obs_lsn$rid[1:2], c(33, 34))
	expect_true("ratio" %in% names(obs_lsn))
	expect_equal(as.vector(obs_lsn$ratio[1:2]), c(0.321, 0.069), tolerance = 0.001)
	expect_true(all(obs_lsn$ratio >= 0))
	expect_true(all(obs_lsn$ratio <= 1))
	expect_true("snapdist" %in% names(obs_lsn))
	expect_true(all(obs_lsn$snapdist >= 0))
	expect_true(all(obs_lsn$snapdist <= 1))
	expect_s3_class(obs_lsn, "sf")
	
	# MF_pred1km
	expect_equal(dim(preds_lsn), c(175, 13))
	expect_true("rid" %in% names(preds_lsn))
	expect_equal(preds_lsn$rid[1:2], c(5, 5))
	expect_true("ratio" %in% names(preds_lsn))
	expect_equal(as.vector(preds_lsn$ratio[1:2]), c(0.637, 0.275), tolerance = 0.001)
	expect_true(all(preds_lsn$ratio >= 0))
	expect_true(all(preds_lsn$ratio <= 1))
	expect_true("snapdist" %in% names(preds_lsn))
	expect_true(all(preds_lsn$snapdist >= 0))
	expect_true(all(preds_lsn$snapdist <= 1))
	expect_s3_class(preds_lsn, "sf")
})
