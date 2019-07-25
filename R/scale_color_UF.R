#' Color scale constructor for UF colors
#'
#' @param palette palette Character name of palette in UF_palettes
#' @param discrete discrete Boolean indicating whether color aesthetic is discrete or not
#' @param reverse reverse Boolean indicating whether the palette should be reversed
#' @param ... Additional arguments passed to discrete_scale() or
#'            scale_color_gradientn(), used respectively when discrete is TRUE or FALSE
#'
#' @return
#' @export
#'
#' @examples
scale_color_UF <- function(palette = "primary", discrete = TRUE, reverse = FALSE, ...) {
  pal <- UF_pal(palette = palette, reverse = reverse)

  if (discrete) {
    discrete_scale("colour", paste0("UF_", palette), palette = pal, ...)
  } else {
    scale_color_gradientn(colours = pal(256), ...)
  }
}
