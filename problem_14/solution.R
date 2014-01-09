collatz <- function(x, count = 0) {
    count <- count+1
    if (x == 1) {
        return(count)
    }
    if (x%%2 == 0) {  # even
        x <- x/2
    }
    else {  # odd
        x <- 3*x+1
    }
    collatz(x, count)
}

# Full search
max_n <- 1000000
c <- rep(NA, max_n)
for (i in 1:max_n) {
    c[i] <- collatz(i)
}
which(c == max(c))
