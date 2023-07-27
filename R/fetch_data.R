#' Fetch Redash Data
#'
#' @param query_id
#'
#' @return
#' @import utils
#' @export
#'
#' @examples
fetch_redash_data <- function(query_id) {
  api_key <- Sys.getenv(paste0("REDASH_QUERY_", query_id))
  url <- paste0("https://redash.carpentries.org/api/queries/", query_id, "/results.csv?api_key=", api_key)
  data <- utils::read.csv(url, stringsAsFactors = FALSE)
  return(data)
}
