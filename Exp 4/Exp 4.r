# Given dataset
data <- c(11,13,13,15,15,16,19,20,20,20,21,21,22,23,24,30,40,45,45,45,71,72,73,75)

# Define bin size
bin_size <- 4
bins <- split(data, ceiling(seq_along(data)/bin_size))

# (a) Smoothing by Bin Mean
bin_mean <- lapply(bins, function(bin) rep(mean(bin), length(bin)))

# (b) Smoothing by Bin Median
bin_median <- lapply(bins, function(bin) rep(median(bin), length(bin)))

# (c) Smoothing by Bin Boundaries
bin_boundary <- lapply(bins, function(bin) {
  min_val <- min(bin)
  max_val <- max(bin)
  return(sapply(bin, function(x) ifelse(abs(x-min_val) < abs(x-max_val), min_val, max_val)))
})
# Print Results
print("Smoothing by Bin Mean:")
print(unlist(bin_mean))
print("Smoothing by Bin Median:")
print(unlist(bin_median))
print("Smoothing by Bin Boundaries:")
print(unlist(bin_boundary))
