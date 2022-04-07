#' Use clipr to copy selection(s) in current source editor to X clipboard
#'
#' @return NULL
#'
#' @author fnaufel
#' @export
#' @importFrom rstudioapi getSourceEditorContext setSelectionRanges
#' @importFrom clipr write_clip
#'
altw <- function() {

  context <- rstudioapi::getSourceEditorContext()

  if (!is.null(context) && !empty_selection(context)) {

    # Collect selection(s)
    my_text <- mapply(
      function(x) { x$text },
      context$selection,
      USE.NAMES = FALSE
    )

    clipr::write_clip(my_text)

    # Deactivate selection, leaving cursor at end
    rstudioapi::setSelectionRanges(
      context$selection[[1]]$range$end
    )

  }

}


