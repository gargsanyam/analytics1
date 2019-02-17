#graphs

mtcars
names(mtcars)
table(mtcars$cyl)
table(mtcars$cyl,mtcars$am)
mtcars$mpg
#continous data - histogram, boxplot
hist(mtcars$mpg)
?boxplot
boxplot(mtcars$mpg, horizontal = T)
t1 = table(mtcars$gear)
t1
barplot(t1, col = 1:3)
barplot(c(10,3.5))
pie(c(10,3,5))
students
t2 = table(students$gender)
barplot(t2)
pie(t2)

