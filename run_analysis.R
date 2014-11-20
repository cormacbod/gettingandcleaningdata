# combine the y train and test data into one table
y_train <- read.table("train\\y_train.txt")
y_test <- read.table("test\\y_test.txt")
y <- rbind(y_train, y_test)
# add a descriptive name
names(y) <- "Activity_ID"

#create column for Activity names
y$Activity <- "WALKING"
#add column names for each ID to names column
y$Activity[y$Activity_ID == 1] <- "WALKING"
y$Activity[y$Activity_ID == 2] <- "WALKING_UPSTAIRS"
y$Activity[y$Activity_ID == 3] <- "WALKING_DOWNSTAIRS"
y$Activity[y$Activity_ID == 4] <- "SITTING"
y$Activity[y$Activity_ID == 5] <- "STANDING"
y$Activity[y$Activity_ID == 6] <- "LAYING"
#remove ID column
y <- y[-1]

#combine the subject train and test data into one table
subject_train <- read.table("train\\subject_train.txt")
subject_test <- read.table("test\\subject_test.txt")
subject <- rbind(subject_train, subject_test)
# add a descriptibe name
names(subject) <- "Subject"

# combine the x train and test data into one table
x_train <- read.table("train\\x_train.txt")
x_test <- read.table("test\\x_test.txt")
x <- rbind(x_train, x_test)

#read in features data
features <- read.table("features.txt")
#create names from feature names factor
featurenames <- make.names(features$V2, unique = TRUE)
# remove punctuation
featurenames <- gsub("[[:punct:]]", "", featurenames)
#expand abbreviations into more descriptive terms
featurenames <- gsub("Acc", "Accelerometer", featurenames)
featurenames <- gsub("Gyro", "Gyroscope", featurenames)
featurenames <- gsub("^f", "FFT", featurenames)
featurenames <- gsub("^t", "TimeDomain", featurenames)
#add names to x data
names(x) <- featurenames

#separate out mean columns
xmeans <- select(x, contains("mean"))
xmeans <- select(xmeans, -contains("Freq"))

#separate out std columns
xstd <- select(x, contains("std"))

#recombine mean and std columns
xMeanAndStd <- cbind(xmeans, xstd)

#add subject and activity data (y) to x mean and std data
rawresults <- cbind(subject, y, xMeanAndStd)

#mean of values for each column grouped by subject and activity 
meanresults <- rawresults %>% group_by(Subject, Activity) %>% summarise_each(funs(mean))

#write results
write.table(meanresults, "analysis_results.txt", row.names = FALSE)
