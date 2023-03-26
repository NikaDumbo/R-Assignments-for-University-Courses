# Quantitative research
# User Methods

# Find vector size
vectorSize <- function(v){
  return (sqrt(sum(v * v)))
}

# Find vector elements lenght
vectorLenght <- function(v){
  res <- 0
  for (i in v){
    res = res + 1
  }
  return(res)
}

# Find vector AVG
vectorAVG <- function(v){
  s = 0
  n = 0
  for (i in v){
    s = s + i
    n = n + 1
  }
  return(s/n)
}

# Find vector min element
vectorMin <- function(v)
{
  n <- vectorLenght(v)
  for (i in 1 : (n - 1)) {
    for (j in 1 : (n - i)) {
      if (v[j] > v[j + 1]) {
        temp <- v[j]
        v[j] <- v[j + 1]
        v[j + 1] <- temp
      }
    }
  }
  return(v[1])
}

# Find vector max element
vectorMax <- function(v)
{
  n <- vectorLenght(v)
  for (i in 1 : (n - 1)) {
    for (j in 1 : (n - i)) {
      if (v[j] < v[j + 1]) {
        temp <- v[j]
        v[j] <- v[j + 1]
        v[j + 1] <- temp
      }
    }
  }
  return(v[1])
}

# Find vector median
vectorMedian <- function(v) {
  v <- sort(v)
  n <- length(v)  
  if (n %% 2 == 0) {
    median <- (v[n/2] + v[(n/2)+1])/2
  } else {
    median <- v[(n+1)/2]
  }
  return(median)
}

v <- c(9, 10, 12, 13, 13, 13, 15, 15, 16, 16, 18, 22, 23, 24, 24, 25)

paste0("Vector size: ", vectorSize(v))
paste0("Vector lenght: ", vectorLenght(v))
paste0("Vector mean: ", vectorAVG(v))
paste0("Vector Min: ", vectorMin(v))
paste0("Vector Max: ", vectorMax(v))
paste0("Vector Median: ", vectorMedian(v))
