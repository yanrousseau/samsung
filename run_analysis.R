################################################################################
# This function combines data files collected from Samsung Galaxy X smartphones
# and aggregates data by activity (walking, walking upstairs, walking
# downstairs, sitting, standing, or laying) and by subject (30 participants
# took part in data collection). A tidy file is returned in the same directory
# as the input data. The script must be placed in the working directory, which
# also contains data files.
# Library required : dplyr
# Author           : Yannick Rousseau
# Date             : 2016-04-08
################################################################################

run_analysis <- function() {

    # Set working directory.
    library(dplyr)

    # Read data files.
    datFeatures <- read.table("features.txt", header=FALSE,
                       stringsAsFactors=FALSE)
    datAct      <- read.table("activity_labels.txt", header=FALSE,
                       stringsAsFactors=FALSE)
    datTrainY   <- read.table("train\\Y_train.txt", header=FALSE,
                       stringsAsFactors=FALSE)
    datTrainS   <- read.table("train\\subject_train.txt", header=FALSE,
                       stringsAsFactors=FALSE)
    datTrainX   <- read.table("train\\X_train.txt", strip.white=TRUE,
                       header=FALSE, stringsAsFactors=FALSE)
    datTestY    <- read.table("test\\Y_test.txt", header=FALSE,
                       stringsAsFactors=FALSE)
    datTestS    <- read.table("test\\subject_test.txt", header=FALSE,
                       stringsAsFactors=FALSE)    
    datTestX    <- read.table("test\\X_test.txt", strip.white=TRUE,
                       header=FALSE, stringsAsFactors=FALSE)
    
    # 1. Merge the training and test sets (Y and X) into a single data set, for
    #    the Y and X sets.
    datTTY <- rbind(datTrainY, datTestY)
    datTTS <- rbind(datTrainS, datTestS)
    datTTX <- rbind(datTrainX, datTestX)
    datTT  <- cbind(datTTY, datTTS, datTTX)
    dfTT   <- data.frame(datTT)
    
    # 2. Select the data corresponding to mean and standard deviation variables.
    idxMSD  <- c(1, 2, grep("mean|std",datFeatures[,2])+2)
    dfTTMSD <- select(dfTT, idxMSD)

    # 3. Name activities in the data set.
    dfTTMSD[,1] <- datAct[dfTTMSD[,1],2]
    
    # 4. Provide descriptive variable names while removing unnecessary
    #    characters.
    datNames       <- c("Activity", "Subject", datFeatures[,2])
    datNames       <- gsub("\\(","",datNames)
    datNames       <- gsub("\\)","",datNames)
    names(dfTTMSD) <- datNames[idxMSD]
        
    # 5. Create an independent tidy data set with the average of each variable
    #    for each activity and each subject. The 3rd and 4h columns are removed
    #    because no longer required. The headers of the two new columns are
    #    renamed.
    res <- suppressWarnings(aggregate(x=dfTTMSD,
               by=list(dfTTMSD$Activity,dfTTMSD$Subject), FUN=mean))
    names(res)[1:2] <- names(res)[3:4]
    res             <- res[c(1:2,5:ncol(res))]
    write.table(res, file="tidy.txt", row.name=FALSE)
}
    