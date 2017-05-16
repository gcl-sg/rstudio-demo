# 重要函数的使用
# 处理循环
#   R不仅有for/while循环语句，还有更强大的实现循环的“一句话”函数
# 排序
#
# 总结数据信息

# lapply
# 可以循环处理列表中的每一个元素
#   lapply(参数): lapply(列表, 函数/函数名, 其他参数)
#   总是返回一个列表
#   sapply: 简化结果
#      结果列表元素长度均为1，返回向量
#      结果列表长度相同且大于1，返回矩阵

str(lapply)

x <- list(a=1:10, b=c(11,21,31,41,51))
lapply(x, mean) # mean求平均

x <- 1:4
lapply(x, runif) # runif 从一个均匀整理里抽取若干个数, lapply强制转换第一参数为列表
lapply(x, runif, min=0, max=100) # 类似于: runif(1, min=0, max=100)

x <- list(a=matrix(1:6, 2, 3), b=matrix(4:7, 2, 2))
lapply(x, function(m) m[1,]) # 匿名函数

# sapply 对lapply的结果进行化简，返回向量/矩阵/列表(无法简化时)
x <- list(a=1:10, b=c(11,21,31,41,51))
lapply(x, mean)
sapply(x, mean)
