
input<-mtcars[,c("mpg","wt","disp","hp")]

Model<-lm(mpg~wt+disp+hp,data=input)

print(Model) 
