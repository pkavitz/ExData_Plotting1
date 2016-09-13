###############################################################
## Paul Kavitz
## 13-Sep-16
##
## Course 4, Project 1, Exploratory Data Analysis
##
## This code downloads and uncompresses the data set required
##   for the assignment
################################################################

download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",
              destfile="electric.zip")
unzip("electric.zip")

powerraw <- read.csv("household_power_consumption.txt", sep=";", header=TRUE,
                     stringsAsFactors=FALSE, na.strings="?",
                     col.names=c("date", "time", "globalactivepower",
                                "globalreactivepower", "voltage",
                                "globalintensity", "submetering1",
                                "submetering2", "submetering3"),
                     colClasses=c("character", "character", "numeric",
                                  "numeric", "numeric", "numeric", "numeric",
                                  "numeric", "numeric"))
