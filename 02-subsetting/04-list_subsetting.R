# 列表的子集
#  [[]]/$/[[]][]/[[]][[]]
#  嵌套列表/不完全匹配(partial matching)

x <- list(id=1:4, height=170, gender="male")
# 获取某一个元素a
x[1]
x["id"]

# 获取元素的内容
x[[1]]
x[["id"]]
x$id

# 同时拿到多个列表中的元素
x[c(1,3)]

# 容易犯错知识点
y <- "id"
x[["id"]]
x[y]

x$id
x$y # 为NULL，只能使用x$id形式获取
# subsetting nested elements of a list
# 从列表中获取嵌套的元素
x <- list(a = list(1,2,3,4), b=c("Monday", "Tuesday"))
x[[1]][[2]] # 方法1:两个双括号
x[[1]][2]

x[[c(1,3)]] # 方法2:双括号中使用c函数
x[[c(2,2)]]

# partial matching
l <- list(asdfghj = 1:10)
l$asdfghj
l$a

l[["a"]]
l[["a", exact = FALSE]]
