
#!/usr/bin/env Rscript
library('quantmod')
data <- new.env()
getSymbols('AAPL', data)
plot(data$AAPL)
