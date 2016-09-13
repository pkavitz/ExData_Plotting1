###############################################################
## Paul Kavitz
## 13-Sep-16
##
## Course 4, Project 1, Exploratory Data Analysis
##
## This code creates exploratory graphs per the requirements.
##   - First run 'download.R' and 'tidypower.R'
################################################################

png("plot1.png", width=480, height=480)
hist(power$globalactivepower, col="red", main="Global Active Power",
     xlab = "Global Active Power (kilowatts)")
dev.off()
