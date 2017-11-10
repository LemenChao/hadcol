
<!-- README.md is generated from README.Rmd. Please edit that file -->
hadcol
======

The goal of hadcol is to combine columns.

Installation
------------

You can install hadcol from github with:

``` r
# install.packages("devtools")
devtools::install_github("hadley/hadcol")
```

Example
-------

``` r
library(hadcol)

df1 <- data.frame(a = 3, b = 4, c = 5)
df2 <- data.frame(X = 1, Y = 2)

add_cols(df1, df2, where = 2)
#>   a X Y b c
#> 1 3 1 2 4 5
```
