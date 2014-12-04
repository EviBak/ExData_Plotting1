hh1 <- read.csv2.sql("household_power_consumption.txt", sql = "select * from file 
              where Date = '1/2/2007'")
hh2 <- read.csv2.sql("household_power_consumption.txt", sql="select * from file 
              where Date ='2/2/2007'")
par(cex = 0.8)
pl <- rbind(hh1, hh2)
hist(pl$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)",
              main = "Global Active Power")