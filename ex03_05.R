# Up and Running with R
# Ex03_05
# Calculating descriptives

# Uses data set 'social_network.csv' which records the gender anda age of 202 online
# survey respondents along with their preferred social networking site and an estimate
# of how many times they log in per week

# Create data frame 'sn' from CSV file w/headers
sn <- read.csv("social_network.csv", header = T)

# looking at common and not so common statistics for descriptive variables using R's built
# in functions and some from packages

summary(sn$Age)     # summary for one variable
summary(sn)         # summary for whole table (inc. categories)

# Tukey's five-number summary: minimum, lower-hinge (i.e. first quartile), median, upper-hinge
# (i.e. third quartile), maximum - doesn't print labels
fivenum(sn$Age)

# Alternative descriptive statistics
# Gives n, mean, standard deviation, median, trimmed mean (10% by default), median absolute
# deviation from median (MAD), min, max, range, skew, kurtosis and standard error
# Options for listwise deletion of missing data, amount of trimming etc.
# Note: converts categories to sequential numbers and does stats - can be useful in certain
# situations - marks categoricals with *
install.packages('psych')    # install
library('psych')             # load
describe(sn)
