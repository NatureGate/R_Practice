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

#2. 列表: 返回列表内的对象，而不是包含单个元素的列表


#3. 因子: 丢弃所有没有用到的水平。
z<- factor(c("a","b"))
z[1]
z[1,drop=T]

#4. 矩阵和数组: 如果任一维度的长度为 1，则丢弃那个维度。
a<- matrix(1:4,nrow = 2)
a[1,,drop = F]
a[1,]

#5. 数据框: 如果输出是单列的，那么将用向量替代数据框返回。
df <- data.frame(a = 1:2,b = 1:2)
df[1]
str(df[1])
df[[1]]
str(df[,"a",drop = F])#数据框
str(df[,"a"])#向量

#  $
#$与[[之间有一个重要区别 —— $可以部分匹配列名
x <- list(abc = 1) 
x$a


#取子集与赋值
x<- 1:5
x[c(1,2)]<- 2:3
x
x[-1]<- 4:1
x

#不能把整数索引与NA联系起来,下标不能是NA
x[c(1,NA)]<- c(1,2)
#但是逻辑索引可以是NA，表示F
x[c(T,F,NA)]<- -1#不够的循环补全
x

df<- data.frame(a=c(1,10,NA))
df
str(df$a)
str(df[,"a",drop = F]<5) ##逻辑
df[df[,"a",drop = F]<5]<- 0#df$a[df$a<5]<- 0
df

##查询表 字符取子集操作
x<- c("m","f","u","f","f","m","m")
lookup <- c(m = "Male",f = "Female",u = NA)
(y <- lookup[x])
str((y <- lookup[x]))

#如果你不想让名字显示在结果里，那么可以使用 unname()函数来删除。 
unname(lookup[x])


#列表删除元素
x<- list(a = 1,b = 2)
str(x)
x[["b"]]<- NULL
str(x)
#列表元素设置为空
y<- list(a =1)
y["b"] <- list(NULL)
str(y)

# 手动匹配与合并(整数取子集操作) 
grades <- c(1,2,2,3,1)
info <-data.frame(grade = 3:1,
                  desc = c("Excellent","Good","Poor"),
                  fail = c(F,F,T)
)
# 使用 match 
id <- match(grades, info$grade) 
info[id,]
rownames(info) <- info$grade
info[as.character(grades),]














