## This file contains methods to set up the environment

## Main function to call
setup <- function() {
  setup.download()
  setup.unzip()
}

## Downloads the zip file
setup.download <- function() {
  url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
  download.file(url, "household_power_consumption.zip")
  unzip("household_power_consumption.zip")
}

## Unzips the zip file
setup.unzip <- function() {
  unzip("household_power_consumption.zip")
}

## Finds the subset of data we are interested in
setup.subset <- function() {
  ## Read the whole file
  entireData <- fread("household_power_consumption.txt", na.strings="?")
  
  ## Find the subset of the data for the data range we want
  data <- subset(entireData, Date == '2/2/2007' | Date == '1/2/2007')
  data
}