#' Delete and then recreate bindings
#'
#' @export
reset_bindings <- function () {
  on.exit(create_bindings())
  delete_bindings()
}

