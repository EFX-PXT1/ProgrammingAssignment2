# Trivial script to test makeCacheMatrix
# 
# Author: Paul
###############################################################################

setwd("C:/Projects/ProgrammingAssignment2")
source("cachematrix.R")

## Initial Matrix:
##       [,1]  [,2]
## [1,]  1.00 -0.25
## [2,]  0.75  1.00
x = rbind(c(1, -0.25), c(0.75, 1))
m = makeCacheMatrix(x)
m$get()

## Solve first run
r <- cacheSolve(m)

## Test Result is identity
x %*% r

## Solve again, displaying 'getting cached data'
r <- cacheSolve(m)

## Again Test Result is identity
x %*% r

