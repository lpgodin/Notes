frequencies = c(108,34,40);
barplot(frequencies, names.arg=c("red", "pink", "white"))

relativeFreq <- frequences/sum(frequencies)
barplot(relativeFreq, names.arg=c("red", "pink", "white"))

pi(relativeFreq, labels = c("red", "pink", "white"), main = "Pie CHart of Poinsettias Color")

?ChickWeight

names(ChickWeight)
nrow(ChickWeight)
ncol(ChickWeight)
head(ChickWeight)

ChickWeight$weight[1:10]

hist(ChickWeight$weight);

?cars

hist(cars$speed)

counts <- table(cars$speed)
barplot(counts)

time <- cars$dist/cars$speed

cars <- cbind(cars,time)
head(cars)

plot(cars$speed, cars$time)

min(cars$speed)
max(cars$speed)

var(cars$speed)
sd(cars$speed)

mean(cars$speed)
median(cars$speed)

quantile(cars$speed)
quantile(cars$speed, prob = 0.25)

cov(cars$speed, cars$time)
cov(cars$dist, cars$time)
