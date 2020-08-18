#取子集操作
#原子向量取子集
x <- c(2.1,4.2,3.3,5.4)
x[c(3,1)]
str(x[1])
x[order(x)]
x[c(1,1)]
x[c(2.1,2.9)]#实数被截断
#x[c(-1,2)]#只有负下标里才能有零，不能混合正负数
x[-c(3,1)]
x[c(T,T,F,F)] ##选择T的元素
x[x>3]
#如果逻辑向量比被取子集的向量短，那么它会进行循环填充，直到和向量一样
#长
x[c(T,F)]
#相当于
x[c(T,F,T,F)]
#缺失值总是产生缺失值
x[c(T,T,NA,F)]
x[0]
# names(x) <- "x"
# x[0]
(y<- setNames(x,letters[1:4]))
y[c("d","c","a")]#以名称取值

#列表取子集与原子向量相同,[]返回列表，[[]]返回值
z<- list(1:3)
str(z[1])
str(z[[1]])
#矩阵和数组
#对每一个维度都提供一个一维索引，并以逗号分隔
a<- matrix(1:9,nrow = 3)
colnames(a) <- c("A","B","C")
a[1:2,]
a[c(T,F,T),c("B","A")]#B列，A列，第一行，第三行

#数据框，数据框既有列表的特点，也有矩阵的特点
df<- data.frame(x = 1:3,y = 3:1,z = letters[1:3])
df[df$x==2,]
df[c(1,3),]
# 从数据框中选择列，有两种方法 
# 以列表的方式选择
df[c("x","z")]
# 以矩阵的方式选择
df[,c("x","z")]

#3.2.1 取子集方式：简化与保持 
#所谓简化与保持，即取子集操作之后是否把结果转化为更简单
#数据类型，比如取出数据框的一列，如果选择简化，
#则返回的是向量，如果选择保持，则返回的仍然是数
#据框
#1. 原子向量: 移除名字
x <- c(a = 1, b = 2) 
str(x[1])
str(x[[1]])#名字被移除
