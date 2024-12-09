#create a sequence of numbers between -10 and 10 incrementing by 0.1
x<-seq(-10,10,by=.1)
#Choose the mean AS 2.5 AND SD As 0.5
y<- dnorm(x,mean=2.5, sd= 0.5)
#Give chart file a name
png(file="dnorm.png")
plot(x,y)
#save the file
dev.off()


#Create a sequence of numbers between -10 and 10 increment by 1
x<-seq(-10,10,by=.1)
#Choose the mean as 2.5 and sd as 2
y<-pnorm(x,mean=2.5,sd=2)
#Give Chart file a name
png(file="pnorm.png")
plot(x,y)
#Save the file
dev.off()


#Create a sequence of numbers between 0 to 1 by 0.02
x<-seq(0,1,,by=0.02)
#Choose the mean as 2 and sd as 1
y<-qnorm(x,mean=2,sd=1)
#Give Chart file a name
png(file="qnorm.png")
plot(x,y)
#Save the file
dev.off()


#Create a sequence of numbers between -10 and 10 increment by 1
y<-rnorm(50)
#Give the chart file a name
png(file="rnorm.png")
#Plot the histogram for this sample 
hist(y,main="Normal Distribution")
#Save the file
dev.off()
