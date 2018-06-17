UrlData<-"https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(UrlData,destfile = "./data.zip")
unzip("./data.zip",exdir = ".")

library(grDevices)
test<-read.table("household_power_consumption.txt",sep = ";",header = TRUE)
test2<-subset.data.frame(test,test$Date=="1/2/2007"|test$Date=="2/2/2007")
test2$Global_active_power<-as.numeric(as.character(test2$Global_active_power))
png(filename = "plot1.png")
hist(test2$Global_active_power,col="red",xlab = "Global Active Power (kilowatts)", main = "Global Active Power")
dev.off(dev.cur())