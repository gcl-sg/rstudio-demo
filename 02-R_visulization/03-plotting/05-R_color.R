# R语言绘图之颜色
# grDevise包
#  colorRamp() & colorRampPalette()
#  颜色名字可以使用colors()获取

# RColorBrewer包
#  三类调色板：sequential/diverging/qualitative
#  调色板信息可与colrRamp/colorRampPalette结合使用
#   sequential：从一个极端到另一个极端，过渡变化，适合呈现顺序数据
#   deverging: 两端的取值鲜艳明亮，中间的取值比较淡，合适凸显处在极端部分的数据，如高低对比
#   qualitative: 颜色对比都很鲜明，适合呈现分类变量，不同水平，不同分类

# colorRamp()
pal <- colorRamp(c("red", "blue"))
pal(0) # red [255, 0, 0]
pal(1) # blue [0, 0, 255]
pal(0.5) # [127.5, 0, 127.5]
pal(seq(0, 1, len=10))

# colorRampPalette
pal <- colorRampPalette(c("red", "yellow"))
pal(1) # 使用0 - 255,而非0-1
pal(2)
pal(10)

# RColorBrewer
library(RColorBrewer)
brewer.pal.info # 名字，最多可以使用颜色数量，种类（三种），是否对色盲友好

cols <- brewer.pal(3, "Greens")
pal <- colorRampPalette(cols)
image(volcano, col = pal(20)) # pal(30)，以三个颜色为端点进行取值，一共20个点

display.brewer.pal(3, "Greens")
display.brewer.all()
