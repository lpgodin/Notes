x=5
y=5
x+y
5
5^3

pi

c(3,4,5)

a=c(3,4,5)
b=c(1,2,3,4,5,6)

ls()
a
rm(x)
ls()

b[2]
b[5]
b[c(2,5)]
b[c(2,5,6)]

#matrix
c=matrix(c(1,2,3,4,5,6), nrow = 2, ncol = 3)
c
d=matrix(c(1,2,3,4,5,6), nrow=2, ncol=3, byrow = TRUE)
d

# Use R to check how to use a function
?matrix()

d[2,3] # The value at 2,3 in matrix d is 6
d[1,]
d[,1]
d[,c(2,3)] # check second and third columns of d

# function
mean() # mean of data
sample() # Take samples from data
f=
    function(x){
        y = x^3 + x^2 + x + 10
        return (y)
    }

f(1)
f(100)
x = 1:6
f(x)

# Function to approximate derivative
derivf = 
    function(x){
        (f(x + 0.001) - f(x)) / 0.001
    }

derivf(x)

?sample()
?seq()
