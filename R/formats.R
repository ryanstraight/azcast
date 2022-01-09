#' Output formats for azcast documents
#'
#' Each function is a wrapper for \code{\link[bookdown]{pdf_document2}} to
#' produce documents in azcast style.
#'
#' @param \dots Arguments passed to \code{\link[bookdown]{pdf_document2}}.
#'
#' @return An R Markdown output format object.
#'
#' @author Ryan Straight (Original: Rob J Hyndman)
#'
#' @export
letter <- function(...) {
  template <- system.file("rmarkdown/templates/letter/resources/azcastletter.tex",
                          package="azcast")
   bookdown::pdf_document2(...,
     template = template
   )
}

#' @rdname letter
#' @export
exam <- function(...) {
  template <- system.file("rmarkdown/templates/exam/resources/examtemplate.tex",
                          package="azcast")
  bookdown::pdf_document2(...,
                          template = template
  )
}

#' @rdname letter
#' @export
workingpaper <- function(...) {
  template <- system.file("rmarkdown/templates/working-paper/resources/azcastwp.tex",
                          package="azcast")
  bookdown::pdf_document2(...,
                          template = template
  )
}


#' @rdname letter
#' @export
report <- function(...) {
  template <- system.file("rmarkdown/templates/report/resources/azcastreport.tex",
                          package="azcast")
  bookdown::pdf_document2(...,
                          template = template
  )
}

#' @rdname letter
#' @export
memo <- function(...) {
  template <- system.file("rmarkdown/templates/memo/resources/azcastmemo.tex",
                          package="azcast")
  bookdown::pdf_document2(...,
                          citation_package = 'biblatex',
                          template = template
  )
}
