test_that("ssn_check", {
	expect_output(ssn_check(ssn_object), "SSN object is valid: TRUE")
})
