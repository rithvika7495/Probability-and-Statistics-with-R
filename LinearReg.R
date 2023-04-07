data=faithful
data

summary(data)

plot(data$eruptions,data$waiting)
cor(data$eruptions,data$waiting)

x=data$eruptions
y=data$waiting
lm(y~x)

abline(lm(y~x))
abline(lm(x~y))

cor(data$eruptions,data$waiting)

(cor(faithful))