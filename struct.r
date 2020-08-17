dbl_var <- c(1,2.5,4.5)
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

###########
