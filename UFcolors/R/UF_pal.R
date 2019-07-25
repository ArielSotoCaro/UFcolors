#' UF_pal
#'
#' @param palette
#' @param reverse
#' @param ...
#' @export
#' @return

UF_pal <- function(palette = "primary", reverse = FALSE, ...) {
  pal <- UF_palettes[[palette]]

  if (reverse) pal <- rev(pal)

  colorRampPalette(pal, ...)
}
