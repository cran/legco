#' Bills in LegCo
#'
#' Fetch bills presented in LegCo council meetings.
#'
#' This function corresponds to the \emph{Bills} data endpoint of the Hansard
#' Database.
#'
#' @inherit hansard-db
#'
#' @examples
#' \donttest{
#' # Fetch bills debated during the Council meeting on February 20, 2019
#' x <- bills(hansard_id = 2714)
#' }
#'
#' @export
#' 
bills <- function(rundown_id = NULL, hansard_id = NULL, section_code = NULL,
                     lang = "en", from = '1900-01-01', to = Sys.Date(),
                     floor = FALSE, n = 1000, extra_param = NULL, count = FALSE, verbose = TRUE) {
  query <- "Bills?$select=MeetingDate,Subject,Section,SectionCode,RundownID,HansardID,HansardFileURL"
  
  filter_args <- {}
  
  if (!is.null(rundown_id)) {
    filter_args <- c(filter_args, generate_filter("RundownID", rundown_id))
  }

  if (!is.null(hansard_id)) {
    filter_args <- c(filter_args, generate_filter("HansardID", hansard_id))
  }
  
  if (!is.null(section_code)) {
    filter_args <- c(filter_args, generate_filter("SectionCode", section_code))
  }
  
  if (is.null(hansard_id) & is.null(rundown_id)) {
    lang <- tolower(lang)
    if (floor) {
      filter_args <- c(filter_args, "HansardType eq 'Floor'")
    } else if (lang == "en") {
      filter_args <- c(filter_args, "HansardType eq 'English'")
    } else if (lang == "zh") {
      filter_args <- c(filter_args, "HansardType eq 'Chinese'")
    }
  }
  
  from <- as.Date(from)
  to <- as.Date(to)
  filter_args <- c(filter_args, paste0("MeetingDate ge datetime\'", from, 
                                       "\' and MeetingDate le datetime\'", to, "\'"))
  
  query <- paste0(query, "&$filter=", paste(filter_args, collapse = " and "))
  
  if (!is.null(extra_param)) {
    query <- paste0(query, extra_param)
  }
  
  legco_api("hansard", query, n, count, verbose)
}

#' @rdname bills
#' @export
legco_bills <- bills
