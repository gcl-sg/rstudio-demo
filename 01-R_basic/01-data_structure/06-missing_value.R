# missing value
# NA/NaN: NaN属于NA，NA不属于NaN
#  NaN表述数字缺失
#  NA使用更广，NA有类型属性：integer NA, character NA等
#  is.na()/is.nan()

x <- c(1, NA, 2, NA, 3)
is.na(x)
is.nan(x)

y <- c(1, NaN, 2, NaN, 3)
is.na(y)
is.nan(y)

