water <- read.csv("Water.csv")
head(water)
plot(water$hardness, water$mortality, 
     main="Scatter Plot: Mortality vs Hardness",
     xlab="Hardness", ylab="Mortality", 
     col="blue", pch=16)
lm_water <- lm(mortality ~ hardness, data = water)
summary(lm_water)
hardness_new <- data.frame(hardness = 88)
mortality_pred <- predict(lm_water, newdata = hardness_new)
cat("Predicted Mortality for Hardness = 88:", mortality_pred, "\n")
abline(lm_water, col="red", lwd=2)
