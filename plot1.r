# Individual household electric power consumption Data Set
ihepc <- read.table('household_power_consumption.txt',skip=66637,nrows=69517-66637,sep=";",stringsAsFactors=FALSE)
cnames <- read.table('household_power_consumption.txt',sep=";",header=TRUE,nrows=1)
colnames(ihepc) <- colnames(cnames)

# plot 1
png('plot1.png',width=480,height=480)
hist(ihepc$Global_active_power,xlab="Global_active_power(kilowatts)",col='red',main="Global Active Power")
dev.off()
