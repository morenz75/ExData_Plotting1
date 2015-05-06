# Please take a look to dataSubsetting.R in order to see how I filter the original dataset
# Finaldataset has been saved in data.Rdata file so it is easy to reconstruct the plots.

load("data.Rdata")

Sys.setlocale("LC_TIME", "English")

png("plot2.png", width = 480, height = 480)

par(mfrow = c(1,1))

plot(data$datetime,
     data$Global_active_power,
     type = "l",
     ylab = "Global Active Power (kilowatts)",
     xlab = ""
)

dev.off()