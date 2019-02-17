#modelling
# y = dependent variable, x = independent variable

cov(women$height, women$weight) #direction +ve
#height increases weight decreases
plot(women$height, women$weight)
#perform linear modelling
fit1 = lm(weight ~ height, data = women)
summary(fit1)
#F stats Pvalue << 0.05 : Linear model exist
#at least one Independent Variable(IV) is significant in predicting Dependent Variable (DV)
#multiple Rsquare = .991 Coefficient of Determination
#multiple when you have one IV, otherwise take Adj Rsq
#99% of the variation in Y is explained by Xs
# y = mx + c : y = -87 + 3.45 * height
range(women$height)
# only do interpolation not exterpolation
women$weight
women$height
(y = -87 + 3.45 * women$height)
#predicted weights for actual heights
fitted(fit1) # 26 = 28 but 28 is more accurate
residuals(fit1) #difference between predicted and actual weights
summary(fit1)
summary(residuals(fit1))
summary(students$marks1)
(newdata1 = data.frame(height = c(60.4,55.9)))
p1 = predict(fit1, newdata = newdata1, type = 'response')
cbind(newdata1, p1)
class(fit1)

#check for assumptions in linear regression
plot(fit1)
