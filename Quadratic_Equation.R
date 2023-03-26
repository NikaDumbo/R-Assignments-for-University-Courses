# Quadratic Equation

kvg <- function(a,b,c){
  if(a == 0)
    return(paste0("It's not a quadratic equation"))
  
  print(paste0("Gantoleba: ", a, "x^2 + ", b, "x + ", c, "."))
  discriminant <- (b^2) - (4*a*c)
  
  if(discriminant < 0) {
    re <- -b/(2*a)
    im <- round((sqrt(abs(discriminant)))/(2*a), 5)

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

kvg(1, 7, 5)

kvg(2, 4, 2)

kvg(1, 1, 5)
