#read data from file segregated by subset.R
data <- read.csv("household_power_consumption_short.txt", sep = ";")
data[[10]] <- as.POSIXct(data[[10]])

# open
png(filename = "plot3.png", width = 480, height = 480)

#create plot
plot(data$datetime, data$Sub_metering_1, type = "l", xlab = "",  ylab = "Energy sub metering")
lines(data$datetime, data$Sub_metering_2, col = "red")
lines(data$datetime, data$Sub_metering_3, col = "blue")
legend("topright", legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_1"), col = c("black", "red", "blue"), lty=1)

# save
dev.off()
