vector <- c(3,4,12,NA,1)
vector
library(raster)
r <- raster(nrow=20,ncol=20)
plot(r)

randomVector <- rnorm(n=20)
randomVector

data(cars)  ## existing dataset
plot(cars)

library(sp)
data(meuse.grid)
?data
?meuse.grid
data(meuse.grid)                                               ### example taken from info. 
coordinates(meuse.grid) = ~x+y
proj4string(meuse.grid) <- CRS("+init=epsg:28992")
gridded(meuse.grid) = TRUE
spplot(meuse.grid)


vector <- c(1,2,3,4,6,5,3,4,1,8,9,4,1,3,4)
vector[vector == 3] <- NA
vector[vector == 4] <- NA
vector
vector[is.na(vector)] <- 4

vector[vector %in% c(3,4)] <- NA                               ## replace all 3, and 4, by NA 
vector

Hello <- function(name){
  if(is.character(name)){
    out <- paste("Hello", name, "!")
  } else if(is.numeric(name)) {
    out <- paste("Hello", name, "!")
    warning("object of class character expected")
  } else { 
  stop("object of class character expected")
  }
  return(out)
}
Hello("Niene")
Hello(5)
Hello(r)

square <- function(x){
  out <- x * x
  return(out)
}
list <- list (1,2,3,4,5)
out <- c()
for(i in 1:length(list)){
  out[i] <- square(list[[i]])
}

out

list2 <- list(1,4,3,"wageningen",4,5)
for(i in 1:length(list2)){
  out[i] <- square(list2[[i]])
}

out

?try
hello
