# test_prelim -------------------------------------------------------------
##
## Script name: test_prelim.R
##
#' Purpose of script:
#'
## Author: Benjamin Elliot
##
## Date Created: 2023-03-07
##
## ## Email: Benjamin.Elliot@LexisNexisRisk.com
##
## Notes: -------------------
#'
#'  https://r-pkgs.org/whole-game.html
#'  Very useful resource ^
#'  R packages e-textbook
#'
#'
##
## GitHub: -------------------
##
# usethis::create_github_token()
# gitcreds::gitcreds_set()
##
## Ecosystem: ----------------

.rs.restartR()

ecosystem <- c("devtools", "usethis", "testthat", "roxygen2")
  names(ecosystem) <- ecosystem
  lapply(ecosystem, require, character.only = TRUE)

warnings()
  remove(ecosystem)


    # Grab custom functions:

    ## Home:
      home <- "~/R/HPCCr/"  %>% # enter working directory here
        stringr::str_remove("/$") %>%
        stringr::str_c("/")

if(file.exists(str_c(home, 'Functions'))){

fauna <-  str_c(home, 'Functions') %>%
  list.files()
for(i in 1:length(fauna)){
  source(file.path(str_c(home, 'Functions'), fauna[i]))
}
remove(fauna)
remove(i)
}


# test that ---------------------------------------------------------------

usethis::use_testthat()

use_test("testthat.R")
#> ✔ Adding 'testthat' to Suggests field in DESCRIPTION
#> ✔ Setting Config/testthat/edition field in DESCRIPTION to '3'
#> ✔ Creating 'tests/testthat/'
#> ✔ Writing 'tests/testthat.R'
#> ✔ Writing 'tests/testthat/test-my-test.R'
#> • Edit 'tests/testthat/test-my-test.R'


# session info ------------------------------------------------------------

devtools::session_info()


