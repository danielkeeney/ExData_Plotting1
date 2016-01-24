## Creates plot2.png
plot2 <- function() {
  # setup()
  data <- setup.subset()
  
  ## Extract timestamps
  xData <- as.POSIXct(paste(data$Date, data$Time), format = "%d/%m/%Y %H:%M:%S")
  yData <- data$Global_active_power
  
  ## Open png file
  png(filename = "plot2.png", width = 480, height = 480)
  
  ## Set up plot
  plot(xData, 
       yData,
       xlab = "",
       ylab = "Global Active Power (kilowatts)",
       type = "n")
  ## Plot data
  lines(xData, yData)
  
  ## Close file
  dev.off()
}