# Load the dataset
data("mtcars")
# Create the base plot using mpg
plot(mtcars$mpg, type="o", col="blue", lwd=2, pch=16, ylim=c(min(mtcars$mpg, mtcars$qsec), max(mtcars$mpg, mtcars$qsec)),
     xlab="Car Index", ylab="Values", main="Multiple Line Chart: MPG vs QSEC")
# Add qsec to the same plot using lines()
lines(mtcars$qsec, type="o", col="red", lwd=2, pch=17)
# Add a legend
legend("topright", legend=c("MPG", "QSEC"), col=c("blue", "red"), lty=1, pch=c(16,17), lwd=2)
