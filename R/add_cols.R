add_cols <- function(x, y, where = 1) {
  check_where(where)

  if (where == 1) { # first col
    cbind(y, x)
  } else if (where > ncol(x)) { # last col
    cbind(x, y)
  } else {
    cbind(x[1:(where - 1)], y, x[where:ncol(x)])
  }
}

check_where <- function(where) {
  if (!is.numeric(where) || length(where) != 1) {
    stop("`where` should be a single number", call. = FALSE)
  }

  if (is.na(where) || where == 0) {
    stop("`where` must not be zero or missing", call. = FALSE)
  }

}

