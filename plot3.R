###############################################################
## Paul Kavitz
## 13-Sep-16
##
## Course 4, Project 1, Exploratory Data Analysis
##
## This code creates exploratory graphs per the requirements.
##   - First run 'download.R' and 'tidypower.R'
################################################################

png("plot3.png", width=480, height=480)
par(mfrow=c(1,1))
with(power, plot(datetime, submetering1, type="n",
                 ylab="Energy sub metering", xlab=""))
lines(power$datetime, power$submetering1, col="black")
lines(power$datetime, power$submetering2, col="red")
lines(power$datetime, power$submetering3, col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col=c("black", "red", "blue"),
       lwd=1, cex=0.8)

dev.off()