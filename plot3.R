library(datasets)
data <- read.table("C:\\coursera_ds\\household_power_consumption.txt", sep=";", header=TRUE)
data$Date <- as.Date(data$Date, "%d/%m/%Y")
data2 <- subset(data, Date >= as.Date("2007-02-01") & Date <= as.Date("2007-02-02"))
data2$Datetime <- as.POSIXct(paste(data2$Date, data2$Time), format="%Y-%m-%d %H:%M:%S")

# plot 3
with(data2, plot(Datetime, Sub_metering_1, col = "black", type = "l", xlab = "", ylab = "Energy sub metering"))
with(data2, points(Datetime, Sub_metering_2, col = "red", type = "l"))
with(data2, points(Datetime, Sub_metering_3, col = "blue", type = "l"))
legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
