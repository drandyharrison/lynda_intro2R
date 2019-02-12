# Up and Running with R
# Ex03_01
# Creating bar charts for categorical variables

# Uses data set 'social_network.csv' which records the gender anda age of 202 online
# survey respondents along with their preferred social networking site and an estimate
# of how many times they log in per week

# Create data frame 'sn' from CSV file with headers
sn <- read.csv("social_network.csv", header = T)

# R doesn't create bar charts directly from the categorical variables; instead, we must
# first create a table that has the frequencies for each level of the variable. The
# 'table' function is able to create this table from the variable, which we specify as
# sn$Site. That is, we first give the name of the data frame then $ then the name of the
# variable. (Following Google's style guide, it is better to state explicitly the data
# frame name than to use the shortcut function "attach", which can lead to confusion.)
site.freq <- table(sn$Site)   # Creates table from Site

barplot(site.freq)            # Creates (default) barplot in new window
? barplot                     # For more information on customising the graph

# To put the bars ion descending order, add 'order'
barplot(site.freq[order(site.freq, decreasing = T)])

# Draw the bars horizontally (but turn off decreasing)
barplot(site.freq[order(site.freq)], horiz = T)

# Make Facebook blue and all others gray by specifying a vector with named colours for
# grey and RGB for Facebook blue fbba = "Facebook blue/ascending" for horizontal bars
# And now breaking code across lines for clarity - rep() = repeat
fbba <- c(rep("gray", 5),
          rgb(59, 89, 152, maxColorValue = 255))

barplot(site.freq[order(site.freq)],
        horiz = T,
        col = fbba)

# Turn off borders with "border = NA"
# Add title with "main" with "\n" to break line
# Add sub-titles with "sub"
barplot(site.freq[order(site.freq)],
        horiz = T,                    # horizontal
        col = fbba,                   # use colours "fbba"
        border = NA,                  # no borders (on bars)
        xlim = c(0, 100),             # scale from 0 - 100
        main = "Preferred Social Networking site\nA Survey of 202 users",
        sub = "No. users")

# immense amount of control available through 'par {graphics}

# RStudio gives options for saving as image file in several formats and it's easier 
# to change sizes - using the Export menu on the plot