#Create a sample of 50 numbers which are incremented
x<-seq(0,50,by=1)
#Create a binomial distribution
y<-dbinom(x,50,0.5)
#Give a chart file name
png(file="dbinom.png")
#Plot the graph for this sample
plot(x,y)
#save the file 
dev.off()


#Probability of gettting 26 or less heads from a 51 tosses of a coin
x<-pbinom(26,51,0.5)
print(x)


#How amny heads will have a probality of 0.25 with
#is tossed 51 times
x<-qbinom(0.25,51,1/2)
print(paste("qnomial distribution",x))

#find 8 random values from a sample of 150 with probability of 0.4
x<-rbinom(8,150,.4)
print(paste("rbinomal values are:",x))
