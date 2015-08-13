#' @export
#' @useDynLib ry6

foo <- function(x) {
    stopifnot(is.numeric(x))

    out <- .Fortran("foo", x = as.double(x), n = length(x), PACKAGE = "ry6")
    return(out$x)
}