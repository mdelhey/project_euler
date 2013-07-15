# Project Euler - Problem 4
# A palindromic number reads the same both ways. The largest palindrome made
# from the product of two 2-digit numbers is 9009 = 91 * 99.
# Find the largest palindrome made from the product of two 3-digit numbers.
library(stringr)

flip <- function(x) {
  x <- str_split(x, "")[[1]][-1]
  flipped <- as.numeric(str_c(x[length(x):1], collapse = ""))
  return(flipped)
}

is.pal <- function(x) {
  if (x == flip(x)) {
    return(TRUE)
  }
  else {
    return(FALSE)
  }
}

max <- 0
product <- 0
for(i in 999:100) {
  for (j in i:100) {
    product <- i * j
    if (is.pal(product) == TRUE && product > max) {
      max <- product
      print(max)
    }
  }
} 