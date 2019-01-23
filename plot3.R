require(readPowerDS.R)

png("plot3.png", width = 480, height = 480)

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

dev.off()