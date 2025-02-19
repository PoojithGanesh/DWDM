# Load the built-in mtcars dataset
data("mtcars")
# Convert cyl (number of cylinders) into a factor for categorical grouping
mtcars$cyl <- as.factor(mtcars$cyl)
# Create the boxplot
boxplot(mpg ~ cyl, data=mtcars,
        main="Boxplot of MPG vs Number of Cylinders",
        xlab="Number of Cylinders", 
        ylab="Miles Per Gallon (MPG)",
        col=c("lightblue", "lightgreen", "lightcoral"))
grid()
