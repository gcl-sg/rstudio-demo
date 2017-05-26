# Lattice绘图系统

# 绘图函数
# Lattice包
#   xyplot（散点图）/bwplot/histogram/stripplot/dotplot/splom/levelplot/contourplot
#   格式：xyplot(y ~ x | f*g, data) # y因变量，x自变量，f*g分类变量
#   panel函数，用于控制每个面板内的绘图
# grid包
#   实现了独立于base的绘图系统
#  lattice包是基于grid创建的；很少直接从grid包调用函数
# Lattice与Base的重要区别
#  Base绘图函数直接在图形设备上绘图
#  Lattice绘图函数返回trellis类对象
#   打印函数真正执行了在设备上绘图
#   命令执行时，trellis类对象会自动打印，所以看起来就像是lattice函数直接完成了绘图（机制不同）


library(lattice)
xyplot(Temp ~ Ozone, data = airquality)
airquality$Month <- factor(airquality$Month)
xyplot(Temp~Ozone|Month, data=airquality, layout=c(5,1))

q <- xyplot(Temp ~ Wind, data = airquality)
print(q)

# pannel
set.seed(1)
x <- rnorm(100)
f <- rep(0:1, each=50)
y <- x + f - f*x + rnorm(100, sd=0.5)
f <- factor(f, labels = c("Group1", "Group2"))
xyplot(y~x|f, layout=c(2,1))

xyplot(y~x|f, panel = function(x,y) {
  panel.xyplot(x, y)
  panel.abline(v=mean(x), h=mean(y), lty=2)
  panel.lmline(x, y, col="red") # 回归线
})

