# Up and Running with R
# Ex04_02
# Computing new variables

# Create variable n1 with 1m random normal values
n = 1000000
n1 <- rnorm(n)
hist(n1, col = "blue")

# Create variable n2 with 1m random normal values
n2 <- rnorm(n)
hist(n2, col = "green")

# Average scores across two variables
n.add <- n1 + n2
hist(n.add, col = "purple")

# Multiply scores across two variables
n.mult <- n1 * n2
hist(n.mult, col = "cyan")

# install and load 'psych' package
install.packages('psych')
library('psych')

kurtosi(n1)      # -0.0012
kurtosi(n2)      # -0.0052
kurtosi(n.add)   # -0.0014
kurtosi(n.mult)  #  6.0381
