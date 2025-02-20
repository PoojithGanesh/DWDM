diabetes <- read.csv("diabetes.csv")
plot(diabetes$Age, diabetes$BloodPressure, 
     xlab = "Age", ylab = "Blood Pressure", 
     main = "Blood Pressure vs Age Scatterplot")
age_groups <- cut(diabetes$Age, breaks = seq(20, 80, by = 10), right = FALSE)
high_bp_counts <- table(age_groups, diabetes$BloodPressure >= 140)
barplot(high_bp_counts, beside = TRUE, 
        col = c("red", "green"), 
        xlab = "Age Group", ylab = "Count", 
        main = "Age Groups affected by High Blood Pressure")
legend("topright", legend = c("Normal BP", "High BP"), fill = c("green", "red"))
