#Codebook

## col1 subject: 
	subject number, integer 1-30
	
## col2 activity: 
	activity label, char "WALKING", "WALKING\_UPSTAIRS", "WALKING\_DOWNSTAIRS", "SITTING", "STANDING", "LAYING"
	
## col3 - col68:

Feature Selection

	The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

	Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

	Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

	These signals were used to estimate variables of the feature vector for each pattern: '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

	- tBodyAcc-XYZ
	- tGravityAcc-XYZ
	- tBodyAccJerk-XYZ
	- tBodyGyro-XYZ
	- tBodyGyroJerk-XYZ
	- tBodyAccMag
	- tGravityAccMag
	- tBodyAccJerkMag
	- tBodyGyroMag
	- tBodyGyroJerkMag
	- fBodyAcc-XYZ
	- fBodyAccJerk-XYZ
	- fBodyGyro-XYZ
	- fBodyAccMag
	- fBodyAccJerkMag
	- fBodyGyroMag
	- fBodyGyroJerkMag

	The set of variables that were estimated from these signals are: 

	mean(): Mean value
	std(): Standard deviation

Therefore, the mean value of these variables grouped by subject number and activity form the new variables of col3 - col68: 

col3 group mean of tBodyAcc-mean()-X
col4 group mean of tBodyAcc-mean()-Y
col5 group mean of tBodyAcc-mean()-Z
col6 group mean of tBodyAcc-std()-X
col7 group mean of tBodyAcc-std()-Y
col8 group mean of tBodyAcc-std()-Z
col9 group mean of tGravityAcc-mean()-X
col10 group mean of tGravityAcc-mean()-Y
col11 group mean of tGravityAcc-mean()-Z
col12 group mean of tGravityAcc-std()-X
col13 group mean of tGravityAcc-std()-Y
col14 group mean of tGravityAcc-std()-Z
col15 group mean of tBodyAccJerk-mean()-X
col16 group mean of tBodyAccJerk-mean()-Y
col17 group mean of tBodyAccJerk-mean()-Z
col18 group mean of tBodyAccJerk-std()-X
col19 group mean of tBodyAccJerk-std()-Y
col20 group mean of tBodyAccJerk-std()-Z
col21 group mean of tBodyGyro-mean()-X
col22 group mean of tBodyGyro-mean()-Y
col23 group mean of tBodyGyro-mean()-Z
col24 group mean of tBodyGyro-std()-X
col25 group mean of tBodyGyro-std()-Y
col26 group mean of tBodyGyro-std()-Z
col27 group mean of tBodyGyroJerk-mean()-X
col28 group mean of tBodyGyroJerk-mean()-Y
col29 group mean of tBodyGyroJerk-mean()-Z
col30 group mean of tBodyGyroJerk-std()-X
col31 group mean of tBodyGyroJerk-std()-Y
col32 group mean of tBodyGyroJerk-std()-Z
col33 group mean of tBodyAccMag-mean()
col34 group mean of tBodyAccMag-std()
col35 group mean of tGravityAccMag-mean()
col36 group mean of tGravityAccMag-std()
col37 group mean of tBodyAccJerkMag-mean()
col38 group mean of tBodyAccJerkMag-std()
col39 group mean of tBodyGyroMag-mean()
col40 group mean of tBodyGyroMag-std()
col41 group mean of tBodyGyroJerkMag-mean()
col42 group mean of tBodyGyroJerkMag-std()
col43 group mean of fBodyAcc-mean()-X
col44 group mean of fBodyAcc-mean()-Y
col45 group mean of fBodyAcc-mean()-Z
col46 group mean of fBodyAcc-std()-X
col47 group mean of fBodyAcc-std()-Y
col48 group mean of fBodyAcc-std()-Z
col49 group mean of fBodyAccJerk-mean()-X
col50 group mean of fBodyAccJerk-mean()-Y
col51 group mean of fBodyAccJerk-mean()-Z
col52 group mean of fBodyAccJerk-std()-X
col53 group mean of fBodyAccJerk-std()-Y
col54 group mean of fBodyAccJerk-std()-Z
col55 group mean of fBodyGyro-mean()-X
col56 group mean of fBodyGyro-mean()-Y
col57 group mean of fBodyGyro-mean()-Z
col58 group mean of fBodyGyro-std()-X
col59 group mean of fBodyGyro-std()-Y
col60 group  mean of fBodyGyro-std()-Z
col61 group mean of fBodyAccMag-mean()
col62 group mean of fBodyAccMag-std()
col63 group mean of fBodyBodyAccJerkMag-mean()
col64 group mean of fBodyBodyAccJerkMag-std()
col65 group mean of fBodyBodyGyroMag-mean()
col66 group mean of fBodyBodyGyroMag-std()
col67 group mean of fBodyBodyGyroJerkMag-mean()
col68 group mean of fBodyBodyGyroJerkMag-std()