# Up and Running with R
# Ex03_04
# Calculating frequencies

# Uses data set 'social_network.csv' which records the gender anda age of 202 online
# survey respondents along with their preferred social networking site and an estimate
# of how many times they log in per week

# Create data frame 'sn' from CSV file w/headers
sn <- read.csv("social_network.csv", header = T)

# start with statistics for categorical variables

table(sn$Site)               # creates frequency table in alphabetical order
site.freq <- table(sn$Site)  # saves table, in the data frame site.freq
site.freq                    # print table

site.freq <- site.freq[order(site.freq, decreasing = T)]   # sort table
site.freq                                                  # print table

prop.table(site.freq)             # givrn proportions of total
round(prop.table(site.freq), 2)   # give proportions to 2 decimal places
