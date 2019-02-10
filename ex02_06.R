# up and running with R
# Ex02_06

# Lists of packages
# open CRAN task views in browser
browseURL("http://cran.r-project.org/web/views")
# opens "available CRAN packages by name" (from UCLA mirror)
browseURL("http://cran.stat.ucla.edu/web/packages/available_packages_by_name.html")
library() # bring up editor list of available packages
search()  # shows packages that are currently active

# to install and use packages
# can use Tools > Install Package
# can use Packages window
# or can use scripts

# download a packaage from the CRAN repo and install in R
install.packages("psych")
# Make package available: preferred for loading scripts
library("psych")
# preferred for loading in functions abd packages
require("psych")
# brings up documentation in editor window
library(help = "psych")

# Vignettes
# brings up list of vignettes (examples) in editor window
vignette(package = "psych")
# open web page with hyperlinks for vignette PDFs etc.
browseVignettes(package = "psych")
vignette()        # brings up a list of all vignettes (in all installed packages)
browseVignettes() # HTML for all vignettes

# Update packages
# In RStudio, Tools > Check for Package Updates
update.packages() # checks for updates; do periodically


# Removing packages
# By default, all installed packages are removed when R quits
# Can also manually uncheck in Packages window
# ot use this code
detach("package:psych", unload=TRUE)
