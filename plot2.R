#read data from file segregated by subset.R
data <- read.csv("household_power_consumption_short.txt", sep = ";")
data[[10]] <- as.POSIXct(data[[10]])

# open
png(filename = "plot2.png", width = 480, height = 480)

#create plot
plot(data$datetime, data$Global_active_power, type = "l", xlab = "",  ylab = "Global Active Power (kilowatts)")

# save
dev.off()
