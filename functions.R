kvg <- function(a,b,c){
  print(paste0("Gantoleba: ", a, "x^2 + ", b, "x + ", c, "."))
  discriminant <- (b^2) - (4*a*c)
  
  if(discriminant < 0) {
    re <- -b/(2*a)
    im <- (sqrt(abs(discriminant)))/(2*a)
    return(paste0("X1= ", complex(real = re, imaginary = im), " X2= ",
                  complex(real = re, imaginary = -im)))
  }
  else if(discriminant > 0) {
    x_int_plus <- (-b + sqrt(discriminant)) / (2*a)
    x_int_neg <- (-b - sqrt(discriminant)) / (2*a)
    
    return(paste0("X1= ",
                  format(round(x_int_plus, 5), nsmall = 5), " X2= ",
                  format(round(x_int_neg, 5), nsmall = 5), "."))
  }
  else 
    x_int <- (-b) / (2*a)
  return(paste0("X= ", x_int))
}

sigrdze <- function(v){
  res <- 0
  for (i in v){
    res = res + 1
  }
  return(res)
}

sashualo <- function(v){
  s = 0
  n = 0
  for (i in v){
    s = s + i
    n = n + 1
  }
  return(s/n)
}

v <- c(1,2,3,4,5,6,7,8,9)

