input<-warpbreaks
print(head(input()))
 
output<-glm(formula=breaks~wool+tension,data=warpbreaks,
            family=possion)
print(summary(output))
