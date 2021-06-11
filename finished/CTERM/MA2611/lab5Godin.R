# Liam Godin
# Lab 5 Exercise
# 3 - 5 - 21

# Consider chick weights in Diet 2 group at day 4 since birth
# Retrieve the data.
Dat = ChickWeight[ ChickWeight$Diet == 2 & ChickWeight$Time == 4, ];
Dat;

# Use formula to calculate the 90% C.I for the mean weight for all
# chicks in Diet 2 group at day 4 since birth
weight = Dat$weight;
sampleMean = mean(weight);
sampleSD = sd(weight);
sampleSize = length(weight);
SE = sampleSD/sqrt(sampleSize);
tscore = qt(0.95, df = (sampleSize-1));
CI.lower = sampleMean - tscore * SE; # Lower bound of the C.I.
CI.lower; # output the lower bound of the C.I.
CI.upper = sampleMean + tscore * SE; # Upper bound of the C.I.
CI.upper; # output the upper bound of the C.I.

sprintf("90%% confidence interval: %f %s %s %s %f", CI.lower, "\u2264", "\u03BC", "\u2264", CI.upper);

# Use function t.test to calculate the 90% C.I. for the mean weight
# for all chicks in Diet 2 group at day 4 since birth.
t.test(weight, conf.level = .9);

# Consider the weights of the seeds of princess bean in the population
# follow a normal distribution with mean = 500 mg and SD = 120 mg.
# Simulate 10,000 C.I.s at the 90% confidence level. Get the empirical 
# percentage of these C.I.s that would cover the true value of mu = 500.

sampleN = 10000; # Num random samples
CIs = array ( NA, dim = c (sampleN, 2)); # Matrix storing bounds of CIs

for ( i in 1 : sampleN ) {
    
    Sample = rnorm ( 4, mean = 500, sd = 120 );
    sampleMean = mean ( Sample );
    sampleSD = sd ( Sample );
    sampleSize = length ( Sample );
    SE = sampleSD / sqrt ( sampleSize - 1 );
    tscore = qt ( 0.95, df = ( sampleSize - 1 ));
    CI.lower = sampleMean - tscore * SE; # Lower bound of current C.I.
    CI.upper = sampleMean + tscore * SE; # Upper bound of current C.I.
    
    CIs [ i, ] = c ( CI.lower, CI.upper );
    
}
# Get the empirical percentage of these C.I.s that would cover the true value of mu = 500
perc = mean ( ( CIs[ , 1] <= 500 ) & ( 500 <= CIs [ , 2 ] ) ) * 100;

sprintf("Percentage of C.I.s covering %s = 500: %.2f", "\u03BC", perc);