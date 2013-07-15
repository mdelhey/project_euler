# Project Euler - Problem 2
# Each new term in the Fibonacci sequence is generated by adding the previous two terms.
# By starting with 1 and 2, the first 10 terms will be:
# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
# By considering the terms in the Fibonacci sequence whose values do not
# exceed four million, find the sum of the even-valued terms.

# Create the Fibonacci sequence
fib = range(2) # create the vector & set the first two terms
i = 3 # set our index variable to 3

repeat {
  fib[i] <- fib[i - 1] + fib[i - 2]
  if (fib[i] > 4000000) {
    break
  }
  else {
    i <- i + 1
  }
}

# Subset to only even value terms
fib <- fib[(fib %% 2) == 0]

# Sum the sequence
sum(fib)