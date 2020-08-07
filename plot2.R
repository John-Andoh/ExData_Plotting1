dat<-read.table("C:/Users/jelph/Documents/exdata_data_household_power_consumption/household_power_consumption.txt", sep = ";", skip = 66637, nrows = 2880)

names(dat)<-c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
dat$Date<-as.Date(dat$Date, "%d/%m/%y")
dat$Time<-strptime(dat$Time, format = "%H:%M:%S")

plot(dat$Time,as.numeric(as.character(dat$Global_active_power)),type="l",xlab="",ylab="Global Active Power (kilowatts)") 

# annotating graph
title(main="Global Active Power Vs Time")