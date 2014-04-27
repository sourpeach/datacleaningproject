## Reading Test set and Train set
testset <- read.table("~/datacleaningproject/UCI HAR Dataset/test/X_test.txt")
trainset <- read.table("~/datacleaningproject/UCI HAR Dataset/train/X_train.txt")

## reading features name 
features <- read.table("~/datacleaningproject/UCI HAR Dataset/features.txt")

##extracting activity code
ytest <- read.table("~/datacleaningproject/UCI HAR Dataset/test/y_test.txt")
ytrain <- read.table("~/datacleaningproject/UCI HAR Dataset/train/y_train.txt")

##get subject number
subtest <- read.table("~/datacleaningproject/UCI HAR Dataset/test/subject_test.txt")
subtrain <- read.table("~/datacleaningproject/UCI HAR Dataset/train/subject_train.txt")

##combining subject number and activity codes
subytest <- data.frame(subtest, ytest)
subytrain <- data.frame(subtrain, ytrain)

##get activive name
activitynames <- read.table("~/datacleaningproject/UCI HAR Dataset/activity_labels.txt")

##matching activity code to activity name
subytest$V2 <- activitynames$V2[match(subytest$V1.1, activitynames$V1)]
subytrain$V2 <- activitynames$V2[match(subytrain$V1.1, activitynames$V1)]

##naming the column
names(subytest) <- c("Subject_Num", "Activity_Code", "Activity_Name")
names(subytrain) <- c("Subject_Num", "Activity_Code", "Activity_Name")

## extract all mean and std from data sets
meanandstd <- grep("-mean\\(\\)|-std\\(\\)", features[, 2])
mergeset <- rbind(testset, trainset)
mergeset <- mergeset[,meanandstd]
names(mergeset) <- features[meanandstd, 2]

suby <- rbind(subytest,subytrain)
finalmerge <- cbind(suby,mergeset)
finalmerge <- data.frame(finalmerge)

##subset of 'finalmerge' for question 5
newid <- ncol(finalmerge)
subtidy <- split(finalmerge[,4:newid], list(finalmerge$Activity_Name, finalmerge$Subject_Num))
subtidyset <- sapply(subtidy, colMeans)
subtidyset <- data.table(subtidyset)