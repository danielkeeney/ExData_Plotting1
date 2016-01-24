## Creates plot4.png
plot4 <- function() {
  # setup()
  data <- setup.subset()
  
  ## Extract timestamps
  timestamps <- as.POSIXct(paste(data$Date, data$Time), format = "%d/%m/%Y %H:%M:%S")
  
  ## Open png file
  png(filename = "plot4.png", width = 480, height = 480)
  
  ## Draw graphs
  plot4.graph(timestamps, data)
  
  ## Close file
  dev.off()
}

plot4.graph <- function(timestamps, data) {
  ## Extract y axis data
  voltage <- data$Voltage
  grp <- data$Global_reactive_power
  
  par(mfrow=c(2,2))
  
  plot2.graph(timestamps, data, ylab = "Global Active Power")
  plot(timestamps, 
       voltage, 
       type = "n",
       xlab = "datetime",
       ylab = "Voltage")
  lines(timestamps, data$Voltage)
  plot3.graph(timestamps, data, bty = "n")
  plot(timestamps,
       grp,
       type = "n",
       xlab = "datetime",
       ylab = "Global_reactive_power")
  lines(timestamps, grp)
}