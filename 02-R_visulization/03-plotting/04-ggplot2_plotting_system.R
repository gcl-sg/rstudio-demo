# ggplot2绘图系统
# 层（Layer）
#  1. Data：感兴趣的变量（data frame）
#  2. Aesthetics（美学属性）：x-axis/y-axis/color/fill/size/labels/alpha/shape/linear width/linear type
#  3. Geometries（几何客体层）: point/line/histogram/bar/boxplot
#  4. Facets（面）: columns/rows
#  5. Statistics（统计层）: binning/smoothing/descriptive/inferential
#  6. Coordinates（坐标系）: cartesian/fixed/polar/limits
#  7. Themes（风格设置）: non-data ink
#  1-3基本层

# 绘图函数
#  qplot()
#   类似Base系统的plot()，参数包含aesthetics/geom/facet...
#   隐藏了绘图实现的细节
#  ggplot()
#   是核心，可以实现qplot()无法实现的功能
#   调用ggplot()本身并不能实现绘图，要在其基础上添加层（如geom_point()）才可以

library(ggplot2)
qplot(Wind, Temp, data=airquality)
qplot(Wind, Temp, data=airquality, color=Month) #渐变色
airquality$Month <- factor(airquality$Month) # 月份变为分类变量
qplot(Wind, Temp, data=airquality, color=Month) # 五个不同颜色
qplot(Wind, Temp, data=airquality, color=I("red")) # 自定义颜色

qplot(Wind, Temp, data=airquality, shape=Month)
qplot(Wind, Temp, data=airquality, size=Month)
qplot(Wind, Temp, data=airquality, size=I(10)) # 数值需要使用I()
qplot(Wind, Temp, data=airquality, size=I(10), xlab="Wind(mph)", ylab="Temperature", main="Wind vs. Temp")

qplot(Wind, Temp, data=airquality, geom = c("point", "smooth")) # 回归线+统计信息
qplot(Wind, Temp, data=airquality, color=Month, geom = c("point", "smooth"))

# facet
qplot(Wind, Temp, data=airquality, facets=.~Month) #一行五列
qplot(Wind, Temp, data=airquality, facets=Month~.) # 五行一列

qplot(Wind, data=airquality) # 柱状图(只传一个参数，或者只传x)
qplot(Wind, data=airquality, facets=Month~.) # 参数可以正常使用

qplot(y=Wind, data=airquality) # 散点图（传y参数）【按照风速出现的顺序绘图】
qplot(Wind, data=airquality, fill=Month) # 累加柱状图

qplot(Wind, data=airquality, geom="density") #频率分布的轮廓线
qplot(Wind, data=airquality, geom="density", color=Month) #每个月的频率分布轮廓线，即密度函数
qplot(Wind, data=airquality, geom="dotplot") # 点图

# ggplot
library(ggplot2)
ggplot(airquality, aes(Wind, Temp)) + geom_point()
ggplot(airquality, aes(Wind, Temp)) + geom_point(color="steelblue", alpha=0.4, size=5) # 设置参数
ggplot(airquality, aes(Wind, Temp)) + 
  geom_point(aes(color=factor(Month)), alpha=0.4, size=5) # 需要使用aes()，若美学维度和数据关联

# 添加统计信息（在客体层添加）
ggplot(airquality, aes(Wind, Temp)) +
  geom_point() +
  geom_smooth()

# 添加统计信息（独立添加）
ggplot(airquality, aes(Wind, Temp)) +
  geom_point() + # 可不添加geom_point()美学层，剩下回归线和置信区间
  stat_smooth()

ggplot(airquality, aes(Wind, Temp)) +
  stat_smooth(method="lm", se=FALSE) # 使用lm分析，关闭置信区间，lm为线性回归

ggplot(airquality, aes(Wind, Temp)) +
  stat_smooth(method="lm", se=FALSE, aes(col=factor(Month)))
ggplot(airquality, aes(Wind, Temp, col=factor(Month))) +
  stat_smooth(method="lm", se=FALSE) # 数据可以放一起，画出来的图一样

ggplot(airquality, aes(Wind, Temp, col=factor(Month), group=1)) +
  stat_smooth(method="lm", se=FALSE) # 对所有数据进行拟合，group=1
ggplot(airquality, aes(Wind, Temp, col=factor(Month), group=1)) +
  geom_point() +
  stat_smooth(method="lm", se=FALSE) # 颜色仍然有效，可以把点加回来查看
ggplot(airquality, aes(Wind, Temp, col=factor(Month))) +
  geom_point() +
  stat_smooth(method="lm", se=FALSE, aes(group=1)) +
  stat_smooth(method="lm", se=FALSE)# 多种拟合方式结合，把group=1加到统计层

# 主动控制作图颜色
library(RColorBrewer)
myColors <- c(brewer.pal(5, "Dark2"), "black")
display.brewer.pal(5, "Dark2")

ggplot(airquality, aes(Wind, Temp, col=factor(Month))) +
  geom_point() +
  stat_smooth(method="lm", se=FALSE, aes(group=1, col="All")) +
  stat_smooth(method="lm", se=FALSE) +
  scale_color_manual("Month", values=myColors) # 不添加col="All", 则使用默认颜色显示整体回归线

# 显示数据在子面板上
ggplot(airquality, aes(Wind, Temp, col=factor(Month))) +
  geom_point() +
  stat_smooth(method="lm", se=FALSE) +
  scale_color_manual("Month", values=myColors) +
  facet_grid(.~Month)

# 改变主题（与数据本身无关的属性设置）
ggplot(airquality, aes(Wind, Temp, col=factor(Month))) +
  geom_point() +
  stat_smooth(method="lm", se=FALSE) +
  scale_color_manual("Month", values=myColors) +
  facet_grid(.~Month) +
  theme_classic()

?theme # 帮助文档
