hh1 <- read.csv2.sql("household_power_consumption.txt", sql = "select * from file 
              where Date = '1/2/2007'")
hh2 <- read.csv2.sql("household_power_consumption.txt", sql="select * from file 
                     where Date ='2/2/2007'")
pl <- rbind(hh1, hh2)
par(cex = 0.8)
plot(pl$Global_active_power, xaxt = "n", type = "l", 
     xlab = "", ylab = "Global Active Power (kilowatts)")
axis(1, at = c(0, 1440, 2880), labels = c("Thu", "Fri", "Sat"))