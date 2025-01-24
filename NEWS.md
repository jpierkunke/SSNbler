# SSNbler 1.0.2

## Bug fixes

* Fixed bug in updist_sites() when length_col already exists.
* Fixed bugs in updist_sites() and afv_sites() which caused error when skipping sf object and length(sites)==1.
* Fixed bug in updist_sites() which occurred when the sf object didn't exist in lsn_path and arguments save_local = TRUE and overwrite = FALSE.
* Fixed bug in lines_to_lsn(), which caused the function to fail when check_topology = FALSE.
* Fixed bug in lines_to_lsn(), which caused some outlets to flagged as dangling node errors when they were not within topo_tolerance of another edge vertex or end node.


## Minor updates
* Removed final output message in lines_to_lsn() describing the results of topology checks when verbose = FALSE.

# SSNbler 1.0.1
Resubmitting initial package version after addressing the second set of
comments from CRAN.

# SSNbler 1.0.0
* Resubmitting initial package version after addressing feedback from
  CRAN.


# SSNbler 0.1.0

* Initial package version.
