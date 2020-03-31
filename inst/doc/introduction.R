## ----include=FALSE------------------------------------------------------------
knitr::opts_chunk$set(message = FALSE)
library(httptest)
start_vignette("introduction")

## ----eval=FALSE---------------------------------------------------------------
#  install.packages("devtools")
#  devtools::install_github("elgarteo/legco")

## -----------------------------------------------------------------------------
library(legco)

## ----echo=FALSE---------------------------------------------------------------
change_state()
Sys.sleep(2)

## ----eval=FALSE---------------------------------------------------------------
#  # A request with sequential numeric filtering conditions
#  x <- c(1:50)
#  speakers(speaker_id = x)

## ----echo=FALSE, message=TRUE-------------------------------------------------
message("Encountered Error in open.connection(con, \"rb\"): LibreSSL SSL_connect: SSL_ERROR_SYSCALL in connection to app.legco.gov.hk:443")
message("Possible common connection problem resolvable by retrying.")
message("Retrying...")

## ----echo=FALSE, message=FALSE------------------------------------------------
message("The request did not return any data.")
message("Possible common connection problem resolvable by retrying.")
message("Retrying...")

## -----------------------------------------------------------------------------
hansard(from = "2018-05-01", to = "2018-05-31")

## ----echo=FALSE---------------------------------------------------------------
change_state()
Sys.sleep(2)

## ----eval=FALSE---------------------------------------------------------------
#  subjects(hansard_id = 2451)

## ----echo=FALSE---------------------------------------------------------------
subjects(hansard_id = 2451, to = "2020-03-27")

## ----echo=FALSE---------------------------------------------------------------
change_state()
Sys.sleep(2)

## -----------------------------------------------------------------------------
legco_section_type[legco_section_type$SectionCode == "mbm", ]

## ----eval=FALSE---------------------------------------------------------------
#  w <- rundown(rundown_id = 828783:828826)
#  # Order by RundownID, i.e. chronological order
#  w <- w[order(w$RundownID), ]
#  rownames(w) <- 1:nrow(w)
#  # Some two paragraphs of the hansard relevant to the discussion of the motion
#  w$Content[41:42]

## ----echo=FALSE---------------------------------------------------------------
w <- rundown(rundown_id = 828783:828826, to = "2020-03-27")
# Order by RundownID, i.e. chronological order
w <- w[order(w$RundownID), ]
rownames(w) <- 1:nrow(w)
# Some two paragraphs of the hansard relevant to the discussion of the motion
w$Content[41:42]

## ----echo=FALSE---------------------------------------------------------------
change_state()
Sys.sleep(2)

## -----------------------------------------------------------------------------
y1 <- speakers(speaker_id = x[1:19])
y2 <- speakers(speaker_id = x[20:27])
y <- rbind(y1, y2)
# Show members who have spoken about this motion
head(y[y$Type == "MB", ])

## ----echo=FALSE---------------------------------------------------------------
change_state()
Sys.sleep(2)

## -----------------------------------------------------------------------------
v <- voting_results(from = w$MeetingDate[1], to = w$MeetingDate[1], section_code = "mbm")
v[v$Subject == "Not forgetting the 4 June incident", ]

## ----echo=FALSE---------------------------------------------------------------
change_state()
Sys.sleep(2)

## -----------------------------------------------------------------------------
v <- voting_record(from = w$MeetingDate[1], to = w$MeetingDate[1])
v[v$Vote == "Yes", 32:33]

## ----echo=FALSE---------------------------------------------------------------
change_state()
Sys.sleep(2)

## -----------------------------------------------------------------------------
# Find out MeetID of the Council meeting on May 23, 2018
meeting(from = w$MeetingDate[1], to = w$MeetingDate[1])

## ----echo=FALSE---------------------------------------------------------------
change_state()
Sys.sleep(2)

## ----eval=FALSE---------------------------------------------------------------
#  z <- attendance(meet_id = 126590)
#  # Show members who were present
#  z[z$PresentAbsent == "Present", 7:9]

## ----echo=FALSE---------------------------------------------------------------
z <- attendance(meet_id = 126590, to = "2020-03-27")
# Show members who were present
z[z$PresentAbsent == "Present", 7:9] 

## ----include=FALSE------------------------------------------------------------
end_vignette()

