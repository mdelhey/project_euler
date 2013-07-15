# Project Euler - Problem 7

is.prime <- function(x) {
  for (i in 2:sqrt(x)) {
    if (x %% i == 0) {
      print(FALSE)
      break
    }
  }
  print(TRUE)
}

n <- 1
for (i in 10001) {
  if (is.prime(n) == TRUE) {
    print(n)
    } else {
      n <- n + 1
    }
}