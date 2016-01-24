## Creates plot1.png
plot1 <- function() {
  # setup()
  data <- setup.subset()
  
  ## Open a png file with the correct size
  png(filename = "plot1.png", width = 480, height = 480)
  
  ## Create the histogram
  hist(data$Global_active_power,
       col="red",
       xlab = "Global Active Power (kilowatts)",
       ylab = "Frequency",
       main = "Global Active Power")
  
  ## Close the png
  dev.off()
}