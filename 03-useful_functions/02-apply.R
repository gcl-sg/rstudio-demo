# apply
#    沿着数组的某一维度处理数据
#      例如：将函数用于矩阵的行或列
#      虽然与for/while循环的效率相似，但是只用一句话就可以完成
#    apply(参数): apply(数组, 维度, 函数/函数名)

x <- matrix(1:16, 4, 4)
apply(x, 2, mean) # 求列的（第二个维度）平均，维度为：行、列
apply(x, 2, sum) # 求列的和

apply(x, 1, mean) # 求行的平均
apply(x, 1, sum) # 求行的和

# 快速方法
rowSums(x)
rowMeans(x)
colSums(x)
colMeans(x)

x <- matrix(rnorm(100), 10, 10) # rnorm从正态分布的总体里抽取数据
apply(x, 1, quantile, probs=c(0.25, 0.75))

x <- array(rnorm(2*3*4), c(2, 3, 4))
apply(x, c(1, 2), mean)
apply(x, c(1, 3), mean)
apply(x, c(2, 3), mean)

