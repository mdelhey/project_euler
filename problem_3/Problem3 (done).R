# Project Euler - Problem 3
# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?
library(gmp)
largest.prime <- function(x) {
  i <- trunc(sqrt(x))
  while (i != 0) {
    if (x %% i == 0) {
      if (isprime(i, reps = 5) == 2) {
        print(i)
        break
      }
    }
    i <- i - 1
    }
}