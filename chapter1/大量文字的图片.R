library(MASS)
data(HairEyeColor)
x <- HairEyeColor[, , 1] + HairEyeColor[, , 2]
n <- 100
m <- matrix(sample(c(T, F), n^2, replace = T), nr = n, nc = n)
png(file = "chapter1/plot5.png", width = 640, height = 480)
biplot(corresp(m, nf = 2), main = "Plot")
dev.off()

CairoPNG(file = "chapter1/Cairo5.png", width = 640, height = 480)
biplot(corresp(m, nf = 2), main = "Cairo")
dev.off()

svg(file = "chapter1/plot-svg5.svg", width = 6, height = 6)
biplot(corresp(m, nf = 2), main = "Plot-svg")
dev.off()

CairoSVG(file = "chapter1/Cairo-svg5.svg", width = 6, height = 6)
biplot(corresp(m, nf = 2), main = "Cairo-svg")
dev.off()