#1a
chest <- c(rep("gold",20),rep("silver",30),rep("bronze",50))
sample(chest, size=10)
#1b
sample(c("Success","Failure"),10,replace=T,prob=c(0.9,0.1)) 
#10 is by default taken as size of the sample

#2
n=20
Prob = 1 - ((choose(365,n)*factorial(n))/(365^n))
print(Prob)

#2a
n=20
N=5000
sum=0
for(val in 1:N){
  a=as.integer(any(duplicated(sample(365,n,replace=TRUE))))
  sum=sum+a
}
prob2=sum/N
print(prob2)

#3
Bayesian<-function(PA,PB,PBgA){
  PAgB=PA*PBgA/PB
  return (PAgB)
}
PA=0.2
PB=0.4
PBgA=0.85
PAgB=Bayesian(PA,PB,PBgA)
print(PAgB)

#4
data<-iris
head(data)
str(data)
rng <-range(data$Sepal.Length)
print(rng)
q1<- quantile(data$Sepal.Length,0.25)
q3<- quantile(data$Sepal.Length,0.75)
iqr=q3-q1
print(iqr)
lapply(data[,1:4],sd)
summary(data)

#5
#no inbuilt function for mode
getmode<- function(v){
  uniquev<-unique(v)
  uniquev[which.max(tabulate(match(v,uniquev)))]
}
v<-c(2,1,2,3,1,2,3,4,1,5,5,3,2,3)
v<-c("o","it","the","it","it")
result<-getmode(v)
print(result)
