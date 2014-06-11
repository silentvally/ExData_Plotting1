# Individual household electric power consumption Data Set
ihepc <- read.table('household_power_consumption.txt',skip=66637,nrows=69517-66637,sep=";",stringsAsFactors=FALSE)
cnames <- read.table('household_power_consumption.txt',sep=";",header=TRUE,nrows=1)
colnames(ihepc) <- colnames(cnames)

# get the weekdays
ihepc$Date <- as.Date(ihepc$Date,format="%d/%m/%Y")
ihepc$weekday <- weekdays(ihepc$Date)
#tapply(ihepc$Global_active_power,ihepc$weekday,sum)
# plot 2
png('plot2.png',width=480,height=480)
plot(ihepc$Global_active_power,type="l",ylab="Global_active_power",xlab="",main="Time Plot of Global_active_power")
dev.off()
