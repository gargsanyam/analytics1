#my first r file
#commentg by starting #
women
#control + enter to execute command
?women
#? before function to seek help
mtcars
mean(mtcars$mpg)
names(mtcars) #names of the variables in the data provided
mean(mtcars$hp)
colMeans(mtcars)
rowMeans(mtcars)
head(mtcars,1)
?head #first 6 rows if not given a number
?tail #last 6 rows if not given a number
tail(mtcars,1) #last row
hist(mtcars$mpg, breaks = 2)
#vectors
x = c(1,2,5,7)
x
?c #combine values into a vector or a list
?class #tells the class of the data
?class (x)
xl = c(2L,8L)
class(xl)
class(mtcars)
x3 = c("a","b","sanyam")
x3
class (x3)
x4 = c(TRUE, FALSE, T, F)
x4
class (x4)
(x5 = 1:100000)
x5
x6 <- 2 #another way to assign ; other is =
x6
x7 = rnorm(100000000)
x7
mean (x7)
sd(x7)
?rnorm
plot (density(x7))
hist (x7, freq = F)
points (density (x7))
(x8 = rnorm (100, mean = 60, sd=10))
hist (x8)
plot (density(x8))
points (density (x8))
hist (x8, freq = F)
library (e1071)
kurtosis(x8)
skewness(x8)
x9 = runif (100,30,90)
x9
trunc (x9) #removes decimals
round (x9) #round off
floor (x9) #rounds off to the lower value
ceiling (x9) #rounds of the higher value
x10 = ceiling (x9)
x10
mean(x10)
median(x10)
sort(x10)
sort(x10, decreasing = T)
x10 [x10 > 60]
x10 
x10 [1:10]
x10 [20:30]
x10 [-c(1:20)]
x10 [c(1,5,7)]

#matrices
m1 = matrix(1:24, nrow = 6)
m1
dim(m1)
m2 = matrix(1:56, ncol = 8)
m2
m3 = matrix(1:24, ncol = 6, byrow = T)
m3
colnames(m3) =month.abb[1:6]
m3
rownames(m3) =paste('Product',1:4, sep='_')
m3
rowMeans(m3)
colSums(m3)
colMeans(m3)
rowSums(m3)
m1 [ , 1:2]
m3 [, 1:2]
colMeans(m3[c(1,3), ])
m3 [ , c('Apr', 'Jun')]
max(m3)
min(m3)
range(m3)
#question

#data.frame
n = 30
rollno = 1:30
(sname = paste('Student', 1:30, sep = '&'))
set.seed(1234) #helps in generating the same set of data

(gender = sample(c('M','F'), size = n , replace= T, prob = c(.7,.3)))
(t1 = table (gender))
prop.table(t1) #proportion of female and male
set.seed(12)
college = sample(c('SRCC', 'FMS','IIM'), size = n, replace = T,prob = c(.4,.3,.3))
table(college)
(t2= table(college))
prop.table

(marks1 = round(rnorm(n, mean = 60, sd = 10), 0))
?rnorm
(marks2 = round(rnorm(n, mean = 55, sd = 15), 0))
rollno; sname; gender; college; marks1; marks2
length(gender)

students = data.frame(rollno, sname, gender, college, marks1, marks2)
students
class(students)
head(students)
students$rollno
students[ ,c(2,5:6)]
students[,c('sname', 'marks1', 'marks2')]
structure(students)
str(students)
summary(students)
quantile(students$marks1)
quantile(students$marks1, probs = seq(0,1,.1))
quantile(students$marks1, probs = seq(0,1,.01))
?seq #generates regular sequences in a generic default method
seq(2,200,2)
quantile(students$marks1, probs = seq(0,1,.25))
summary(students)
students$rollno =as.character(student$rollno)
students$sname =as.character(students$sname)
str(students)
summary(students)
head(students)
library(dplyr)
write.csv(students, 'fms.csv', row.names = F) #exporting the file 
students2 = read.csv(file.choose())
head(students2)
students[students$marks1 >60, ]
students[students$gender =='F', ]
students[students$gender =='F'|students$college == 'SRCC', ]
#highest from all colleges
student %>% filter(gender == 'M' & marks1 > 60)
students %>% group_by(gender) %>% summarise (max(marks1), max(marks2))
students %>% filter(college == 'FMS' ) %>% select(marks1, marks2)
