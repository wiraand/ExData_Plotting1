require(readPowerDS.R)

png("plot1.png", width = 480, height = 480)

hist(powerDS$Global_active_power,
     col = "red",
     main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)",
     ylab = "Frequency")

dev.off()