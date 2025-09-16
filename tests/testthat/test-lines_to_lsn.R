test_that("lines_to_lsn", {
	# MF_streams
	expect_equal(dim(edges_lsn), c(163, 11))
	expect_true("rid" %in% names(edges_lsn))
	expect_equal(edges_lsn$rid[1:2], c(1, 2))
	expect_s3_class(edges_lsn, "sf")
})
