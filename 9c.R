claimants <- read.csv("C:/Users/student/Downloads/claimants.csv")
claimants <- na.omit(claimants)

# Build the logistic regression model
logit <- glm(ATTORNEY ~ factor(CLMSEX) + factor(CLMINSUR) + factor(SEATBELT) + CLMAGE + LOSS,
             family = "binomial",
             data = claimants)
summary(logit)
# Predict probabilities
prob <- predict(logit, type = "response")
predicted <- ifelse(prob > 0.5, 1, 0)
confusion <- table(Predicted = predicted, Actual = claimants$ATTORNEY)
Accuracy <- sum(diag(confusion)) / sum(confusion)
print(paste("Accuracy:", Accuracy))

library(ROCR)
library(pROC)

rocrpred <- prediction(prob, claimants$ATTORNEY)
rocrperf <- performance(rocrpred, 'tpr', 'fpr')
plot(rocrperf, colorize = TRUE, text.adj = c(-0.2, 1.7))
auc_value <- auc(claimants$ATTORNEY ~ prob)
print(paste("AUC:", auc_value))
