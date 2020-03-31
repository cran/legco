## ----include=FALSE------------------------------------------------------------
knitr::opts_chunk$set(message = FALSE)
library(legco)
library(httptest)
start_vignette("attn")

## -----------------------------------------------------------------------------
# Fetch the total number of members absent from the Council meeting on May 22, 2019
attendance(meet_id = 136897, from = "2019-05-22", to = "2019-05-22", attn = "a", count = TRUE)

## ----echo=FALSE---------------------------------------------------------------
change_state()
Sys.sleep(2)

## -----------------------------------------------------------------------------
# Fetch members who were absent from the Subcommittee on Issues Relating to Bazaars meetings on October 13, 2017
attendance(committee_id = 2704, from = "2017-10-13", to = "2017-10-13", attn = "a")

## ----echo=FALSE---------------------------------------------------------------
change_state()
Sys.sleep(2)

## ----eval=FALSE---------------------------------------------------------------
#  # Fetch the meetings that Hon Chu Hoi-dick was absent from
#  v <- attendance(member_id = 776, attn = "a")
#  head(v)

## ----echo=FALSE---------------------------------------------------------------
# Fetch the meetings that Hon Chu Hoi-dick was absent from
v <- attendance(member_id = 776, attn = "a", to = "2020-03-27")
head(v)

## ----include=FALSE------------------------------------------------------------
end_vignette()

