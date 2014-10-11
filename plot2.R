### Plot 2
df=read.table("household_power_consumption.txt",na.strings="?",sep=";",header=T)
df$Date=as.Date(df$Date, format="%d/%m/%Y")
df=df[which(df$Date == as.Date("01/02/2007","%d/%m/%Y") | df$Date == as.Date("02/02/2007","%d/%m/%Y")),]
df$time2=paste(df[,1],df[,2])
df$time3=strptime(df$time2, format="%Y-%m-%d %H:%M:%S")
png(filename="plot2.png")
plot(df$time3, df[,3],xlab="",ylab="Global Active Power (kilowatts)",type="l")
dev.off()