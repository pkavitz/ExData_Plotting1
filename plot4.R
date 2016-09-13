###############################################################
## Paul Kavitz
## 13-Sep-16
##
## Course 4, Project 1, Exploratory Data Analysis
##
## This code creates exploratory graphs per the requirements.
##   - First run 'download.R' and 'tidypower.R'
################################################################

png("plot4.png", width=480, height=480)

## Top left plot - Global Active Power line plot
par(mfrow = c(2,2), mar=c(4, 4, 1, 1), oma=c(0, 0, 0, 0))
plot(power$datetime, power$globalactivepower, type="n",
     ylab="Global Active Power (kilowatts)", xlab="")
lines(power$datetime, power$globalactivepower)

## Top right plot - Voltage plot
with(power, plot(datetime, voltage, type="n",
                 ylab="Voltage", xlab="datetime"))
lines(power$datetime, power$voltage)

## Bottom left plot - Sub Metering plot
with(power, plot(datetime, submetering1, type="n",
                 ylab="Energy sub metering", xlab=""))
lines(power$datetime, power$submetering1, col="black")
lines(power$datetime, power$submetering2, col="red")
lines(power$datetime, power$submetering3, col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col=c("black", "red", "blue"),
       lwd=1, cex=0.8, bty="n")

## Bottom right plot - Reactive power
with(power, plot(datetime, globalreactivepower, type="n",
                 ylab="Global Reactive Power", xlab="datetime"))
lines(power$datetime, power$globalreactivepower)

dev.off()