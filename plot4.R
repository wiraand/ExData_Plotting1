require(readPowerDS.R)

png("plot4.png", width = 480, height = 480)
par(mfrow = c(2, 2))

# Plot 1
with(
    powerDS,
    plot(
        x = DateTime,
        y = Global_active_power,
        type = "l",
        xlab = "",
        ylab = "Global Active Power"
    )
)

# Plot 2

with(powerDS,
     plot(
         x = DateTime,
         y = Voltage,
         type = "l",
         xlab = "datetime",
         ylab = "Voltage"
     ))

#Plot 3

with(
    powerDS,
    plot(
        x = DateTime,
        y = Sub_metering_1,
        type = "l",
        xlab = "",
        ylab = "Energy sub metering"
    )
)

with(powerDS,
     lines(
         x = DateTime,
         y = Sub_metering_2,
         type = "l",
         col = "red"
     ))

with(powerDS,
     lines(
         x = DateTime,
         y = Sub_metering_3,
         type = "l",
         col = "blue"
     ))

legend(
    "topright",
    legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
    col = c("black",
            "red",
            "blue"),
    lty = 1
)

# Plot 4

with(
    powerDS,
    plot(
        x = DateTime,
        y = Global_reactive_power,
        type = "l",
        xlab = "datetime",
        ylab = "Global_reactive_power"
    )
)

dev.off()