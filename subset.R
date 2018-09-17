#read large file
data <- read.csv("household_power_consumption.txt", sep = ";", as.is = TRUE, na.strings = "?") 


#convert types
data[[10]] <- as.POSIXct(paste(data[[1]], data[[2]]), format = "%d/%m/%Y %H:%M:%S")
colnames(data)[10] <- "datetime"

#subset to desired dates
datas <- subset(data, data$datetime >= as.POSIXct("2007-02-01 00:00:00", format = "%Y-%m-%d %H:%M:%S") & data$datetime < as.POSIXct("2007-02-03 00:00:00", format = "%Y-%m-%d %H:%M:%S"))

#save output
write.table(datas, file = "household_power_consumption_short.txt", row.names = FALSE, sep = ";")