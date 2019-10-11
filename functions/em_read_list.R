
# Emma Rand
# Function that reads in several files at a time either in to a list of data frames or stacked in to a single data frame
# You need to supply:
#    list of datasets 
#    function to read in the datasets for example to read in .csv files, you could use read.csv()
#    whether or not to read in to a single dataframe.


em_read_list <- function(directory, dfsingle){
  names<-list.files(path=directory)
  number <- length(names)
  if(dfsingle == TRUE){
    dat <- do.call("rbind", lapply(paste0(directory,"/",names[1:number]), function(x) read.csv(x,header =TRUE)))
   
  } else {
    dat <- lapply(paste0(directory,"/",names[1:number]), function(x) read.csv(x,header =TRUE))
  }
  return(dat)
}


