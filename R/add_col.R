
add_col <- function(df, name, value, where = ncol(df) + 1) {
  if (name %in% names(df)) {
    df[[name]] <- value
    df
  } else {
    new_df <- data.frame(value)
    names(new_df) <- name

    add_cols(df, new_df, where = where)
  }
}
