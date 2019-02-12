# Up and Running with R
# Ex03_03
# Creating box plots for quantitative variables

# Uses data set 'social_network.csv' which records the gender anda age of 202 online
# survey respondents along with their preferred social networking site and an estimate
# of how many times they log in per week

# Create data frame 'sn' from CSV file w/headers
sn <- read.csv("social_network.csv", header = T)

# Make boxplots of Age and Times using the defaults - like for histogram boxplot
# doesn't require any pre-processing of the data as was necessary with the bar chart
boxplot(sn$Age)
# the thick line is the median age with ages ranging from less that 10 to nearly 70

# Add title, colour etc.
boxplot(sn$Age,
        col = "beige",
        notch = T,            # the notch gives a confidence interval on the median
        horizontal = T,
        main = "Ages of Respondents\nSocial Networking Survey of 202 Users",    # chart title
        xlab = "Age of Respondents")
# we could create box plots for men vs women or segmented by the different social newtworking site preference

boxplot(sn$Times,
        col = "beige",
        notch = T,            # the notch gives a confidence interval on the median
        horizontal = T,
        main = "Social Networking Survey of 202 Users",    # chart title
        xlab = "Frequency of visits")
