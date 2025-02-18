data("AirPassengers")
# Convert to numeric vector
passengers <- as.numeric(AirPassengers)
# Define bin breaks: Start at 100, then 200 to 700 with bin width of 150
breaks_seq <- c(100, seq(200, 700, by=150))
# Create the histogram
hist(passengers, breaks=breaks_seq, col="lightblue", border="black",
     main="Histogram of AirPassengers Data", 
     xlab="Number of Passengers", 
     ylab="Frequency")
