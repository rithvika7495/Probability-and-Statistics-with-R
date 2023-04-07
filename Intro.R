x=sample(10:50,10)
n=length(x)
mu1=sum(x)/n
mu2=sum(x^2)/n
mu3=sum(x^3)/n
mu4=sum(x^4)/n
library(moments)
moment(x)

moment(x,2)

moment(x,3)

all.moments(x,2)

all.moments(x,4)

all.moments(x,4,central=TRUE)

round(all.moments(x,4,central=TRUE),2)

plot(x)

y=sample(10:50,10)
plot(x,y)

plot(x,y,type="l")

x=sort(x)
y=sort(y)
plot(x,y,type="l")

plot(x,y,type="l",col="orange")

plot(x,y,type="l",col="red",xlab="Values of X", ylab="Values of Y", main="My First Graph is R")

discoveries 

x=discoveries 
x

m=mean(x)
m

m1=median(x)
m1

v=var(x)
v

s1=sd(x)
s1

n=length(x)
n

x=sort(x)
num1=sum(x)/n





