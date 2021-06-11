?qt
pt (-1, df=2);

pt(1, df = 2) - pt(-1, df = 2);

qt(0.975, df = 2);

x = seq ( -3, 3, by = 0.1 );
plot( x, dt( x, df = 2 ), type = "l");

?ChickWeight; # Description on the data CHickWeight
head(ChickWeight) # Check the data components

# Let's focus on chick weights in Diet 1 group at day 2 since birth
Dat = ChickWeight[ ChickWeight$Diet == 1 & ChickWeight$Time == 2, ];
Dat;

# Use formula to calculate the 95% C.I for the mean weight for all
# chicks in Diet 1 group at day 2 since birth

weight = Dat$weight;
sampleMean = mean(weight);
sampleSD = sd(weight);
sampleSize = length(weight);
SE = sampleSD/sqrt(sampleSize);
tscore = qt(0.95, df = (sampleSize-1));
CI.lower = sampleMean - tscore * SE; # Lower bound of the C.I.
#CI.lower;

CI.upper = sampleMean + tscore * SE; # Upper bound of the C.I.
#CI.upper;

# Get the 95% C.I. by t.test function
t.test(weight, conf.level = .9);# Check the result "95 percent confidence interval."
CI.lower;
CI.upper;
?t.test;




# Data points to all chicks in Diet 2 group on day 4 since birth

sampleN = 10000;
#Number of random samples
CIs = array(NA, dim = c(sampleN, 2)); #Matrix storing the lower and upper bounds of the CIs.
for(i in 1 : sampleN){
    Sample = rnorm(4, mean=500, sd=120); #Random samples of size 4, from N(500, 120^2);
    sampleMean = mean(Sample);
    sampleSD = sd(Sample);
    sampleSize = length(Sample);
    SE = sampleSD / sqrt(sampleSize);
    tscore =qt(0.95, df = (sampleSize - 1));
    CI.lower = sampleMean - tscore * SE;#Lower bound of the C.I.
    CI.upper = sampleMean + tscore * SE;#Lower bound of the C.I.
    CIs[i, ] = c(CI.lower, CI.upper);
}#Get the empirical percentage of these C.I.s that would cover the true value of $\mu =500$?
mean( (CIs[, 1]<=500)&(500<=CIs[, 2]) );

