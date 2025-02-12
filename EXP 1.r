# Define the frequency table
age_intervals <- c("1-5", "5-15", "15-20", "20-50", "50-80", "80-110")
frequency <- c(200, 450, 300, 1500, 700, 44)

# Compute cumulative frequency
cumulative_freq <- cumsum(frequency)

# Total frequency
N <- sum(frequency)

# Find the median class (N/2)
N_by_2 <- N / 2
median_class_index <- which(cumulative_freq >= N_by_2)[1]

# Extract required values for the median formula
L <- c(1, 5, 15, 20, 50, 80)[median_class_index]  # Lower boundary
F <- ifelse(median_class_index > 1, cumulative_freq[median_class_index - 1], 0)
f <- frequency[median_class_index]
h <- c(4, 10, 5, 30, 30, 30)[median_class_index]  # Class width

# Compute the approximate median
median_value <- L + ((N_by_2 - F) / f) * h

# Display result
cat("Approximate Median Age:", round(median_value, 2), "years\n")
