load("data.Rdata")

hist(
    as.numeric(data$Global_active_power, na.rm = TRUE), 
    freq = TRUE, 
    xlab = "Global Active Power (kilowatts)",
    col = "red",
    main = "Global Active Power",
)

windows.options(width = 480, height = 480)
dev.copy(png, "plot2.png")
dev.off()