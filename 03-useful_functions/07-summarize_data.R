# summarize data

head(airquality, 10) # 默认六行
tail(airquality)

summary(airquality) # 最小值、25%分位点、中间值、平均值、75%分位点，最大值、缺失值个数
str(airquality) # 多少条记录，多少变量，每个变量的类型

table(airquality$Month) # 每个月记录条数
table(airquality$Ozone) # 每个臭氧含量取值对应出现的次数
table(airquality$Ozone, useNA = 'ifany') # 包含NA值
table(airquality$Month, airquality$Day) # 二维表，月份对应每天的数据（出现的次数）

any(is.na(airquality$Ozone)) # 臭氧含量是否存在缺失值
sum(is.na(airquality$Ozone))

all(airquality$Month < 12)

titanic <- as.data.frame(Titanic)
head(titanic)
dim(titanic)
summary(titanic)

x <- xtabs(Freq ~ Class + Age, data = titanic)
ftable(x) # flat table

# data size
object.size(airquality)
print(object.size(airquality), units="Kb")
