library(reshape2)

# if not exist, download the .zip data file and unzip it
if (!file.exists("./getdata_projectfiles_UCI HAR Dataset.zip")){
        url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
        download.file(url, "./getdata_projectfiles_UCI HAR Dataset.zip", 
                     method = "curl")
        unzip("./getdata_projectfiles_UCI HAR Dataset.zip")
}

# read the relevant files
features <- read.table("./UCI HAR Dataset/features.txt", 
                       sep = " ", header = F, stringsAsFactors = F)
names(features) <- c("num", "feature")
act <- read.table("./UCI HAR Dataset/activity_labels.txt", 
                  sep = " ", header = F, stringsAsFactors = F)
names(act) <- c("num", "act")
ytest <- as.numeric(readLines("./UCI HAR Dataset/test/y_test.txt"))
ytrain <- as.numeric(readLines("./UCI HAR Dataset/train/y_train.txt"))
subj_test <- as.numeric(readLines("./UCI HAR Dataset/test/subject_test.txt"))
subj_train <- as.numeric(readLines("./UCI HAR Dataset/train/subject_train.txt"))
xtest_df <- read.table("./UCI HAR Dataset/test/X_test.txt", header = F)
xtrain_df <- read.table("./UCI HAR Dataset/train/X_train.txt", header = F)

xtt <- rbind(xtest_df,xtrain_df) # merge the training and the test sets to create one data set

colnames(xtt) <- features[,2] # label the data set with variable names
ytt <- c(ytest, ytrain)
subj_tt <- c(subj_test, subj_train)
xtt <- cbind(subject = subj_tt, activity = ytt, xtt) # bind subject and activity number to the left of the merged data.frame
xtt <- xtt[, c(1:2, grep("mean\\(\\)|std\\(\\)", colnames(xtt)))] # extract only the measurements on the mean and standard deviation for each measurement

# use descriptive activity names to name the activities in the data set
for (i in 1:nrow(xtt)) {
        xtt[i, 2] <- act[xtt[i, 2], 2]
}

# from xtt, create a second, independent tidy data set with the average of each variable for each activity and each subject
xtt_melted <- melt(xtt, id.vars = c(1, 2), measure.vars = -c(1, 2))
tidy_df <- dcast(xtt_melted, subject + activity ~ variable, mean)

colnames(tidy_df) <- paste("group mean of", colnames(tidy_df)) # give the proper 
colnames(tidy_df)[1:2] <- c("subject", "activity")             # colnames

write.table(tidy_df,file = "step_5_tidy_data.txt", row.name=FALSE) # create the .txt file