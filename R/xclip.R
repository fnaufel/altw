#' Use xclip to copy selection(s) in current source editor to X clipboard
#'
#' @return NULL
#'
#' @author fnaufel
#' @export
#' @importFrom rstudioapi getSourceEditorContext
#' @importFrom processx process
#'
xclip <- function() {

  context <- rstudioapi::getSourceEditorContext()

  if (!empty_selection(context)) {

    # Collect selection(s)
    my_text <- mapply(
      function(x) { x$text },
      context$selection,
      USE.NAMES = FALSE
    )

    proc <- processx::process$new(
      '/usr/bin/xclip',
      args = c(
        '-selection', 'c'
      ),
      pty = TRUE,
    )

    # Must end with \n
    proc$write_input(paste(my_text, '\n'))
    # And then CTRL-D
    proc$write_input(as.raw(4))

    # Wait a little
    Sys.sleep(.01)

    # Bye
    proc$kill()

  }

  NULL

}


