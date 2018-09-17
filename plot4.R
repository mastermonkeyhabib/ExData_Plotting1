#read data from file segregated by subset.R
data <- read.csv("household_power_consumption_short.txt", sep = ";")
data[[10]] <- as.POSIXct(data[[10]])

# open
png(filename = "plot4.png", width = 480, height = 480)

par(mfcol=c(2,2))

#create plot upper left
plot(data$datetime, data$Global_active_power, type = "l", xlab = "",  ylab = "Global Active Power")

#create plot bottom left
plot(data$datetime, data$Sub_metering_1, type = "l", xlab = "",  ylab = "Energy sub metering")
lines(data$datetime, data$Sub_metering_2, col = "red")
lines(data$datetime, data$Sub_metering_3, col = "blue")
legend("topright", legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_1"), col = c("black", "red", "blue"), lty=1, bty = "n")

#create plot upper right
plot(data$datetime, data$Voltage, type = "l", xlab = "datetime",  ylab = "Voltage")

#create plot bottom right
plot(data$datetime, data$Global_reactive_power, type = "l", xlab = "datetime",  ylab = "Global_reactive_power")



# save
dev.off()
