classes=c("character","character",rep("numeric",7))
data=read.table("C:\\Users\\Hasan\\Statistics\\R\\household_power_consumption.txt",header=TRUE,sep=";",colClasses=classes,na.strings="?")
subdata=subset(data,Date=="1/2/2007" | Date=="2/2/2007")


png(file="plot1.png",width=480,height=480)
hist(subdata$Global_active_power,xlab="Global Active Power(kilowatts)",ylab="Frequency",col="red",main="Global Active Power")
dev.off()
