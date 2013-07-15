# 2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.
# What is the sum of the digits of the number 2^1000?

# Answer: 1366

# Disable scientific notation
options(scipen=999)

# stringr for string splitting
library(stringr)

power <- 2^1000
digits <- toString(power)
sum(as.numeric(str_split(digits, '')[[1]][-1]))