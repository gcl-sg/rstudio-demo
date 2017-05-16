# 日期与时间(date, time)
# 日期：Date
#   距离1970-01-01的天数/date()/Sys.Date()
#   weekdays()/months()/quarters()
# 时间：POSIXct/POSIXlt
#   距离1970-01-01的秒数/Sys.time()
#   POSIXct: 整形，常用语存入数据框
#   POSIXlt: 列表，还包含星期、年、月、日等信息
# 字符 -> 日期/时间
#   as.Date()
#   as.POSIXct()/as.POSIXlt()/strptime()

# Date
x <- date() # 当前系统时间 字符串

x2 <- Sys.Date() # Date类型

x3 <- as.Date("2015-01-01")
weekdays(x3) # 星期四
months(x3) # 一月份
quarters(x3) # 第一季度
julian(x3) # 具体1970年1月1日过去多少天

x4 <- as.Date("2016-01-01")
x4-x3
as.numeric(x4-x3)

# Time
x <- Sys.time() # POSIXct
p <- as.POSIXlt(x) # POSIXlt

names(unclass(p)) # 查看POSIXlt里面的属性
p$sec # 获取POSIXlt里面的属性值

as.POSIXct(p)

# 转换
as.Date("2015-01-01")

x1 <- "Jan 1, 2015 01:01"
strptime(x1, "%B %d, %Y %H:%M")
