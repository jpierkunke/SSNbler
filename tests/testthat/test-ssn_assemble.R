test_that("ssn_assemble", {
	
	# overall object
	expect_true(is.list(ssn_object))
	expect_equal(length(ssn_object), 4)
	expect_equal(names(ssn_object), c("edges", "obs", "preds", "path"))
	expect_s3_class(ssn_object, "SSN")
	
	# edges
	expect_equal(dim(ssn_object$edges), c(163, 17))
	expect_equal(sf::st_crs(ssn_object$edges)$epsg, c(5070))
	expect_s3_class(ssn_object$edges, "sf")
	
	# obs
	expect_equal(dim(ssn_object$obs), c(45, 26))
	expect_equal(sf::st_crs(ssn_object$obs)$epsg, c(5070))
	expect_s3_class(ssn_object$obs, "sf")
	
	# preds
	expect_true(is.list(ssn_object$preds))
	expect_equal(length(ssn_object$preds), 1)
	expect_equal(names(ssn_object$preds), "pred1km")
	expect_equal(dim(ssn_object$preds$pred1km), c(175, 19))
	expect_equal(st_crs(ssn_object$preds$pred1km)$epsg, c(5070))
	expect_s3_class(ssn_object$preds$pred1km, "sf")
	
	# path
	expect_true(is.character(ssn_object$path))
	expect_equal(ssn_object$path, paste0(path, "/MF.ssn"))
  expect_s3_class(ssn_object, "SSN")
  
})
