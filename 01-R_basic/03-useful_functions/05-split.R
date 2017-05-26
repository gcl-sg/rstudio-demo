# split
#   根据因子或因子列表将向量或其他对象分组
#   通常与lapply一起使用
#   split(参数): split(向量/列表/数据框, 因子/因子列表)

x <- c(rnorm(5), runif(5), rnorm(5, 1))
f <- gl(3, 5)
split(x, f)

lapply(split(x, f), mean)


head(airquality)
s <- split(airquality, airquality$Month) # 按月份拆分显示数据
table(airquality$Month) # 每个月的数据条数

lapply(s, function(x) colMeans(x[, c("Ozone", "Wind", "Temp")]))
sapply(s, function(x) colMeans(x[, c("Ozone", "Wind", "Temp")]))
sapply(s, function(x) colMeans(x[, c("Ozone", "Wind", "Temp")], na.rm = TRUE))
