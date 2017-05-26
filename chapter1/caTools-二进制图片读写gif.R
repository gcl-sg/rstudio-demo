library(caTools)

# 1）写一个gif图片
write.gif(volcano, "chapter1/volcano.gif", col = terrain.colors, flip = TRUE, scale = "always", comment = "Maunga Whau Volcano")
# 取datasets::volcano数据集，写入volcano.gif

# 2）读一个gif图片到内存，再从内存输出
y = read.gif("chapter1/volcano.gif", verbose = TRUE, flip = TRUE)
# 读入图片到变量y
attributes(y)
class(y$image)
ncol(y$image)
nrow(y$image)
head(y$col, 10)
y$comment
image(y$image, col = y$col, main = y$comment, asp = 1)
# 通过y变量画图

# 3）创建一个gif动画
x <- y <- seq(-4 * pi, 4 * pi, len = 200)
r <- sqrt(outer(x^2, y^2, "+"))
image = array(0, c(200, 200, 10))
for(i in 1:10) image[, , i] = cos(r - (2 * pi * i / 10))/(r^0.25)
write.gif(image, "chapter1/wave.gif", col = "rainbow")
y = read.gif("chapter1/wave.gif")
for(i in 1:10) image(y$image[, , i], col = y$col, breaks = (0:256) - 0.5, asp = 1)