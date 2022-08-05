#' Open example file
#'
#' @param filename String with filename.
#'
#' @return Opens the file
#' @export
open_file <- function(filename) {
  file <- system.file("files", filename, package = "jwdatasets")
  if (identical(file, "")) {
    warning("File not found. Possible files:", call. = FALSE, immediate. = TRUE)
    cat(dir(system.file("files", package = "jwdatasets")), sep = "\n")
    invisible()
  }
  #rstudioapi::navigateToFile("test.R")
  #usethis::edit_file("test.R")
  file.edit(file)
}
