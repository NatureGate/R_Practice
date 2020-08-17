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



















