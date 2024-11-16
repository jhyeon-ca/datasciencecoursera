pollutantmean <- function(directory, pollutant, id = 1:332) {
    # Get full path of the specsdata folder
    directory <- paste(getwd(),"/",directory,"/",sep="")
    
    # Aux variables
    file_list <- list.files(directory)
    data <- NA
    #For each id passed as parameter:
    for (i in id) {
        #Read the file,
        file_dir <- paste(directory,file_list[i],sep="")
        file_data <- read.csv(file_dir)
        
        # accumulate the data
        data <- rbind(data,file_data)
    }
    # Calculate the mean and return it
    mean(data[[pollutant]],na.rm = TRUE)
}
