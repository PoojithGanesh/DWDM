install.packages("arules")
install.packages("arulesViz")
library(arules)
library(arulesViz)
transactions <- list(
  c("a", "d", "e"),
  c("a", "b", "c", "e"),
  c("a", "b", "d", "e"),
  c("a", "c", "d", "e"),
  c("b", "c", "e"),
  c("b", "d", "e"),
  c("c", "d"),
  c("a", "b", "c"),
  c("a", "d", "e"),
  c("a", "b", "e")
)
txn <- as(transactions, "transactions")
rules_apriori <- apriori(txn, parameter = list(supp = 3/10, conf = 0.5, target = "rules"))
inspect(rules_apriori)
plot(rules_apriori, method = "graph", engine = "htmlwidget")
rules_fpgrowth <- eclat(txn, parameter = list(support = 3/10))
inspect(rules_fpgrowth)
