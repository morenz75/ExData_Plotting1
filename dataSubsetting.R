library(lubridate)

data <- read.table(
    "data/household_power_consumption.txt", 
    na.strings=c("?","NA"), 
    colClasses = c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"),
    sep =";",
    head = TRUE
)
data$datetime <- dmy_hms(paste(data$Date,data$Time, sep = " "))
data <- data[data$datetime >= ymd("2007/02/01") & data$datetime < ymd("2007/02/03"), ]

save(data, file = "data.RData")