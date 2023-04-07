n = 15
p = 0.05
q = 1 - p

#P(X=3)
dbinom(3,n,p)

#P(X<=3)
pbinom(3,n,p)

#P(X>5), P(4<X<12)

1 - pbinom(5,n,p)

dbinom(5:11,n,p)

x = 0:n
px = dbinom(x,n,p)
Ex = sum(x*px)
va = sum(x^2*px)-Ex^2

round(data.frame(x,px),2)

plot(x,px ,type = "h", col ="blue", xlab = "No. of Defectives Screws", ylab = "Probability Distribution")
