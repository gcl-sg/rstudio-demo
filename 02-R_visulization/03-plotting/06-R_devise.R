# R支持的图形设备
# 什么事图形设备
#  屏幕设备（探索性分析常用）：电脑屏幕
#   windows() on Windows/quartz() on Mac/xll() on Unix or Linux 
#  文件设备（打印/文章用图常用）
#   向量格式（vector format）：PDF 【可调整大小，小量数据，适合存储线条图】
#   位图（bitmap format）：PNG/JPEG/TIFF/BMP【不可调整大小，大量数据，如照片】
#  grDevise包
#   包含了实现各种图形设备的代码
#   ?Devises如PDF/PNG/BMP

# 生成图形的两种途径
#  调用绘图函数（默认使用屏幕）->屏幕设备显示图形->进一步修饰图形
#  明确指定图形设备->调用绘图函数（如果指定的是文件设备则无法在屏幕上看到图形）->进一步修饰图形->关闭图形设备dev.off()
#  可以同时打开多个设备，但一次只能在一个设备上绘图
#   dev.cur()/dev.set()

# 拷贝图形
#  多个设备之间互相拷贝：dev.copy
#   拷贝到PDF文件：dev.copy2pdf
#  注意：拷贝的结果可能与原图有出入

pdf(file="myfile.pdf")
with(airquality, plot(Wind, Temp, main="Wind and Temp in NYC"))
dev.off() # 在工作路径下存储了pdf文件

getwd() # 显示当前工作路径

with(airquality, plot(Wind, Temp, main="Wind and Temp in NYC")) # 默认使用屏幕设备
dev.copy(png, file="mycopy.png")
dev.off()

# 绘图前请思考
#  在哪里绘图（屏幕？文件？）
#  如何使用图（屏幕呈现？网页呈现？文章用途？）
#  用于绘图的数据量的大小？（向量格式vs.位图）
#  是否需要动态调整图的大小？（向量格式vs.位图）
#  用哪个绘图系统（Base/Lattice/ggplot2）?一般三者不混用


