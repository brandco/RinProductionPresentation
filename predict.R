


#' @get /predict
function(spec){
  spy <- read.csv('spy.csv')
  pred <- predict(arima(spy$SPY.Close))
  pred$pred[1]
}

rmarkdown::render('ETL-demo.Rmd')
