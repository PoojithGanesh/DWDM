# Given marks data
marks <- c(55, 60, 71, 63, 55, 65, 50, 55, 58, 59, 61, 63, 65, 67, 71, 72, 75)
# (a) Equal-Frequency Partitioning
sorted_marks <- sort(marks)
bin_size <- ceiling(length(sorted_marks) / 3)  # 3 bins
bins_freq <- split(sorted_marks, ceiling(seq_along(sorted_marks) / bin_size))
print("Equal-Frequency Bins:")
print(bins_freq)
# (b) Equal-Width Partitioning
bin_width <- (max(marks) - min(marks)) / 3
bins_width <- cut(marks, breaks=seq(min(marks), max(marks), by=bin_width), include.lowest=TRUE)
print("Equal-Width Bins:")
print(table(bins_width))
# Plot Histogram
hist(marks, breaks=seq(min(marks), max(marks), by=bin_width), 
     main="Histogram of Student Marks", xlab="Marks", col="lightblue", border="black")
