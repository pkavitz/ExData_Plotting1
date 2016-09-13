###############################################################
## Paul Kavitz
## 13-Sep-16
##
## Course 4, Project 1, Exploratory Data Analysis
##
## This code creates exploratory graphs per the requirements.
##   - First run 'download.R' and 'tidypower.R'
################################################################

png("plot2.png", width=480, height=480)
plot(power$datetime, power$globalactivepower, type="n",
     ylab="Global Active Power (kilowatts)", xlab="")
lines(power$datetime, power$globalactivepower)
dev.off()