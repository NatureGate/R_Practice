dbl_var <- c(1,2.5,4.5)
str(dbl_var)
int_var <- c(1L,6L,10L)
log_var <- c(T,F,T,F)
chr_var <- c("there are","some strings")
dbl_var
int_var
log_var
chr_var
flag <- c(1,2,3,4)==c(1,c(2,c(3,4)))
flag
##一个原子向量中的所有元素都必须是相同的类型。 所以，当你试图合并不同类型
##的数据时，将向最灵活的类型进行强制转换。 以灵活程度排序，从小到大依次
##为：逻辑、整数、双精度浮点数和字符。 例如，合并字符和整数将得到字符： 
str(c("a",1))

as.numeric(log_var)
sum(log_var)
mean(log_var)

########### 列表
###列表元素的类型可以不一致
x <- list(1:3,"a",c(T,F,T),c(2.3,5.8))
str(x)

x<- list(list(list(list())))
str(x)
is.recursive(x)

###c()可以将几个向量合并成一个。 如果原子向量和列表同时存在，那么在合并之
###前，c()会将原子向量强制转换成列表。 比较一下调用 list()和 c()的结果

x<- list(list(1,2),c(3,4))
y <- c(list(1,2),c(3,4))
str(x)
str(y)
is.atomic(x) ## F 转换成list
is.atomic(y) ## F 转换城list


###属性 为y添加属性
y<- 1:10
attr(y,"my_attribute")<- "This is a vector"
attr(y,"my_attribute")
str(attributes(y)) ###list of 1

###属性属于对象本身
attributes(y)
attributes(y[1])
attributes(sum(y))

###有三种重要的属性不会丢失，name，dimension，class，我称他们为对象的元属性
 ###名字

##创建向量时命名
x<- c(a=1,b=2,c=3)  ###a,b,c就是name
###就地修改
x<- 1:3;names(x) <- c("a","b","c")
str(x)

##没有名字的是NULL

#####          因子

####属性的一个重要应用是定义因子。 因子是仅包含预定义值的向量，用来保存"水平
###"(level)(或者"种类"(category))数据。 (译者注：类似于其它语言中的枚举类型) 因
########子构建于整数向量之上，带有两个属性：class(),levels()


x<- factor(c("a","b","b","a"))
x
class(x) ###factor
levels(x)###"a" "b"
###   注意，不能用levels中没有的值



sex_char <- c("m","m","m")
sex_factor <- factor(sex_char,levels = c("m","f"))
table(sex_char)
table(sex_factor)

f1 <- factor(letters)
levels(f1) <- rev(levels(f1))
f1
f2 <- rev(factor(letters))
f2
f3 <- factor(letters,levels(rev(letters)))
f3


####矩阵和数组
#### 为原子向量添加一个 dim()属性，可以让它变成多维数组

###两个标量参数指定了行和列
a <- matrix(1:6,ncol = 3,nrow = 2)
b <- array(1:12,c(2,3,2))
c <- 1:6
dim(c) <- c(3,2) ##三行两列
c
dim(c) <- c(2,3) ## 两行三列
c

####数据框
###数据框是由等长向量
###构成的列表。 它也是二维结构，所以它具有矩阵和列表双重属性。 
(df = data.frame(x = 1:3,y = c("a","b","c"),stringsAsFactors = T))
str(df)
typeof(df)
class(df)
is.data.frame(df)

###连接数据框 ，加一列或一行
cbind(df,data.frame(z = 3:1))
rbind(df,data.frame(x = 10,y = "z"))
####通过 cbind()把原子向量连接在一起来创建数据框，是一种常见的错误。 这是行不
###通的，因为除非 cbind()的参数中含有数据框，否则 cbind()将创建矩阵类型，而不
###是数据框类型。 


#索引数组
x<- array(1:20,dim = c(4,5))#产生一个4*5的数组
x
i<- array(c(1:3,3:1),dim = c(3,2))
i                          #i是一个3*2的索引矩阵
str(i)
x[i]                      #提取这些元素

x[i] <- 0
x
##这里没有想明白

##数组构建
#Z <- array(data_vector,dim_vector)
z <- array(1:24,dim = c(3,4,2))

##数组的外积
ab <- a%o%b
ab <- outer(a,b,"*")

#0-9 2*2矩阵行列式所有值的概率分布
d<- outer(0:9,0:9)
d
fr<- table(outer(d,d,"-"))
fr
plot(as.numeric(names(fr)),fr,type = "h",xlab = "Determinant",ylab = "Frequency")


#矩阵
#矩阵相乘 %*%

