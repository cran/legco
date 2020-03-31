## ----include=FALSE------------------------------------------------------------
knitr::opts_chunk$set(message = FALSE)
library(legco)
library(httptest)
start_vignette("schedule")

## -----------------------------------------------------------------------------
# Fetch the total number of members in the Bills Committee on Fugitive Offenders and
# Mutual Legal Assistance in Criminal Matters Legislation (Amendment) Bill 2019
membership(committee_id = 3005, count = TRUE)

## ----echo=FALSE---------------------------------------------------------------
change_state()
Sys.sleep(2)

## -----------------------------------------------------------------------------
# Fetch all LegCo terms
term()

## ----echo=FALSE---------------------------------------------------------------
change_state()
Sys.sleep(2)

## -----------------------------------------------------------------------------
# Fetch all LegCo sessions of the fifth term
session(term_id = 4)

## ----echo=FALSE---------------------------------------------------------------
change_state()
Sys.sleep(2)

## -----------------------------------------------------------------------------
# Fetch all LegCo committees from the sixth term
v <- committee(term_id = 5)
head(v)

## ----echo=FALSE---------------------------------------------------------------
change_state()
Sys.sleep(2)

## -----------------------------------------------------------------------------
# Fetch members of the Subcommittee on Issues Relating to Bazaars
v <- membership(committee_id = 2704)
head(v)

## ----echo=FALSE---------------------------------------------------------------
change_state()
Sys.sleep(2)

## -----------------------------------------------------------------------------
# Fetch the committee membership of Hon Wu Chi-wai
v <- membership(member_id = 834)
head(v)

## ----echo=FALSE---------------------------------------------------------------
change_state()
Sys.sleep(2)

## -----------------------------------------------------------------------------
# Fetch full list of members
v <- member()
head(v)

## ----echo=FALSE---------------------------------------------------------------
change_state()
Sys.sleep(2)

## -----------------------------------------------------------------------------
#Fetches the term served by Hon Chan Kin-por and Kwong Chun-yu
member_term(member_id = c(273, 924))

## ----echo=FALSE---------------------------------------------------------------
change_state()
Sys.sleep(2)

## -----------------------------------------------------------------------------
# Fetch all meeting conducted on March 20, 2019
meeting(from = "2019-03-20", to = "2019-03-20")

## ----echo=FALSE---------------------------------------------------------------
change_state()
Sys.sleep(2)

## -----------------------------------------------------------------------------
# Fetch all meetings of Subcommittee on Issues Relating to Bazaars
v <- meeting_committee(committee_id = 2704)
head(v)

## ----include=FALSE------------------------------------------------------------
end_vignette()

