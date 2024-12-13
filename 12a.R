library(MASS)

print(head(Cars93))
print(str(Cars93))

car_data <- table(Cars93$AirBags, Cars93$Type)
print(car_data)

print(chisq.test(car_data))
