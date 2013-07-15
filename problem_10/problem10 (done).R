# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# Find the sum of all the primes below two million.

# Answer: 142913828922

# doesn't work for 2
is_prime <- function(x) {
  for (i in 2:sqrt(x)) {
    if (x %% i == 0) {
      return(FALSE)
      break
    }
  }
  return(TRUE)
}

primes <- 0
index <- 0
for (i in 1:2000000) {
  if (is_prime(i)) {
    index <- index + 1
    primes[index] <- i 
  }
}

# we didn't include 2 in our primes
sum(primes) + 2