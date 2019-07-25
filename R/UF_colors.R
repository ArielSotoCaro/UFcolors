#' UF_colors
#'
#' @param ...
#'
#' @return
#' @export
#' @importFrom ggplot2

# theme_set(theme_minimal())

UF_colors <- function(...) {
  cols <- c(...)

  if (is.null(cols))
    return (UF_colorSet)

  UF_colorSet[cols]
}
# .....................................

# Setting the institutional colors ----
UF_colorSet <- c(
  `orange`          = "#FA4616",
  `blue`            = "#0021A5",
  `orange muted`    = "#E28F41",
  `blue muted`      = "#6C9AC3",
  `orange light`    = "#E18F41",
  `blue dark`       = "#326698",
  `blue grey`       = "#6C99C2",
  `blue light`      = "#A1DCED",
  `grey`            = "#BBBDC0",
  `PMS 30-6`        = "#CFB691",
  `PMS 292-9`       = "#CFDBCB",
  `PMS 18-8`        = "#FFEFCF",
  `PMS Cool Gray 6C`= "#B1B3B6",
  `PMS 293-2`       = "#5E8E3F",
  `PMS 175-2`       = "#593674",
  `PMS 18-1`        = "#FCAF17",
  `PMS 87-1`        = "#D7182A")
# ...................................


# Creating the palettes ----
UF_palettes <- list(
  `primary`= UF_colors('orange','blue'),
  `muted`  = UF_colors('orange muted','blue muted'),
  `nice`   = UF_colors('orange light','blue dark','blue grey','blue light','grey'),
  `neutral`= UF_colors('PMS 30-6','PMS 292-','PMS 18-8','PMS Cool Gray 6C'),
  `bright` = UF_colors('PMS 293-2','PMS 175-2','PMS 18-1','PMS 87-1')
)
# ...........................


