

#' Get CAST webheader
#'
#' @description
#' A quick way of getting the CAST webheader
#'
#' @param path the path to save the file to
#' @param overwrite TRUE for overwriting (should it enquire?), FALSE for not. Not implemented yet.
#' @param filename A new file name for the logo. Not implemented yet.
#'
#' @source https://azcast.arizona.edu/
#' @rdname logo_get_cast
#' @export

logo_get_cast <- function(path = ".",
                     overwrite = TRUE,
                     filename = NULL) {
  logo_path_cast <- logo_path_cast()
  filename <- filename %||% path_file(logo_path_cast)
  new_path <- path(path, filename)
  invisible(file_copy(logo_path_cast, new_path = new_path, overwrite = overwrite))
  ui_done(glue("The {ui_value(filename)} is now in {ui_path(path)}"))
  new_path
}


logo_path_cast <- function() {
  # get logo path
  filename <- "banner.png"
  logo_cast <- logo_find_cast(filename)
  logo_cast
}




logo_find_cast <- function(logo_filename_cast) {
  path <- tryCatch(
    path_package(package = "azcast", "logos", logo_filename_cast),
    error = function(e) ""
  )
  if (identical(path, "")) {
    ui_stop(
      "Could not find logo {ui_value(logo_filename_cast)}."
    )
  }
  path
}
