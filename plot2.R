# load main script readPowerDS.R
require(readPowerDS.R)

# define graphical device
png("plot2.png", width = 480, height = 480)

# create plotting histogram
with(
    powerDS,
    plot(
        x = DateTime,
        y = Global_active_power,
        type = "l",
        xlab = "",
        ylab = "Global Active Power (kilowatts)"
    )
)

dev.off()