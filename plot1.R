### Plot 1
df=read.table("household_power_consumption.txt",na.strings="?",sep=";",header=T)
df$Date=as.Date(df$Date, format="%d/%m/%Y")
df=df[which(df$Date == as.Date("01/02/2007","%d/%m/%Y") | df$Date == as.Date("02/02/2007","%d/%m/%Y")),]
png(filename="plot1.png")
hist(df[,3],col="red",xlab="Global Active Power (kilowats)",main="Global Active Power")
dev.off()