# This code is just for running that plumber file
library(plumber)
plumber::plumb("api.R")$run(host="0.0.0.0",port= 8767)
