# Create a simulated dataset
water <- data.frame(
  mortality = c(1600, 1450, 1250, 1600, 1380, 1260, 1590, 1490, 1440, 1400),
  hardness = c(50, 70, 30, 60, 55, 45, 80, 65, 60, 75)
)
print(head(water))
plot(water$hardness, water$mortality, 
     main="Scatter Plot: Mortality vs Hardness",
     xlab="Hardness", ylab="Mortality",
     col="blue", pch=16)
model <- lm(mortality ~ hardness, data=water)
abline(model, col="red", lwd=2)
# Predict mortality for hardness = 88
new_data <- data.frame(hardness=88)
predicted_mortality <- predict(model, new_data)
cat("Predicted Mortality for Hardness = 88:", predicted_mortality, "\n")
