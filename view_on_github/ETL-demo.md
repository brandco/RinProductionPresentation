A Production ETL Job Demo
================
Branden Collingsworth
11/4/2019

1.  Use the quantmod package to get data on S\&P 500 price history from
    Yahoo Finance

<!-- end list -->

``` r
library(quantmod)
spy <- getSymbols('SPY', auto.assign = FALSE)
```

2.  Transform data from xts object to a data.frame

<!-- end list -->

``` r
spy_transformed <- fortify.zoo(spy)
```

3.  Save data it in a CSV for later

<!-- end list -->

``` r
write.csv(spy_transformed, 'spy.csv')
```

Success\! 3236 rows written to spy.csv at 2019-11-08 13:10:47
