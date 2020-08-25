dose <-c(20,30,40,45,60)
drugA <- c(16,20,27,40,60)
drugB <- c(15,18,25,31,40)
plot(dose,drugA,type = "b") #plot(x,y,type)

#图形参数
opar <- par(no.readonly = T)
par(lty = 2,pch = 17)
plot(dose,drugA,type = "b")
par(opar)

##修改符号和线条
#pch 描绘点时使用的符号
#cex 符号的大小
#lty 线条的类型
#lwd 指定线条的宽度

#颜色
#颜色参数
#col 默认绘图的颜色向量，多条线时颜色循环使用
#col.axis 坐标轴刻度文字的颜色
#col.lab  坐标轴标签的颜色
#col.sub  副标题的颜色
#fg 图形的前景色
#bg 图形的背景色

#图形尺寸和边界尺寸
#pin 以英寸表示的图形尺寸(宽和高)
#mai 以数值向量表示的边界大小，顺序为“下，左，上，右”
#mar 英分
par(pin = c(4,3),mai = c(1,.5,1,.2))

##使用图形参数控制图形外观
dose <-c(20,30,40,45,60)
drugA <-c(16,20,27,40,60)
drugB <-c(15,18,25,31,40)
opar <-par(no.readonly = T)
par(pin = c(2,3),lwd = 2,cex = 1.5)
plot(dose,drugA,type = "b",pch = 19,lty = 2,col = "red")
plot(dose,drugB,type = "b",pch = 23,lty = 6,col = "blue",bg = "green")
par(opar)

# 添加文本、自定义坐标轴和图例 














