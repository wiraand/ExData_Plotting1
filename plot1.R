# load main script readPowerDS.R
require(readPowerDS.R)

# define graphical device
png("plot1.png", width = 480, height = 480)

# create plotting histogram
hist(powerDS$Global_active_power,
     col = "red",
     main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)",
     ylab = "Frequency")

dev.off()