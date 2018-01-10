classes=c("character","character",rep("numeric",7))
data=read.table("C:\\Users\\Hasan\\Statistics\\R\\household_power_consumption.txt",header=TRUE,sep=";",colClasses=classes,na.strings="?")
subdata=subset(data,Date=="1/2/2007" | Date=="2/2/2007")

datetime=with(subdata,paste(Date,Time))
datetime=strptime(datetime,"%d/%m/%Y %H:%M:%S")

png(file="plot2.png",width=480,height=480)
plot(datetime,subdata$Global_active_power,type="l",xlab="",ylab="Global Active Power(kilowatts)")
dev.off()
