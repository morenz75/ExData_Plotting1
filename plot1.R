# Please take a look to dataSubsetting.R in order to see how I filter the original dataset
# Finaldataset has been saved in data.Rdata file so it is easy to reconstruct the plots.

load("data.Rdata")

png("plot1.png", width = 480, height = 480)

par(mfrow = c(1,1))

hist(
    data$Global_active_power, 
    freq = TRUE, 
    xlab = "Global Active Power (kilowatts)",
    col = "red",
    main = "Global Active Power"
)
dev.off()