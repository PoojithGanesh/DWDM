# Define the age data
ages <- c(13, 15, 16, 16, 19, 20, 20, 21, 22, 22, 25, 25, 25, 25, 30, 
          33, 33, 35, 35, 35, 35, 36, 40, 45, 46, 52, 70)

# Mean
mean_value <- mean(ages)

# Median
median_value <- median(ages)

# Mode function (returns all most frequent values)
mode_function <- function(x) {
  unique_x <- unique(x)
  freqs <- tabulate(match(x, unique_x))
  unique_x[freqs == max(freqs)]
}
mode_values <- mode_function(ages)

# Midrange
midrange_value <- (min(ages) + max(ages)) / 2

# Quartiles
Q1 <- quantile(ages, 0.25)
Q3 <- quantile(ages, 0.75)

# Display results
cat("Mean:", mean_value, "\n")
cat("Median:", median_value, "\n")
cat("Mode(s):", mode_values, "\n")
cat("Midrange:", midrange_value, "\n")
cat("Q1 (First Quartile):", Q1, "\n")
cat("Q3 (Third Quartile):", Q3, "\n")
