test_that("accum_edges", {
	edges_accum <- accum_edges(
	  edges = edges_lsn,
	  lsn_path = path,
	  sum_col = "rcaAreaKm2",
	  acc_col = "WArea_km2",
	  save_local = FALSE,
	  overwrite = TRUE,
	  verbose = FALSE
	)
	expect_true("WArea_km2" %in% names(edges_accum))
	expect_equal(edges_accum$WArea_km2, edges_accum$h2oAreaKm2)
	expect_true(all(edges_accum$WArea_km2 >= edges_accum$rcaAreaKm2))
})
