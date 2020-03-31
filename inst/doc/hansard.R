## ----include=FALSE------------------------------------------------------------
knitr::opts_chunk$set(message = FALSE)
library(legco)
library(httptest)
start_vignette("hansard")

## -----------------------------------------------------------------------------
# Fetch the total number of questions put on the government in LegCo in April, 2019
v <- questions(from = "2019-04-01", to = "2019-04-30", count = TRUE)
v

## ----echo=FALSE---------------------------------------------------------------
change_state()
Sys.sleep(2)

## -----------------------------------------------------------------------------
v <- hansard(from = "2019-02-20", to = "2019-02-20")
v

## ----echo=FALSE---------------------------------------------------------------
change_state()
Sys.sleep(2)

## -----------------------------------------------------------------------------
v <- legco_section_type
head(v)

## ----eval=FALSE---------------------------------------------------------------
#  # Fetch second reading of bills during the Council meeting on February 20, 2019
#  v <- subjects(hansard_id = 2714, section_code = "b2r")
#  head(v)

## ----echo=FALSE---------------------------------------------------------------
v <- subjects(hansard_id = 2714, section_code = "b2r", to = "2020-03-27")
head(v)

## ----echo=FALSE---------------------------------------------------------------
change_state()
Sys.sleep(2)

## -----------------------------------------------------------------------------
# Fetch a list of all speakers in LegCo council meetings
v <- speakers()
head(v)

## ----echo=FALSE---------------------------------------------------------------
change_state()
Sys.sleep(2)

## -----------------------------------------------------------------------------
# Fetch a list of all speakers who are LegCo members
v <- speakers(type = "MB")
head(v)

## ----echo=FALSE---------------------------------------------------------------
change_state()
Sys.sleep(2)

## -----------------------------------------------------------------------------
# Look up the details of a speaker with the id 6
speakers(speaker_id = 6)

## ----echo=FALSE---------------------------------------------------------------
change_state()
Sys.sleep(2)

## ----eval=FALSE---------------------------------------------------------------
#  # Fetch records of proceedings of the second reading of Smoking (Public Health) (Amendment) Bill 2019
#  v <- rundown(rundown_id = 899628:899649)
#  v <- v[order(v$RundownID), ]
#  rownames(v) <- 1:nrow(v)
#  v[3:5, ]

## ----echo=FALSE---------------------------------------------------------------
v <- rundown(rundown_id = 899628:899649, to = "2020-03-27")
v <- v[order(v$RundownID), ]
rownames(v) <- 1:nrow(v)
v[3:5, ]

## ----echo=FALSE---------------------------------------------------------------
change_state()
Sys.sleep(2)

## -----------------------------------------------------------------------------
# Fetch the first bill under second reading on February 20, 2019
v <- rundown(bookmark_name = "b2r01", from = "2019-02-20", to = "2019-02-20")
v

## ----echo=FALSE---------------------------------------------------------------
change_state()
Sys.sleep(2)

## -----------------------------------------------------------------------------
# Fetch questions being put on the government during the Council meeting on February 20, 2019
v <- questions(from = "2019-02-20", to = "2019-02-20")
head(v)

## ----echo=FALSE---------------------------------------------------------------
change_state()
Sys.sleep(2)

## ----eval=FALSE---------------------------------------------------------------
#  # Fetch bills debated during the Council meeting on February 20, 2019
#  v <- bills(hansard_id = 2714)
#  head(v)

## ----echo=FALSE---------------------------------------------------------------
v <- bills(hansard_id = 2714, to = "2020-03-27")
head(v)

## ----echo=FALSE---------------------------------------------------------------
change_state()
Sys.sleep(2)

## ----eval=FALSE---------------------------------------------------------------
#  # Fetch motions discussed during the Council meeting on February 20, 2019
#  v <- motions(hansard_id = 2714)
#  head(v)

## ----echo=FALSE---------------------------------------------------------------
v <- motions(hansard_id = 2714, to = "2020-03-27")
head(v)

## ----echo=FALSE---------------------------------------------------------------
change_state()
Sys.sleep(2)

## ----eval=FALSE---------------------------------------------------------------
#  # Fetch petition laid during the Council meeting on January 19, 2018
#  v <- petitions(from = "2018-01-10")
#  v

## ----echo=FALSE---------------------------------------------------------------
v <- petitions(from = "2018-01-10", to = "2020-03-27")
v

## ----echo=FALSE---------------------------------------------------------------
change_state()
Sys.sleep(2)

## ----eval=FALSE---------------------------------------------------------------
#  # Fetch addresses given during the Council meeting on February 20, 2019
#  v <- addresses(hansard_id = 2714)
#  v

## ----echo=FALSE---------------------------------------------------------------
v <- addresses(hansard_id = 2714, to = "2020-03-27")
v

## ----echo=FALSE---------------------------------------------------------------
change_state()
Sys.sleep(2)

## ----eval=FALSE---------------------------------------------------------------
#  # Fetch statements made by government officials during the Council meeting on April 22, 2015
#  v <- statements(from = "2015-04-22")
#  v

## ----echo=FALSE---------------------------------------------------------------
v <- statements(from = "2015-04-22", to = "2020-03-27")
v

## ----echo=FALSE---------------------------------------------------------------
change_state()
Sys.sleep(2)

## ----eval=FALSE---------------------------------------------------------------
#  # Fetch results of votes conducted during the Council meeting on January 19, 2018
#  v <- voting_results(hansard_id = 2714)
#  head(v)

## ----echo=FALSE---------------------------------------------------------------
v <- voting_results(hansard_id = 2714, to = "2020-03-27")
head(v)

## ----echo=FALSE---------------------------------------------------------------
change_state()
Sys.sleep(2)

## ----eval=FALSE---------------------------------------------------------------
#  # Fetch instances of summoning bell during the Council meeting on January 19, 2018
#  v <- summoning_bells(hansard_id = 2714)
#  head(v)

## ----echo=FALSE---------------------------------------------------------------
# Fetch instances of summoning bell during the Council meeting on January 19, 2018
v <- summoning_bells(hansard_id = 2714, to = "2020-03-27")
head(v)

## ----include=FALSE------------------------------------------------------------
end_vignette()

