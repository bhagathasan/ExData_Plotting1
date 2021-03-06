classes=c("character","character",rep("numeric",7))
data=read.table("C:\\Users\\Hasan\\Statistics\\R\\household_power_consumption.txt",header=TRUE,sep=";",colClasses=classes,na.strings="?")
subdata=subset(data,Date=="1/2/2007" | Date=="2/2/2007")

datetime=with(subdata,paste(Date,Time))
datetime=strptime(datetime,"%d/%m/%Y %H:%M:%S")

png(file="plot4.png",width=480,height=480)
par(mfrow=c(2,2))
plot(datetime,subdata$Global_active_power,type="l",xlab="",ylab="Global Active Power(kilowatts)")

plot(datetime,subdata$Voltage,type="l",xlab="datetime",ylab="Voltage")

plot(datetime,subdata$Sub_metering_1,type="l",ylab="Energy Sub Metering",xlab="")
points(datetime,subdata$Sub_metering_2,type="l",col="red")
points(datetime,subdata$Sub_metering_3,type="l",col="blue")
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1,col=c("black","red","blue"),cex=0.5)

plot(datetime,subdata$Global_reactive_power,type="l",xlab="datetime",ylab="Global Reactive Power")
dev.off()
