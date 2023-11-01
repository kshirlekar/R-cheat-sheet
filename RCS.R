# Easy coding hacks in R

# Install and load a package in R, not sure whether it is installed or not?
# This is specifically useful when you are creating an RMD file which will be 
# executed on multiple machines
install.packages("pacman")
library(pacman)
pacman::p_load(package_name)

packages <- c("ggplot2", "lubridate")
package.check <- lapply(
  packages,
  FUN = function(x) {
    if (!require(x, character.only = TRUE)) {
      install.packages(x, dependencies = TRUE)
      library(x, character.only = TRUE)
    }
  }
)

# This will only load packages that are available and not throw and error
# if a package is not installed. 
lapply(packages, require, character.only = T)