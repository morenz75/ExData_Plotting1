# Please take a look to dataSubsetting.R in order to see how I filter the original dataset
# Finaldataset has been saved in data.Rdata file so it is easy to reconstruct the plots.

load("data.Rdata")

Sys.setlocale("LC_TIME", "English")


png("plot3.png", width = 480, height = 480)
par(mfrow = c(1,1))

plot(data$datetime,
     data$Sub_metering_1,
     type = "l",
     ylab = "Energy sub metering",
     xlab = ""
)

lines(data$datetime,data$Sub_metering_2, col ="red")
lines(data$datetime,data$Sub_metering_3, col = "blue")

legend("topright", 
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       lty = c(1,1,1), 
       col = c("black","red","blue"),
       cex = 1)


dev.off()
