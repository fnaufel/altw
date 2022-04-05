#' Use clipr to copy selection(s) in current source editor to X clipboard
#'
#' @return NULL
#'
#' @author fnaufel
#' @export
#' @importFrom rstudioapi getSourceEditorContext
#' @importFrom clipr write_clip
#'
altw <- function() {

  context <- rstudioapi::getSourceEditorContext()

  if (!empty_selection(context)) {

    # Collect selection(s)
    my_text <- mapply(
      function(x) { x$text },
      context$selection,
      USE.NAMES = FALSE
    )

    clipr::write_clip(my_text)

  }

}


