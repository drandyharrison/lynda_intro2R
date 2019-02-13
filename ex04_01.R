# Up and Running with R
# Ex04_01
# Recoding variables

# Uses data set 'social_network.csv' which records the gender anda age of 202 online
# survey respondents along with their preferred social networking site and an estimate
# of how many times they log in per week

# Create data frame 'sn' from CSV file w/headers
sn <- read.csv("social_network.csv", header = T)

# install and load psych package
install.packages('psych')
library('psych')

# original variable Times
hist(sn$Times, col = "beige")
describe(sn$Times)

# z-scores (or standardised scores - measures how many standard deviations above or below the mean)
# use built-in function 'scale'
times.z <- scale(sn$Times)
hist(times.z, col = "beige")
describe(times.z)            # look at the skewness - a normal distribution has a skewness of zero
                             # kurtowsis is affected by outliers - again for a normal distribution this is zero

# log - useful for outliers on the high end of values
times.ln0 <- log(sn$Times)
hist(times.ln0, col = "beige")
describe(times.ln0)
# add one to avoid undefined logs for 0 Times (workaround)
times.ln1 <- log(1 + sn$Times)
hist(times.ln1, col = "beige")
describe(times.ln1)          # much lower skewness and kurtosis

# ranking
times.rank <- rank(sn$Times)
hist(times.rank, col = "beige")    # this should be a flat distribution, but there are a lot of tied values
describe(times.rank)
# ties.method = c("average", "first", "random", "max", "min")
times.rankr <- rank(sn$Times, ties.method = "random")
hist(times.rankr, col= "beige")
describe(times.rankr)

# dichotomising - use this wisely and purposefully!
time.gt1 <- ifelse(sn$Times > 1, 1, 0)
time.gt1
