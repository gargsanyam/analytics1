women
sample(1:5, size = .7 *10)
sanyam = sample(1:nrow(women), size = .7 * nrow(women))
sanyam
women[1,]
train = women[sanyam,]
test = women[-sanyam,]

fit1 = lm(weight ~ height, data = train)
summary(fit1)
predict(fit1, newdata = test, type = 'response')
p4 = predict(fit1, newdata = test, type = 'response')
cbind(predicted = p4, actual = test$weight, height = test$height)
