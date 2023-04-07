#Applying Chi-square test for goodness of fit test and Contingency test to real dtset
x = 0:5
of = c(5,35,75,84,45,12)
n = 5
p = 0.5

px = dbinom(x,n,p)

Ef = 256*px
cv = sum(((of-Ef)^2)/Ef)

df = 5
Tv = qchisq(0.95,5)

if(cv <= Tv){print("H0 is accepted")} else{(print("H0 is rejected"))}

#=====================================================================================
#Independent of attribute

data<-matrix(c(69,51,81,20,35,44), ncol =2 , byrow = T)
data

rowSums(data)

colSums(data)

l = length(data)
l

#output by chisq distribution
cv = chisq.test(data)
cv = cv$p.value
cv

tv = qchisq(0.95,2)
tv

if(cv <= tv){print("H0 is accepted")} else{(print("H0 is rejected"))}

