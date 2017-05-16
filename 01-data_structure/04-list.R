# list
# 可以包含不同类型的对象
# 创建列表

l <- list("a", 2, 10L, 3+4i, TRUE)

l2 <- list(a = 1, b = 2, c = 3)

l3 <- list(c(1,2,3), c(4,5,6,7))

x <- matrix(1:6, nrow = 2, ncol = 3)
dimnames(x) <- list(c("a", "b"), c("c", "d", "e"))
