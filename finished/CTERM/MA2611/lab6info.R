## Study the difference of the mean chicken weight, diet 2 vs. diet 3, at day 2 since birth
w1 = ChickWeight[ChickWeight$Diet == 2 & ChickWeight$Time == 2, 1];
w2 = ChickWeight[ChickWeight$Diet == 3 & ChickWeight$Time == 2, 1];

## Calculation by formula: calculate the 95% confidence interval
y1 = mean(w1);
y2 = mean(w2);

s1 = sd(w1);
s2 = sd(w2);

n1 = length(w1);
n2 = length(w2);

sp = sqrt(((n1-1)*s1^2 + (n2-1) * s2^2) / (n1 + n2 - 2)); # The "pooled" estimate of sigma
sp;

SE = sp * sqrt(1/n1 + 1/n2); # Standard error for the difference of sample means.
SE;

tscore = qt(0.975, df = n1 + n2 - 2);

(y1 - y2) - tscore * SE;

(y1 - y2) + tscore * SE;

tstat = (y1 - y2)/ SE;
tstat;

2 * (1 - pt(abs(tstat), n1 + n2 - 2)); # Two-side p-value

## A simple function to get C.I and t-test
t.test(w1, e2, var.equal = T);

## Study the difference of the mean chicken weight, diet 2 vs diet 3 at day 2 since birth:
## (Different Standard Deviations)
SE1 = s1/sqrt(n1);
SE2 = s2/sqrt(n2);

SE = sqrt(SE1^2 + SE2^2);
SE;

v = (SE1^2 + SE2^2)^2/(SE1^4/(n1-1) + SE2^4/(n2-1));
v;

tscore = qt(0.025, df = v, lower.tail = F);

(y1-y2) - tscore * SE; # Lower bound of 90% C.I.

(y1-y2) + tscore * SE; # Upper bound of 90% C.I.

tstat = (y1 - y2)/ SE;
tstat;

2 * (1 - pt(abs(tstat), v)); # Two-side p-value

### By t.test function: Get C.I/
t.test(w1, w2);