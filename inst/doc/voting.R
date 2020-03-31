## ----include=FALSE------------------------------------------------------------
knitr::opts_chunk$set(message = FALSE)
library(legco)
library(httptest)
start_vignette("voting")

## -----------------------------------------------------------------------------
# Fetch the total number of members absent from the division on the Motion Concerning
# the Amendment to the Method for the Selection of the Chief Executive of the HKSAR
voting_record(committee = "Council Meeting",
              from = "2015-06-18", to = "2015-06-18",
              vote = "absent", count = TRUE)

## ----echo=FALSE---------------------------------------------------------------
Sys.sleep(2)

## -----------------------------------------------------------------------------
# Fetch how members voted the motion on "Abolishing the MPF Offsetting Mechanism" on November 11, 2016
v <- voting_record(committee = "Council Meeting",
                   from = "2016-11-16 13:51:53",
                   to = "2016-11-16 13:51:53")
head(v)

## ----echo=FALSE---------------------------------------------------------------
Sys.sleep(2)

## ----eval=FALSE---------------------------------------------------------------
#  # Fetch the votes that Hon Abraham Shek were abstained from
#  v <- voting_record(name_en = "Abraham SHEK", vote = "abstain")
#  head(v)

## ----echo=FALSE---------------------------------------------------------------
# CRAN's build server does not support Chinese characters
v <- voting_record(name_en = "Abraham SHEK", vote = "abstain", to = "2020-03-27")
head(v)

## ----include=FALSE------------------------------------------------------------
end_vignette()

