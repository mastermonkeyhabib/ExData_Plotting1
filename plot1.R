#read data from file segregated by subset.R
data <- read.csv("household_power_consumption_short.txt", sep = ";")

# open
png(filename = "plot1.png", width = 480, height = 480)

#create histogram
with(data, hist(Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power"))

# save
dev.off()
