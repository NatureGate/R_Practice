#ifelse(test ,1,2)
#function 函数
#数学函数
#概率函数
#统计函数
#数据的标准化
newdata <- scale(mydata)
newdata

#newdata <- scale(mydata)*SD + M

#R中提供了一个apply()函数，可将一个任意函数“应用”
#到矩阵、数组、数据框的任何维 度上。apply函数的使用格式为： 
#apply(x,MARGIN,FUN,...)
mydata <- matrix(rnorm(1:30),nrow = 6)
data1 <- apply(mydata,1,mean)
data2 <- apply(mydata,2,mean)
data3 <- apply(mydata,2,mean,trim = 0.2)

options(digits = 2)
Student <-c("John Davis","Angela Williams","Bullwinkle Moose",
            "David Jones","Janice Markhammer","Cheryl Cushing",
            "Reuven Ytzrhak","Greg Hnox","Joel England",
            "Mary Rayburn")
Math <- c(502,600,412,358,495,512,410,625,573,522)
Science <- c(95,99,80,82,75,85,80,95,89,86)
English <- c(25,22,18,15,20,28,15,30,27,18)
roster <- data.frame(Student,Math,Science,English,stringsAsFactors = F)
roster

z <- scale(roster[,2:4])
score <- apply(z, 1, mean)
roster <- cbind(roster,score)
y <- quantile(score,c(.8,.6,.4,.2))
roster <- within(roster,{
  grade <- NULL
  grade[score>=y[1]] <-"A"
  grade[score<y[1]&score>=y[2]] <- "B" 
  grade[score<y[2]&score>=y[3]] <- "C"
  grade[score<y[3]&score>=y[4]] <- "D"
  grade[score<y[4]] <- "F"
})
name <- strsplit((roster$Student)," ")
lastname <- sapply(name, "[",2)
firstname <- sapply(name,"[",1)

roster <- cbind(firstname,lastname,roster[,-1])
roster

roster <- roster[order(lastname,firstname),]
roster



mtcars
