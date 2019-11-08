d_pl <- plumber::plumb('predict.R')
d_pl$run(host = "0.0.0.0", port = 8000, swagger = TRUE)
