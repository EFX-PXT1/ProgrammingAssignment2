# Test the cachemean functions
# 
# Author: Paul
###############################################################################

setwd("C:/Projects/ProgrammingAssignment2")
source("cachemean.R")

## Create our object with functions
o = makeVector()

## Supply our vector of test data
o$set(c(1,3,5,7))

## Compute the mean (expected 4)
cachemean(o)

## Compute the mean again (expecting to see 'getting cached data')
cachemean(o)
