# Vector
# 只能包含同一类型的对象
# 创建向量
#  vector()
#  c()
#  as.logical()/as.numeric()/as.character()

x <- vector("character", 10)

x1 <- 1:4

x2 <- c(1, 2, 3, 4)

# 内隐强制转换
x3 <- c(TRUE, 10, "a")

# 强制转换
as.numeric(x1)
as.character(x2)
as.logical(x3)

# 指定向量元素名称
names(x1) <- c("a", "b", "c", "d")
