install.packages("vcd")
library("bsv")

counts <- table(vcd::Arthritis$Improved)
barplot(counts,main = "Simple Bar Plot",
        xlab = "Improvment",
        ylab = "Frequency")

barplot(counts,main = "Simple Bar Plot",
        xlab = "Frequency",
        ylab = "Improvment",horiz = T)


##堆砌条形图与分组条形图
library("vsd")
counts <- table(vcd::Arthritis$Improved,vcd::Arthritis$Treatment)
counts

barplot(counts,main = "Stacked Bar Plot",
        xlab = "Treatment",
        ylab = "Frequency",
        col = c("red","yellow","green"),
        legend.text = row.names(counts))

barplot(counts,main = "Stacked Bar Plot",
        xlab = "Treatment",
        ylab = "Frequency",
        col = c("red","yellow","green"),
        legend.text = row.names(counts),
        beside = T)

##饼图
#pie(x, labels = names(x), edges = 200, radius = 0.8,
#clockwise = FALSE, init.angle = if(clockwise) 90 else 0,
#density = NULL, angle = 45, col = NULL, border = NULL,
#lty = NULL, main = NULL, …)
# 数据准备
info = c(1, 2, 4, 8)

# 命名
names = c("Google", "Runoob", "Taobao", "Weibo")

# 涂色（可选）
cols = c("#ED1C24","#22B14C","#FFC90E","#3f48CC")

# 绘图
pie(info, labels=names, col=cols)


##条形图
#barplot(H,xlab,ylab,main,names.arg,col,beside)
cvd19 = c(83534,2640626,585493)
#显示条形图
#barplot(cvd19)

barplot(cvd19,main = "新冠疫情条形图",col = c("#ed1c24","#22B14C","#FFC90E"),
        names.arg = c("中国","美国","印度"),
        )

install.packages("showtext")
library("showtext")

cvd19 = matrix(
  c(83017, 83534, 1794546, 2640626, 190535, 585493),
  2, 3
)
#设置文件名，输出为png
#png(file = "runoob-bar-1.png")
##加载字体
#showtext.begin();
colnames(cvd19) = c("中国","美国","印度")
rownames(cvd19) = c("6月","7月")
barplot(cvd19,main = "新冠疫情条形图",
        beside = F,
        )
