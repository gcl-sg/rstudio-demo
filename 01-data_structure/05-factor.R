# factor
# 分类数据/有序（班级：低、中、高） vs. 无序（性别：男、女）
# 整数向量 + 标签(label)(优于整数向量)
#  Male/Female vs. 1/2
#  常用于lm(), glm()
# 创建因子
#  factor()
#  table()/unclass()

x <- factor(c("female", "female", "male", "male", "female"))
y <- factor(c("female", "female", "male", "male", "female"), levels = c("male", "female"))
# levels决定了谁是基线水平，此例中male为基线水平

# 查看factor整体情况
table(x)

# 去掉factor属性
unclass(x)

class(unclass(x)) # 去掉因子属性后，变为一个integer vector

