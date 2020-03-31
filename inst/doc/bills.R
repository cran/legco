## ----include=FALSE------------------------------------------------------------
knitr::opts_chunk$set(message = FALSE)
library(legco)
library(httptest)
start_vignette("bills")

## -----------------------------------------------------------------------------
# Fetch the total number of bills that have been discussed in LegCo
all_bills(count = TRUE)

## ----echo=FALSE---------------------------------------------------------------
change_state()
Sys.sleep(2)

## -----------------------------------------------------------------------------
# Fetch bills that passed third reading on February 20, 2019
all_bills(third_from = "2019-02-20")

## ----include=FALSE------------------------------------------------------------
end_vignette()

