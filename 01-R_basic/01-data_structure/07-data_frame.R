# data frame
# 存储表格数据(tabular data)
# 视为各元素长度相同的列表
#  每个元素代表一列数据
#  每个元素的长度代表行数
#  元素类型可以不同

df <- data.frame(id = c(1, 2, 3, 4), name = c("a", "b", "c", "d"), gender = c(TRUE, TRUE, FALSE, FALSE))
l <- list(id = c(1, 2, 3, 4), name = c("a", "b", "c", "d"), gender = c(TRUE, TRUE, FALSE, FALSE))
nrow(df)
ncol(df)

df2 <- data.frame(id = c(1,2,3,4), score = c(80,86,90, 100))
data.matrix(df2)
