poisson <- function(){
  
  
  r <- readline("Enter the rate of the Poisson distribution to be generated: ")
  r <- as.double(r)
  
  j <- 0
  p <- exp(-r)
  f <- p
  u <- runif(1)
  
  while (u > f){
    
    p <- (r * p) / (j+1);
    f <- f+p;
    j <- j+1;
  }
  
  x <- j
  
  print(paste("The generated Poisson random variable with rate", r , "is:" , x))
 
}

poisson()
