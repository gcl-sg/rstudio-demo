# matrix
# vector + 维度属性（整数向量: nrow, ncol）
# 创建举证
#  matrix(): 先行后列
#  vector() + dim()
#  cbind(), rbind()
#  attributes()

x <- matrix(nrow = 3, ncol = 2)
x <- matrix(1:6, nrow = 3, ncol = 2)
dim(x) # 查看matrix行列信息
attributes(x) # 查看属性

# vector + 维度属性 = matrix
y <- 1:6
dim(y) <- c(2, 3)

# 矩阵拼接
y2 <- matrix(1:6, nrow = 2, ncol = 3)
rbind(y, y2)
cbind(y, y2)

# 给matrix行列命名
x <- matrix(1:6, nrow = 2, ncol = 3)
dimnames(x) <- list(c("a", "b"), c("c", "d", "e"))

