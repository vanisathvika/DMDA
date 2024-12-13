# Load the dataset
data("iris")

# Install required packages (uncomment if not already installed)
install.packages("caret")
install.packages("C50")

# Load libraries
library(caret)
library(C50)

# Set seed for reproducibility
set.seed(7)

# Data Partition (70% training, 30% testing)
inTraininglocal <- createDataPartition(iris$Species, p = 0.70, list = FALSE)
training <- iris[inTraininglocal, ]
testing <- iris[-inTraininglocal, ]

# Build the Decision Tree model
model <- C5.0(Species ~ ., data = training)

# Display the model summary
summary(model)

# Predict on the testing dataset
pred <- predict(model, testing[, -5]) # Exclude the target column for prediction

# Calculate accuracy
confusion_matrix <- table(Actual = testing$Species, Predicted = pred)
accuracy <- sum(diag(confusion_matrix)) / sum(confusion_matrix)
print(paste("Accuracy:", round(accuracy, 2)))

# Visualize the decision tree
plot(model)
