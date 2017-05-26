# missing value

x <- c(1, NA, 2, NA, 3)
is.na(x)

x[!is.na(x)]

x <- c(1, NA, 2, NA, 3)
y <- c("a", "b", NA, "c", NA)
z <- complete.cases(x, y)
x[z]
y[z]

# example
library(datasets)
head(airquality)
g <- complete.cases(airquality)
airquality[g,][1:10, ]
