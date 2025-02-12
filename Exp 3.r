# Define the data
data_values <- c(200, 300, 400, 600, 1000)

# (a) Min-Max Normalization (min = 0, max = 1)
min_val <- min(data_values)
max_val <- max(data_values)

min_max_norm <- (data_values - min_val) / (max_val - min_val)

# (b) Z-Score Normalization
mean_val <- mean(data_values)
std_dev <- sd(data_values)

z_score_norm <- (data_values - mean_val) / std_dev

# Display results
cat("Min-Max Normalization:\n", round(min_max_norm, 4), "\n")
cat("Z-Score Normalization:\n", round(z_score_norm, 4), "\n")
