library(tidyverse)
penguins |> filter(species == "Gentoo")
buggy <- function(x){
  x<- as.character(x)
  log(x)
}

g <- function(x)buggy(x)
buggy(1)
g(1)
