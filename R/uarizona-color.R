#' uarizona brand colors
#'
#' @details
#' # Primary palette
#'
#' * uarizona Blue is our most identifiable colour. It conveys youthfulness,
#' possibility and openness. It should always be considered first.
#' * Black conveys prestige, timelessness and sophistication.
#' * White is often shown as white space and conveys the brand personality
#' of being open and youthful.
#' * Greys can be any percentage of black and provides additional flexibility
#'  to our primary colour palette.
#'
#' The primary colour palette is preferred for digital work.
#'
#' # Secondary palette
#'
#' Inspired by the colours of our academic robes, we have a range of bright,
#' colourful secondary colours.
#'
#' Secondary colours are to be used:
#' * in charts and diagrams to highlight key findings
#' * as headings and subheadings
#' * sparingly to provide highlights or accents – ideally one or two secondary
#' colours per double page spread
#' * to speak to a particular audience group. For instance, colours that would
#' resonate best with our prospective undergraduate audience would be colourful,
#' bright and youthful. Industry and research would suit a more corporate/mature
#' choice to reflect focus and prestige.
#'
#' @name uarizona-color
#' @usage color_all() # show both primary and secondary colors
#' @export
color_all <- function() {
  c(color_primary(), color_highlight(), color_neutral(),color_secondary())
}

#' @param print whether to print the color vector
#' @rdname uarizona-color
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

#' @rdname uarizona-color
#' @usage color_primary()
#' @export
color_primary <- function() {
  return(c(arizonablue = "#0C234B", arizonared = "#AB0520"))
}

#' @rdname uarizona-color
#' @usage color_highlight()
#' @export
color_highlight <- function() {
  return(c(bloom = "#EF4056", sky = "#81D3EB", oasis = "#378DBD",
           chili = "#8B0015", azurite = "#1E5288", midnight = "#001C48"))
}

#' @rdname uarizona-color
#' @usage color_neutral()
#' @export
color_neutral <- function() {
  return(c(black = "#000000",
           white = "#FFFFFF",
           warmgray = "#F4EDE5",
           coolgray = "#E2E9EB"))
}

#' @rdname uarizona-color
#' @usage color_secondary()
#' @export
color_secondary <- function() {
  return(c(leaf = "#70B865", river = "#007D84", silver = "#9EABAE",
           mesa = "#A95C42"))
}
