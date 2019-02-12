# Up and Running with R
# Ex03_02
# Creating histograms for quantitative variables

# Uses data set 'social_network.csv' which records the gender anda age of 202 online
# survey respondents along with their preferred social networking site and an estimate
# of how many times they log in per week

# Create data frame 'sn' from CSV file w/headers
sn <- read.csv("social_network.csv", header = T)

# make histogram of Age using defaults
hist(sn$Age)

# add title, colours etc.
hist(sn$Age,
     #border = NA,    # removing borders looks silly
     col = "beige",   # or use: col = colors() [18] - [18] indexes the colour set colors()
     main = "Ages of Respondents\nSocial Networking Survey of 202 Users",    # chart title
     xlab = "Age of Respondents")

# light colours like light beiges or yellows are good at getting people's attention without overwhelming them
# colours in R are numbered 1 to 657, beige is 18

# A chart of R's colour palette can be found at http://www.stat.columbia.edu/~tzheng/files/Rcolor.pdf or
# http://research.stowers.org/mcm/efg/R/Color/Chart/ which gives the numbers, anmes, rgb and hex code for 
# the colours in a downloadable pdf. To get the names of colours use
colors() [18]               # which will output [1] "beige"
colours()[c(552, 254,26)]   # gives [1] "red" "green" "blue"
