# 矩阵的子集

x <- matrix(1:6, nrow = 2, ncol = 3)
x[1, 2]
x[2, 3]
x[1,]
x[,1]
x[2, c(1, 3)]
class(x[1,2]) # integer vector
class(x[2, c(1, 3)]) # integer vector

x[1, 2, drop = FALSE] # return a matrix
