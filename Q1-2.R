firstAlgo <- function(n) {
  return(100*n^2)
}

secondAlgo <- function(n) {
  return(2^n)
}


n <- 1

while(firstAlgo(n) > secondAlgo(n)) {
  n <- n + 1
}

print(n)