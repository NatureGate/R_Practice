Lst <- list(name="Fred", wife="Mary", no.children=3, child.ages=c(4,7,9))
#列表的分量可以被命名，这种情况下可以通过名字访问。此时，可以把字符串形 式的分量名字放在列表名后面的双中括号中，或者干脆采用下面的形式    
#name$component name
Lst$name ;Lst[[1]] 

#构建和修改列表
# Lst <- list(name 1=object 1, ..., name m=object m)
