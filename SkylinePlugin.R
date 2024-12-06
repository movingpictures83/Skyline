library(lipidr)
library(ggplot2)

dyn.load(paste("RPluMA", .Platform$dynlib.ext, sep=""))
source("RPluMA.R")


input <- function(inputfile) {
       pfix = prefix()
  if (length(pfix) != 0) {
     pfix <- paste(pfix, "/", sep="")
  }
filelist <<- list.files(pfix, "data.csv", full.names = TRUE) # all csv files
  
}
run <- function() {}

output <- function(outputfile) {

d = read_skyline(filelist)
saveRDS(d, outputfile)
}

