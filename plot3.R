hh1 <- read.csv2.sql("household_power_consumption.txt", sql = "select * from file 
              where Date = '1/2/2007'")
hh2 <- read.csv2.sql("household_power_consumption.txt", sql="select * from file 
                     where Date ='2/2/2007'")
pl <- rbind(hh1, hh2)
par(cex = 0.8)
plot(pl$Sub_metering_1, type = "n", xaxt = "n", xlab = "", ylab = "Energy sub metering")
axis(1, at = c(0, 1440, 2880), labels = c("Thu", "Fri", "Sat"))
points(pl$Sub_metering_1, type = "l")
points(pl$Sub_metering_2, type = "l", col = "red")
points(pl$Sub_metering_3, type = "l", col = "blue")
legend("topright", col = c("black", "red", "blue"), 
  lwd = 1, legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))