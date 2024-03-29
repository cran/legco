% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/summoning_bells.R
\name{summoning_bells}
\alias{summoning_bells}
\alias{legco_summoning_bells}
\title{Summoning Bells in LegCo}
\usage{
summoning_bells(
  hansard_id = NULL,
  rundown_id = NULL,
  section_code = NULL,
  lang = "en",
  from = "1900-01-01",
  to = Sys.Date(),
  floor = FALSE,
  n = 1000,
  extra_param = NULL,
  count = FALSE,
  verbose = TRUE
)

legco_summoning_bells(
  hansard_id = NULL,
  rundown_id = NULL,
  section_code = NULL,
  lang = "en",
  from = "1900-01-01",
  to = Sys.Date(),
  floor = FALSE,
  n = 1000,
  extra_param = NULL,
  count = FALSE,
  verbose = TRUE
)
}
\arguments{
\item{hansard_id}{the id of a hansard file, or a vector of ids. If
\code{NULL}, returns results of all hansard files. Defaults to \code{NULL}.}

\item{rundown_id}{the id of a rundown, or a vector of ids. If \code{NULL},
returns results of all rundowns. Defaults to \code{NULL}.}

\item{section_code}{the section code, or a vector of codes. If \code{NULL},
returns results of sections. Defaults to \code{NULL}.}

\item{lang}{the language of hansard files to search from. \code{"en"} returns
the English version. \code{"zh"} returns the Traditional Chinese version.
Defaults to \code{"en"}.}

\item{from}{only fetch results of meetings on or after this date. Accepts
character values in \code{"YYYY-MM-DD"} format, and objects of class
\code{Date}, \code{POSIXt}, \code{POSIXct}, \code{POSIXlt} or anything else
that can be coerced to a date with \code{as.Date()}. Defaults to
\code{"1900-01-01"}.}

\item{to}{only fetch results of meetings on or before this date. Accepts
character values in \code{"YYYY-MM-DD"} format, and objects of class
\code{Date}, \code{POSIXt}, \code{POSIXct}, \code{POSIXlt} or anything else
that can be coerced to a date with \code{as.Date()}. Defaults to the
current system date.}

\item{floor}{logical: whether to fetch results from the floor version of the
hansard files? The floor version is the first presented version of hansard
file in the original language delivered by the speakers in LegCo. If
\code{TRUE}, the language option is ignored. Defaults to \code{FALSE}.}

\item{n}{the number of record to fetch. Defaults to \code{1000}.}

\item{extra_param}{additional query parameters defined in LegCo API. Must
begin with \code{"&"}.}

\item{count}{logical: Whether to return only the total count of records that
matches the parameter(s) instead of the result. Defaults to \code{FALSE}.}

\item{verbose}{logical: Whether to display progress messages when fetching
data? Defaults to \code{TRUE}.}
}
\description{
Fetch instances of summoning bell being rung in LegCo council meetings
}
\details{
This function corresponds to the \emph{SummoningBells} data endpoint of the
Hansard Database.
}
\section{Functions}{
 Functions of the Hansard database: \itemize{ \item
  \code{\link{hansard}}: Hansard files \item
  \code{\link{legco_section_type}}: Section code \item
  \code{\link{subjects}}: Subjects \code{\link{speakers}}: Speakers in the
  council, including members, government officials and secretariat staff
  \item \code{\link{rundown}}: Rundown (Paragraphs in hansard) \item
  \code{\link{questions}}: Questions raised by members \item
  \code{\link{bills}}: Bills \item \code{\link{motions}}: Motions \item
  \code{\link{petitions}}: Petitions \item \code{\link{addresses}}: Addresses
  made by members or government officials when presenting papers to the
  Council \item \code{\link{statements}}: Statements made by government
  officials \item \code{\link{voting_results}}: Results of votes in council
  meetings \item \code{\link{summoning_bells}}: Instances of summoning bells
  being rung }
}

\examples{
\donttest{
# Fetch instances of summoning bell during the Council meeting on January 19, 2018
x <- summoning_bells(hansard_id = 2714)
}

}
\seealso{
LegCo API documentation for the Hansard database:
  \url{https://www.legco.gov.hk/odata/english/hansard-db.html}
}
