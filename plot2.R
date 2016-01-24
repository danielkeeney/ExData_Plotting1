## Creates plot2.png
plot2 <- function() {
  # setup()
  data <- setup.subset()
  
  ## Extract timestamps
  timestamps <- as.POSIXct(paste(data$Date, data$Time), format = "%d/%m/%Y %H:%M:%S")
  
  ## Open png file
  png(filename = "plot2.png", width = 480, height = 480)
  
  ## Draw the graph
  plot2.graph(timestamps, data, ylab = "Global Active Power (kilowatts)")
  
  ## Close file
  dev.off()
}

plot2.graph <- function(timestamps, data, ...) {
  yData <- data$Global_active_power
  
  ## Set up plot
  plot(timestamps, 
       yData,
       xlab = "",
       type = "n",
       ...)
  ## Plot data
  lines(timestamps, yData)
}