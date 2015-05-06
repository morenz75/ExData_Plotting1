# Please take a look to dataSubsetting.R in order to see how I filter the original dataset
# Finaldataset has been saved in data.Rdata file so it is easy to reconstruct the plots.

load("data.Rdata")

Sys.setlocale("LC_TIME", "English")

png("plot4.png", width = 480, height = 480)
par(mfrow = c(2,2))

with(data,
{
    plot(datetime, Global_active_power, type = "l", ylab = "Global Active Power", xlab = "")
    plot(datetime, Voltage, type = "l", ylab ="Voltage", xlab = "datetime")
{
        plot(data$datetime,
             data$Sub_metering_1,
             type = "l",
             ylab = "Energy sub metering",
             xlab = ""
        )
        legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = c(1,1,1), col = c("black","red","blue"), cex = 0.9, bty = "n")
        lines(data$datetime,data$Sub_metering_2, col ="red")
        lines(data$datetime,data$Sub_metering_3, col = "blue")
    }
plot(datetime, Global_reactive_power, type = "l", ylab ="Global_reactive_power", xlab = "datetime")
})

dev.off()