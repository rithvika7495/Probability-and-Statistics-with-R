#Normal Distribution and Poisson Distribution
n = 20
p = 0.001

ppois(2:9, n*p)

sum(dpois(2:9,1))

x = 0:n
px = round((dpois(x,1)),2)
data.frame(x,px)

plot(x,px,type="l", col="red", xlab = "x-axis", ylab = "y-axis")

# Ques: Find the following using R:
#Given mu= 40 , s=10
#(1) Plot the distribution and shade the area of (2),(3) and (4)
#(2) P(30<x<40)
#(3) P(X <= 30)
#(4) P(X >= 40)

mu = 40 
s = 10
x = seq(0,80, length =100)
y = dnorm(x,mu,s)
plot(x,y,type = "l")

x1 = seq(30,40, length = 100)
y1 = dnorm(x1, mu, s)
plot(x,y,type ="l")

x1 = seq(30,40, length =100 )
y1 = dnorm(x1,mu,s)
polygon(c(30,x1,40),c(0,y1,0), col = "purple")
pnorm(40,mu, s) - pnorm(30,mu,s)

x2 = seq(0,30, length=100 )
y2 = dnorm(x2,mu,s)
polygon(c(0,x2,30),c(0,y2,0), col = "green")
x3 = seq(40,80, length=100)
y3 = dnorm(x3,mu,s)
polygon(c(40,x3,80),c(0,y3,0), col = "blue")
