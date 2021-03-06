# 构建子集

# 原始数据(raw dataset) -> 预处理后的数据(clean dataset)

# 基本方法
#   []: 提取一个或多个类型相同的元素
#   [[]]: 从列表活着数据框中提取元素
#   $: 按名字从列表活着数据框中提取元素

x <- 1:10
x[1]
x[5]
x[1:5]
x[6:10]
x[x>5]
x>5 # 对每个元素进行判断，并用真假表示，假的不输出，真的输出

x[x>5 & x<7]
x[x<3 | x>7]


y <- 1:4
names(y) <- c("a", "b", "c", "d")
y[2]
y["b"]
y[c("a", "b")]
