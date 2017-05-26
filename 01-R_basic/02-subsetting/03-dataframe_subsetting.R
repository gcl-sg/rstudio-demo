# 数据框子集

x <- data.frame(v1=1:5, v2=6:10, v3=11:15)
x$v3[c(2,4)] <- NA # 赋值为缺失值
x

x[, 2]
x[, "v2"]

x[(x$v1 < 4 & x$v2 >= 8), ]

x[x$v1>2, ]
x[which(x$v1>2),]

subset(x, x$v1>2)
