# Given dataset
age <- c(23, 23, 27, 27, 39, 41, 47, 49, 50, 52, 54, 54, 56, 57, 58, 58, 60, 61)
x <- 35  # Value to transform
# (i) Min-Max Normalization
min_age <- min(age)
max_age <- max(age)
min_max_norm <- (x - min_age) / (max_age - min_age)
# (ii) Z-score Normalization
mean_age <- mean(age)
sd_age <- 12.94
z_score_norm <- (x - mean_age) / sd_age
# (iii) Decimal Scaling Normalization
j <- ceiling(log10(max(age)))  # Determine j value
decimal_scaling_norm <- x / (10^j)
# Print Results
cat("Min-Max Normalization of 35:", min_max_norm, "\n")
cat("Z-score Normalization of 35:", z_score_norm, "\n")
cat("Decimal Scaling Normalization of 35:", decimal_scaling_norm, "\n")
