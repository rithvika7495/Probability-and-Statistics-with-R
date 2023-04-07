# Testing of hypothesis for two sample means and proportion from real time problems
# and Applying the t-test for independent and dependent samples
n1 = 900
p1 = 0.2

n2 = 1600
p2 = 0.185

P = (n1*p1+n2*p2)/(n1+n2)

Q = 1 - P

# z-testing
Z = (p1-p2)/sqrt((P*Q)*((1/n1)+(1/n2)))
alpha = 0.05
zalpha = qnorm(1-alpha/2)
if(Z > zalpha || Z < -zalpha) {
  print("Reject null hypothesis")
} else {
  print("Accept null hypothesis")
}

# t-testing
sample1 = c(19,17,15,21,16,18,16,14)
sample2 = c(15,14,15,19,15,18,16,20)
t = t.test(sample1, sample2)
cv = t$statistic 
tv = qt(.975, 14) 
if(cv <= tv) {
  print("Accept Ho")
} else {
  print("Reject Ho")
}

