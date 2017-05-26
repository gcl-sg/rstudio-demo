# 基本绘图系统

# 绘图函数（graphics包）
#   plot／hist（柱状图）／boxplot（箱图）／points／lines／text／title／axix（坐标轴）
#   调用函数会启动一个图形设备（如果没有正在运行的图形设备）并设备上绘图（基本绘图系统+屏幕设备）

# plot()
#   plot(x, y, ...)
#   重要参数：xlab(x lable)/ylab(y lable)/lwd(line witdh)/lty(line type)/pch(point character)/col(color)
#   ?par

# par()
#   用于设置全局参数（作用于R中的所有plot绘图）
#      bg／mar(margin)／las／mfrow／mfcol
#   这些参数可以在每次plot之前进行修改

hist(airquality$Wind)
hist(airquality$Wind, xlab = 'wind')

boxplot(airquality$Wind)
boxplot(airquality$Wind, xlab = 'Wind', ylab="speed(mph)")
boxplot(Wind~Month, airquality, xlab="Month", ylab="speed(mph)") # 并排箱图

plot(airquality$Wind, airquality$Temp)
with(airquality, plot(Wind, Temp, main="Wind and Temp in NYC"))

title(main="Wind and Temp in NYC")

with(airquality, plot(Wind, Temp, main="Wind and Temp in NYC", type="n")) # 不画点
with(subset(airquality, Month == 9), points(Wind, Temp, col="red"))
with(subset(airquality, Month == 5), points(Wind, Temp, col="blue"))
with(subset(airquality, Month %in% c(6,7,8)), points(Wind, Temp, col="black"))
fit <- lm(Temp ~ Wind, airquality) # 数据拟合
abline(fit, lwd=2)
legend("topright", pch=1, col=c("red", "blue", "black"), legend=c("Sep", "May", "Other"))

par("bg")
par("col")
par("mar") # (bottom, left, top, right)
par("mfrow") # 几行几列（行方式做图）
par("mfcol") # 几行几列（列方式做图）
?par

par(mfrow = c(1,2))
hist(airquality$Temp)
hist(airquality$Wind)

boxplot(airquality$Temp)
par(mfrow = c(1,1))
boxplot(airquality$Temp)

par(mfcol = c(2, 1))
hist(airquality$Temp)
hist(airquality$Wind)

