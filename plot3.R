## Creates plot3.png
plot3 <- function() {
  # setup()
  data <- setup.subset()
  
  ## Extract timestamps
  xData <- as.POSIXct(paste(data$Date, data$Time), format = "%d/%m/%Y %H:%M:%S")
  sub1 <- data$Sub_metering_1
  sub2 <- data$Sub_metering_2
  sub3 <- data$Sub_metering_3
  
  ## Open png file
  png(filename = "plot3.png", width = 480, height = 480)
  
  ## Set up plot
  plot(xData, 
       sub1,
       xlab = "",
       ylab = "Energy sub metering",
       type = "n")
  lines(xData, sub1, col = "black")
  lines(xData, sub2, col = "red")
  lines(xData, sub3, col = "blue")
  legend("topright", 
         col = c("black", "red", "blue"), 
         legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
         lty = 1)
  
  ## Close file
  dev.off()
}