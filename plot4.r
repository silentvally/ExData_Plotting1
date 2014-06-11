# Individual household electric power consumption Data Set
ihepc <- read.table('household_power_consumption.txt',skip=66637,nrows=69517-66637,sep=";",stringsAsFactors=FALSE)
cnames <- read.table('household_power_consumption.txt',sep=";",header=TRUE,nrows=1)
colnames(ihepc) <- colnames(cnames)

# get the weekdays
ihepc$Date <- as.Date(ihepc$Date,format="%d/%m/%Y")
ihepc$weekday <- weekdays(ihepc$Date)
#tapply(ihepc$Global_active_power,ihepc$weekday,sum)

# plot 4
png('plot4.png',width=480,height=480)
par(mfrow=c(2,2))
plot(ihepc$Global_active_power,type="l",xlab="",ylab="Global_active_power")

plot(ihepc$Voltage,type="l",xlab="",ylab="Voltage")

plot(ihepc$Sub_metering_1,type="l",ylab="Energy Sub metering",xlab="")
lines(ihepc$Sub_metering_2,col="red")
lines(ihepc$Sub_metering_3,col='blue')
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col = c("black", "red", "blue"),lty=c(1,1,1))

plot(ihepc$Global_reactive_power,type="l",xlab="",ylab="Global_reactive_power")

dev.off()
