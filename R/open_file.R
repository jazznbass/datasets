#' Open example file
#'
#' @param filename String with filename.
#'
#' @return Opens the file
#' @export
open_file <- function(filename) {

  if(missing(filename)) {
      message("The following files are available:\n", paste(dir(system.file("files", package = "datmat")), collapse = "\n"))
      invisible()
  } else {
    file <- system.file("files", filename, package = "datmat")
    if (identical(file, "")) {
      warning("File not found. Possible files:", call. = FALSE, immediate. = TRUE)
      cat(dir(system.file("files", package = "datmat")), sep = "\n")
      invisible()
    }
    #rstudioapi::navigateToFile("test.R")
    #usethis::edit_file("test.R")
    file.edit(file)
  }


}
