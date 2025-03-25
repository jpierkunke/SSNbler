# SSNbler 1.1.0

## Major updates
* Modified lines_to_lsn() and added various internal helper functions to support topology checking in parallel. Overcomes a 32-bit matrix indexing limitation in R (2^31-1), which in practice limited the number of input `streams` LINESTRING features to 46340.

## Bug fixes
* Fixed bug in updist_sites() when length_col already exists.
* Fixed bugs in updist_sites() and afv_sites() which caused error when skipping sf object and length(sites)==1.
* Fixed bug in updist_sites() which occurred when the sf object didn't exist in lsn_path and arguments save_local = TRUE and overwrite = FALSE.
* Fixed bug in lines_to_lsn(), which caused the function to fail when check_topology = FALSE.
* Fixed bug in lines_to_lsn(), which caused some outlets to flagged as dangling node errors when they were not within topo_tolerance of another edge vertex or end node.
* Fixed logic error in `lines_to_lsn`, where outlets with three features flowing in were not being flagged as toplogical errors.
* In lines_to_lsn(), added a check whether line features in streams have a length shorter than snap_tolerance. This prevents the end nodes of a short line feature from being snapped together (forming a loop) when check_topology = TRUE. When this occurs an informative error message is returned. 

## Minor updates
* Removed final output message in lines_to_lsn() describing results of topology checks when verbose = FALSE.
* Added computationally efficient check in `afv_edges()`, `updist_edges()`, and `accum_edges()` for diverging nodes. When found, a more informative error is produced. 

# SSNbler 1.0.1
Resubmitting initial package version after addressing the second set of
comments from CRAN.

# SSNbler 1.0.0
* Resubmitting initial package version after addressing feedback from
  CRAN.


# SSNbler 0.1.0

* Initial package version.
