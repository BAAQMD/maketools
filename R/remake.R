#' Remake a target
#'
#' @param target passed to remake::make()
#'
#' @export
remake <- function (target, ..., reset = TRUE, verbose = TRUE) {
  on.exit(create_bindings())
  remake::delete(target)
  if (isTRUE(reset)) {
    reset_bindings()
  }
  remake::make(target, ...)
}
