empty_selection <- function(context) {

  length(context$selection) == 0 || (
  # Sometimes the context has a single selection with start == end
    length(context$selection) == 1 &&
      context$selection[[1]]$range$start ==
        context$selection[[1]]$range$end
  )

}
