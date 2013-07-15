# Project Euler - Problem 5
# 2520 is the smallest number that can be divided by each of the
# numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible
# by all of the numbers from 1 to 20?

# 232792560

counter <- 0
number <- 2520
going <- 1
while (going == 1) {
  counter <- 0
  for (i in 20:1) {
    if (number %% i != 0) {
      number <- number + 1
      break
    }
    else {
      counter <- 1 + counter
      if (counter == 20) {
        print(number)
        break
      }
    }
  }
}