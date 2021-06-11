### Liam Godin
### Lab 6 Exercise
### 3-12-21

## 1. Study the difference of the mean chicken weight, diet 2 vs. diet 3, at day 4 since birth. Assume EQUAL sd

w1 = ChickWeight[ChickWeight$Diet == 2 & ChickWeight$Time == 4, 1];
w2 = ChickWeight[ChickWeight$Diet == 3 & ChickWeight$Time == 4, 1];

## Calculation by formula: calculate the 95% confidence interval

# sample mean of groups 1 & 2;
y1 = mean(w1); 
y2 = mean(w2); 

# sample sd
s1 = sd(w1); 
s2 = sd(w2);

# sample size
n1 = length(w1); 
n2 = length(w2);

# The "pooled" estimate of sigma
sp = sqrt(((n1-1)*s1^2 + (n2-1) * s2^2) / (n1 + n2 - 2)); 
sp;

# Standard error for the difference of sample means.
SE = sp * sqrt(1/n1 + 1/n2); 
SE;

# The t-score critical value with lower tail probability 0.975
tscore = qt(0.95, df = n1 + n2 - 2); 

# Lower and upper bounds of 90% C.I.
(y1 - y2) - tscore * SE; 
(y1 - y2) + tscore * SE; 

# t test statistic
tstat = (y1 - y2)/ SE; 
tstat;

# Two-side p-value
2 * (1 - pt(abs(tstat), n1 + n2 - 2)); 

## A simple function to get C.I and t-test
t.test(w1, w2, var.equal = T, conf.level = 0.9);

### Exercise 2

## 2. Study the difference of the mean chicken weight, diet 2 vs diet 3 at day 4 since birth:
## (Different Standard Deviations)

# Standard error of sample mean of groups 1 & 2
SE1 = s1/sqrt(n1);
SE2 = s2/sqrt(n2);

# Standard error for the difference of sample means
SE = sqrt(SE1^2 + SE2^2); 
SE;

# The degrees of freedom of the t-distribution
v = (SE1^2 + SE2^2)^2/(SE1^4/(n1-1) + SE2^4/(n2-1)); 
v;

# The t-score with upper tail probability at 0.05
tscore = qt(0.05, df = v, lower.tail = F); 

# Upper and lower bounds of 90% C.I.
(y1-y2) - tscore * SE;
(y1-y2) + tscore * SE;

## Test statistics and p-values
tstat = (y1 - y2)/ SE;
tstat;

# Two-side p-value
2 * (1 - pt(abs(tstat), v)); 

## By t.test function: Get C.I.
t.test(w1, w2, conf.level = 0.9);
