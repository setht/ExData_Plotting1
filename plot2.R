library(datasets)
data <- read.table("C:\\coursera_ds\\household_power_consumption.txt", sep=";", header=TRUE)
data$Date <- as.Date(data$Date, "%d/%m/%Y")
data2 <- subset(data, Date >= as.Date("2007-02-01") & Date <= as.Date("2007-02-02"))
data2$Datetime <- as.POSIXct(paste(data2$Date, data2$Time), format="%Y-%m-%d %H:%M:%S")

# plot 2
plot(data2$Datetime, as.numeric(data2$Global_active_power), type = "l")
