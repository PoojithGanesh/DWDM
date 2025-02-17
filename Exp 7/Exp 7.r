# Given data
pencils <- c(9, 25, 23, 12, 11, 6, 7, 8, 9, 10)
# Mean
mean_pencils <- mean(pencils)
# Median
median_pencils <- median(pencils)
# Mode function (since R does not have a built-in mode function)
get_mode <- function(x) {
  unique_x <- unique(x)
  freq <- tabulate(match(x, unique_x))
  unique_x[freq == max(freq)]
}
mode_pencils <- get_mode(pencils)
# Print results
cat("Mean:", mean_pencils, "\n")
cat("Median:", median_pencils, "\n")
cat("Mode:", mode_pencils, "\n")
