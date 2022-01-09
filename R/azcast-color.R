#' azcast branded colors
#'
#' @details
#' # Primary palette
#'
#' @name azcast-color
#' @usage color_all() # show both primary and secondary colors
#' @export
color_all <- function() {
  c(color_primary(), color_highlight(), color_neutral(),color_secondary())
}

#' @param print whether to print the color vector
#' @rdname azcast-color
#' @usage color_show(print = TRUE)
#' @export
color_show <- function(print = TRUE) {
  par(mfrow = c(2, 2))
  scales::show_col(color_primary())
  scales::show_col(color_highlight())
  scales::show_col(color_neutral())
  scales::show_col(color_secondary())
  if(print) print(color_all())
  return(invisible(color_all()))
}

#' @rdname azcast-color
#' @usage color_primary()
#' @export
color_primary <- function() {
  return(c(arizonablue = "#0C234B", arizonared = "#AB0520"))
}

#' @rdname azcast-color
#' @usage color_highlight()
#' @export
color_highlight <- function() {
  return(c(bloom = "#EF4056", sky = "#81D3EB", oasis = "#378DBD",
           chili = "#8B0015", azurite = "#1E5288", midnight = "#001C48"))
}

#' @rdname azcast-color
#' @usage color_neutral()
#' @export
color_neutral <- function() {
  return(c(black = "#000000",
           white = "#FFFFFF",
           warmgray = "#F4EDE5",
           coolgray = "#E2E9EB"))
}

#' @rdname azcast-color
#' @usage color_secondary()
#' @export
color_secondary <- function() {
  return(c(leaf = "#70B865", river = "#007D84", silver = "#9EABAE",
           mesa = "#A95C42"))
}
