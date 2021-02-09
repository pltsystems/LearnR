#compute the sum of the first 20 integers
20*(20+1)/2
#we can use the formula n*(n+1)/2
n <- 20
n*(n+1)/2

n <- 25
n*(n+1)/2

n <- 100
n*(n+1)/2

#code to calculate the sum of the first 1000 integers
n <- 1000
n * (n+1) /2

##now seq creates a list of numbers and sums them up.
n <- 1000
x <- seq(1,n)
sum(x)

#nested function calls
#log to the base 2
log2(16)
#square root of the log to the base 2 of 16
sqrt(log2(16))
#log to the base 10 of the sqrt of 100
log10(sqrt(100))

#code that will always return the numeric value stored
#in x.
x <- 100
exp(x)
log(exp(x))

#Data types
#dataset library dslabs
install.packages("dslabs")
library(dslabs)
data(murders)

#use str function to examine the structure of the data
str(murders)

#extract the variable names or column names
names(murders)

#access the population variables from the murders dataset
p <- murders$population

#determine the class of the object p
class(p)

#use the accessor to extract the state abbreviations 
#and assign it to a
a <- murders$abb
class(a)

#many ways of accessing variables
p <- murders$population
p

#with square brackets
o <- murders[["population"]]
o

#are p and o identical
identical(o,p)

a <- murders$abb
b <- murders[["abb"]]
identical(a,b)

##Factors
class(murders$region)
#determine the number of regions included in this variable
levels(murders$region)
length(levels(murders$region))

#table function takes a vector as input and returns the 
#frequency of each unique element in the vector.
x <- c("a","a","b","b","c","d","d","e")
table(x)

table(murders$region)

##use quadratic equation to find the roots of:
##2x^2 - x - 4 = 0
options(digits=3)
a <- 2
b <- -1
c <- -4
(-b+sqrt(b^2-4*a*c))/(2*a)
(-b-sqrt(b^2-4*a*c))/(2*a)

#compute log base4 of 1024
log(1024,base=4)

##The movielens  dataset in dslabs package
#includes data on a variety of movies and their rating by
#a particular user.
library(dslabs)
data("movielens")

##how many rows are in movielens
str(movielens)
nrow(movielens)

#how many variables are in the dataset
names(movielens)
length(movielens)

#what type of variable is title
class(movielens$title)

#type of genre
class(movielens$genres)

#how many levels are in the factor genres
levels(movielens$genres)
nlevels(movielens$genres)
length((levels(movielens$genres)))
