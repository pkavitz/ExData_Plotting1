###############################################################
## Paul Kavitz
## 13-Sep-16
##
## Course 4, Project 1, Exploratory Data Analysis
##
## This code creates tidy data from the powerraw data frame
##   produced by running 'download.R'
################################################################

library(lubridate)
library(dplyr)

power <- powerraw %>%
            mutate(datetime = paste(date, time),
                    date = dmy(date), time = hms(time)) %>%
            filter(date == ymd("2007-02-01") | date == ymd("2007-02-02"))
power <- mutate(power, datetime = dmy_hms(datetime))