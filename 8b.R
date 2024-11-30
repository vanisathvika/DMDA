input<-mtcars[,c("am","mpg","hp")]
print(head(input))
input<-mtcars
first_result<-aov(mpg~hp*am,data=input)
print(summary(first_result))
second_result<-aov(mpg~hp+am,data=input)
print(summary(second_result))

print(anova(result1,result2))
boxplot(anova(result1,result2))
