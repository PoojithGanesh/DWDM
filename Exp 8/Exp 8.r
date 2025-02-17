# Given data
x <- c(4, 1, 5, 7, 10, 2, 50, 25, 90, 36)  # Number of phones sold
y <- c(12, 5, 13, 19, 31, 7, 153, 72, 275, 110)  # Money earned
# Scatter plot
plot(x, y, main="Scatter Plot: Mobile Phones Sold vs Money Earned",
     xlab="Mobile Phones Sold", ylab="Money Earned", 
     col="blue", pch=16)  # pch=16 makes solid circles
grid()  # Add grid lines for better visualization
