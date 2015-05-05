#library(lubridate)
#data <- read.csv2("data/household_power_consumption.txt", na.strings=c("?","NA"))
#data$Date <- dmy(data$Date)
#data$Time <- hms(data$Time)
#data <- data[data$Date == ymd("2007/02/01") | data$Date == ymd("2007/02/02"), ]

#save(data, file = "data.RData")

load("data.Rdata")

hist(
    as.numeric(data$Global_active_power, na.rm = TRUE), 
    freq = TRUE, 
    xlab = "Global Active Power (kilowatts)",
    col = "red",
    main = "Global Active Power",
    )

windows.options(width = 480, height = 480)
dev.copy(png, "plot1.png")
dev.off()
