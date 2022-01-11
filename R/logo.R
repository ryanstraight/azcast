

#' Get azcast logo
#'
#' @description
#' A quick way of getting the University of Arizona logo.
#'
#' @param path the path to save the file to
#' @param style `horiz`, `stack` or `block`
#' @param color `rgb`, `black` or `blue`
#' @param hq TRUE for eps
#' @param overwrite TRUE for overwriting (should it enquire?), FALSE for not. Not implemented yet.
#' @param filename A new file name for the logo. Not implemented yet.
#'
#' @source https://brand.arizona.edu/applying-the-brand/logo
#' @rdname logo_get
#' @export
logo_get <- function(path = ".",
                     style = c("horiz", "stack", "block"),
                     color = c("rgb", "black", "blue"),
                     hq = FALSE,
                     overwrite = TRUE,
                     filename = NULL) {
  logo_path <- logo_path(style = style, color = color,
                         hq = hq)
  filename <- filename %||% path_file(logo_path)
  new_path <- path(path, filename)
  invisible(file_copy(logo_path, new_path = new_path, overwrite = overwrite))
  ui_done(glue("The {ui_value(filename)} is now in {ui_path(path)}"))
  new_path
}

#' @importFrom vctrs vec_assert
logo_path <- function(style = c("horiz", "stack", "block"),
                      color = c("rgb", "black", "blue"),
                      hq = FALSE) {
  # validate arguments
  # all logo functions come here
  color <- arg_match(color)
  vec_assert(hq, logical(), size = 1)
  style <- arg_match(style)

  # get logo path
  color <- switch(color,
                  blue = "rgb_blue",
                  black = "rgb_black")
  hq <- ifelse(hq, "eps", "png")
  filename <- glue("ua_{style}_{color}.{hq}")
  logo <- logo_find(filename)
  logo
}




logo_find <- function(logo_filename) {
  path <- tryCatch(
    path_package(package = "azcast", "logos", logo_filename),
    error = function(e) ""
  )
  if (identical(path, "")) {
    ui_stop(
      "Could not find logo {ui_value(logo_filename)}."
    )
  }
  path
}

