mydata <- data.frame(age = numeric(0),gender = character(0),weight = numeric(0))
edit(mydata)

mydata
fix(mydata)


mydataframe <- read.csv("worker.csv",sep = ",")
mydataframe
library(RODBC)
channel <- odbcConnectExcel2007("worker.xlsx")
mydata_frame <- sqlFetch(channel,"Sheet1")
odbcClose(channel)
mydata_frame


