# tapply
#   对向量的子集进行操作
#   tapply(参数): tapply(向量, 因子/因子列表, 函数/函数名)

x <- c(rnorm(5), runif(5), rnorm(5, 1)) # rnorm正态分布，runif均匀分布
f <- gl(3, 5) # generate factor levels

tapply(x, f, mean)
tapply(x, f, mean, simplify=FALSE)
