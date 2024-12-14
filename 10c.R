data("iris")
install.packages("caret")
install.packages("C50")
library(caret)
library(C50)
set.seed(7)

inTraininglocal <- createDataPartition(iris$Species, p = 0.70, list = FALSE)
training <- iris[inTraininglocal, ]
testing <- iris[-inTraininglocal, ]
model <- C5.0(Species ~ ., data = training)
summary(model)

pred <- predict(model, testing[, -5]) # Exclude the target column for prediction
confusion_matrix <- table(Actual = testing$Species, Predicted = pred)
accuracy <- sum(diag(confusion_matrix)) / sum(confusion_matrix)
print(paste("Accuracy:", round(accuracy, 2)))
plot(model)
