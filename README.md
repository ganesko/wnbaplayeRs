
<!-- README.md is generated from README.Rmd. Please edit that file -->

# wnbaplayeRs R package <img src='data-raw/wnba_sticker.png' align="right" height="139"/>

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
[![CRAN
status](https://www.r-pkg.org/badges/version/packageName)](https://CRAN.R-project.org/package=packageName)
<!-- badges: end -->

<br>

## Summary

R package for WNBA player data

This package uses data from the WNBA website which contains WNBA player
data from the 2002 season to the 2024 season, including a player’s team,
age, and various game statistics. The package’s goal is to make women’s
professional basketball more accessible to the general public, more
specifically, people who are not already familiar with the WNBA. The
package does this by summarizing and visualizing player data and
allowing for comparisons between players. The functions include:

- `get_wnba_player_stats()`, which retrieves the statistics and of a
  specified WNBA player from the dataset and links to the player’s stats
  webpage.
- `wnba_stat_grapher()`, which graphs a statistic for one or more WNBA
  players selected from the data over the course of their time in the
  WNBA.

## Installation

You can install the development version of wnbaplayeRs from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("sds270-f24/wnbaplayeRs")
```

You can load the package using:

``` r
library(wnbaplayeRs)
```

## Data

Included in this package is player data sourced from the WNBA’s official
website.

## Examples

##### Example 1

Using the `get_wnba_player_stats` function, users can easily get a
snapshot of information about a selected player, and can get quickly
linked to the player’s stat webpage.

``` r
library(wnbaplayeRs)

get_wnba_player_stats("Caitlin Clark")
#> For more information on CAITLIN CLARK visit https://stats.wnba.com/player/1642286/
#>          player team age gp  w  l  min  pts fgm  fga  fgp thpm thpa thpp ftm
#> 1 CAITLIN CLARK  IND  22 40 20 20 35.4 19.2 6.1 14.5 41.7  3.1  8.9 34.4 4.1
#>   fta  ftp oreb dreb reb ast tov stl blk  pf   fp dd td plmin
#> 1 4.5 90.6  0.4  5.3 5.7 8.4 5.6 1.3 0.7 2.8 40.4 14  2  -1.6
```

##### Example 2

Using the `wnba_stat_grapher` function, users can visualize a selected
statistic of one or more players in order to see change over time, as
well as compare players.

``` r
wnba_stat_grapher("Sue Bird", "f_tr")
```

<img src="man/figures/README-unnamed-chunk-3-1.png" width="100%" />

## Package Contributors:

- [Greta Anesko](https://github.com/ganesko)
- [Soph Hillard](https://github.com/s0ph1ah)
- [Callie Showalter](https://github.com/callieshow)
