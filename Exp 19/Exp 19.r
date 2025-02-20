install.packages(c("e1071", "rpart", "rpart.plot"), dependencies = TRUE)
library(e1071)        # Naïve Bayes
library(rpart)        # Decision Tree
library(rpart.plot)   # Tree Visualization
data <- data.frame(
  age = c("<=30", "<=30", "31...40", ">40", ">40", ">40", "31...40", "<=30", "<=30", ">40", "31...40", "31...40", ">40"),
  income = c("high", "high", "high", "medium", "low", "low", "low", "medium", "low", "medium", "medium", "medium", "medium"),
  student = c("no", "no", "no", "no", "yes", "yes", "yes", "no", "yes", "yes", "yes", "yes", "no"),
  credit_rating = c("fair", "excellent", "fair", "fair", "fair", "excellent", "fair", "fair", "fair", "fair", "fair", "excellent", "excellent"),
  buys_computer = c("no", "no", "yes", "yes", "yes", "no", "yes", "no", "yes", "yes", "yes", "yes", "no")
)
data[] <- lapply(data, as.factor)
nb_model <- naiveBayes(buys_computer ~ ., data = data)
nb_predictions <- predict(nb_model, data)
print("Naïve Bayes Predictions:")
print(table(nb_predictions, data$buys_computer))
tree_model <- rpart(buys_computer ~ ., data = data, method = "class")
rpart.plot(tree_model, main = "Decision Tree")
tree_predictions <- predict(tree_model, data, type = "class")
print("Decision Tree Predictions:")
print(table(tree_predictions, data$buys_computer))
