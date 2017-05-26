size = 1 # 设置每个元素占用的字节数
x = (10 * runif(10) > 5)
y = base64encode(x, size = size)
z = base64decode(y, typeof(x), size = size)

x # 原始数据
y # 编译后的密文
z # 解压后的密文

x = "Hello R!!" # character
y = base64encode(x)
z = base64decode(y, typeof(x))

x # 原始数据
y # 编译后的密文
z # 解密后的密文