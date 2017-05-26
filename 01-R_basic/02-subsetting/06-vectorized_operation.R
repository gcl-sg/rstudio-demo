# 向量化操作(vectorized operation)
#   可以作用于向量、矩阵等结构，是的代码简洁、易于阅读、效率高

x <- 1:5
y <- 6:10
x + y
x * y
x / y

x <- matrix(1:4, nrow = 2, ncol = 2)
y <- matrix(rep(2, 4), nrow = 2, ncol = 2)
x*y
x/y

x %*% y
