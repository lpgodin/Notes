# Liam Godin
# MA 2611 Lab 3 Exercise

# 0.
Y ~ binomial(8, 0.5)

# P(3 <= Y < 6)
choose(8,3)*(0.5)^3*(0.5)^5 + 
    choose(8,4)*(0.5)^4*(0.5)^4 +
    choose(8,5)*(0.5)^5*(0.5)^3 +
    choose(8,6)*(0.5)^6*(0.5)^2

8 * (0.5) # E(Y)

8 * (0.5) * (0.5) # Var(Y)

# 1.
X ~ N(0,1)
Y ~ N(1,4)

# P(1 <= X < 2) Z table
0.97725 - 0.84134

# P(1 <= X < 2)
pnorm(2) - pnorm(1)

# P(1 <= Y < 2)
pnorm(2, mean = 1, sd = sqrt(4)) - pnorm(1, mean = 1, sd = sqrt(4))

qnorm(0.25) # 25th Percentile of X

qnorm(0.25)*sqrt(4) + 1 # 25th Percentile of Y

# 2.
S ~ N(500, 120)

# Probability that one randomly sampled seed is between 490 - 525mg
pnorm(525, mean = 500, sd=sqrt(120)) - pnorm(490, mean = 500, sd = sqrt(120))

qnorm(0.8, mean=500, sd=sqrt(120)) # 80th Percentile of princess bean weights