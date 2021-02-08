#the function c() is useful for creating vectors and stands for concatenate
#the seq function generates sequences
codes <- c(480,214,188)
country <- c("canada","usa","mexico")
codes
country

codes <- c(canada=480,usa=214,mexico=188)
codes

codes <- c("canada"=480,"usa"=214,"mexico"=188)
codes

codes <- c(480,314,188)
country <- c("canada","usa","mexico")
names(codes)<-country
codes

codes[2]
codes[c(1,3)]
codes[1:2]

codes["canada"]
codes[c("usa","mexico")]

##coercion is an attempt by R to be flexible with data types
##by guessing what was meant when an entry does not match the 
##expected.
x <- c(1,"usa",3) 
#x is coerced into data characters
as.character(10) # turns numbers into characters
as.numeric(a) #turns characters into numbers
#missing data is assigned the value NA.

##A vector is a series of values, all of the same type.
##They are the most basic data type in R and can hold
##numerice data, character data, or logical data.
##in R you can create a vector with the concatenate or combine
##function c().
cost <- c(50,75,90,100,150)
cost
temp <- c("Beijing"=35, "Lagos"=88,"Paris"=42,"Rio de Janeiro"=84,
          "San Juan"= 81,"Toronto"=30)
temp

food <- c("pizza","burgers","salads","cheese","pasta")
food
city <- c("Tokyo","Lago","Paris","Rio de Janeiro","San Juan","Toronto")
city
names(cost) <- food
cost

names(temp) <- city
temp

#subsetting
cost[3:5]
temp[1:3]

cost[c(1,5)]
temp[c(3,5)]

#sequences
m <- 32:99
length(m)

x <- c(12:73)
x
length(x)

x <- seq(7,49,7)
x
xx <- seq(1,100,2)
xx

seq(7,49,7)
seq(7,50,7)
length(seq(6,55,4/7))

#determine the class of a
class(a <-seq(1,10,length.out=100))
class(a <-seq(1,10))
class(3L)
class(1)
class(1L)

##coercion
x <- c(1,3,5,"a")
x
class(x)
x <- as.numeric(x)
class(x)

#Sorting
#sort() sorts a vector in increasing order
#order() produces the indices needed to obtain the sorted vector,
#rank() gives us the rank of the items in the original vector
#max() returns the largest value
#which.max() returns the index of the largest value.
#min() returns the minimum value
#which.min() returns the index of the smallest value.

library(dslabs)
data("murders")
x <- sort(murders$total)
x

x <- c(31,4,15,92,6)
x
sort(x)
index <- order(x)
index
x[index]
order(x)

murders$state[1:10]
murders$abb[1:10]

index <- order(murders$total)
index
murders$abb[index]

max(murders$total)
imax <- which.max(murders$total)
imax
murders$state[imax]

x <- c(31,4,15,92,65)
x
rank(x)

states <- murders$state
states <- sort(states)
states[1]

pop <- murders$population
pop <- sort(pop)
pop[1]

pop <- murders$population
pop
ord <- order(pop)
ord
ord[1]
#order() function returns the index vector needed to sort the vector.
#this implies that sort(x) and x[order(x)] gives the same result.
#This can be useful for finding row numbers with certain properties
#such as "the row for the state with the smallest population".  
#Remember that when we extract a variable from a data frame the order
#of the rows of the resulting vector is the same as the order 
#of the rows of the data frame.

which.min(murders$total)
which.min(murders$population)

#define i to be the index of the smallest state
i <- which.min(murders$population)
i
states <- murders$state
states
states[i]

#ranks
temp <- c(35,88,42,84,81,30)
city <- c("Tokyo","Lagos","Paris","Rio de Janeiro","San Juan","Toronto")
city_temps <- data.frame(name=city,temperture=temp)
city_temps
str(city_temps)

states <- murders$state
ranks <- rank(murders
              $population)
my_df <- data.frame(name=states,ranks=ranks)
my_df

states <- murders$state
ranks <- rank(murders
              $population)
index <- order(murders$population)
my_df <- data.frame(states=states[index],ranks=ranks[index])
my_df

#NAs
library(dslabs)
data("na_example")
str(na_example)
mean(na_example)

#use is.na to create a logical index indx that tells which
#entries are NA
indx <- is.na(na_example)
indx

#determine how many NA indx has using the sum function
sum(indx)

#Removing NAs
x <- c(1,2,3)
indx <- c(FALSE,TRUE,FALSE)
x[!indx]
library(dslabs)
data("na_example")
indx <- is.na(na_example)
indx
mean(na_example)
mean(na_example[!indx])

#Vector arithmetic
#state with maximum population
murders$state[which.max(murders$population)]
murder_rate <- murders$total/murders$population * 100000
murder_rate
murders$state[order(murder_rate,decreasing = TRUE)]

#vectorized operations
city <- c("Tokyo","Lagos","Paris","Rio de Janeiro","San Juan","Toronto")
temp <- c(35,88,42,84,81,30)
#convert temp into celsius and overwrite the original values
temp <- (5/9)*(temp-32)
city_temps <- data.frame(name=city,temperature=temp)
city_temps

#vectorized operations
x <- seq(1,100)
sum(1/x^2)

library(dslabs)
data(murders)
murder_rate <- murders$total / murders$population * 100000
mean(murder_rate)
