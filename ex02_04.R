# Up and running with R
# Ex02_04

x <- 0:10 # assigns integers 0 through 10 to x
x # prints contents of x

y <- c(5, 4, 1, 6, 7, 2, 2, 3, 2, 8) # assigns values to y
y # prints the contents of y

ls() # lists all objects

# CSV files
# R converts missing to NA
# don't need to specify delimiters for missing values, as comma-separated
# 'header = T' means the first line is a header
# for paths to work (in Windows) either use double back slash ("\\") or forward slash ("/")
# sn is a dataframe (like a matrix but columns can be different types)
# the . in sn.csv is a word separator as per the Google style guide
sn.csv <- read.csv("./social_network.csv", header = T)

str(sn.csv) # str = structure of
