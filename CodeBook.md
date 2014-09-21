CodeBook


===============
##Abstract

This is the code book of the tidy data set.
All variables are modified from the UCI HAR Dataset(refer to ./UCI HAR Dataset/features_info.txt) 
But have been transformed as follows:

1. "-" and "()" be removed
2. t be replaced by Time
3. f be replaced by Frequency
4. mean be replace by Mean
5. std be replaced by Std
6. BodyBody be replaced by Body
7. Add Avg in the from 

##General Rules


##ID Variables

"subjects"                           
 	- coded from 1-30, each 30 different people who took the train or test.


"activities"
    - 6 different activities are coded in
      "Laying"             
      "Sitting"            
      "Standing"           
      "Walking"            
      "Walking downstairs" 
      "Walking upstairs"  

## Experimentals results variables: 

### Experimentals results variables are normalized and bounded within [-1,1].

### The abbreviation meanings:
* Avg the average of each variable for each activity and each subject 
* Acc Acceleration
* Mag Magnitude
* MeanFreq Weighted average of the frequency components to obtain a mean frequency
* Time Time domain signals
* Frequency  Frequency domain signals
* Gyro Gyroscope
* Std Standard deviation
* X   X axis
* Y   Y axis
* Z   Z axis

###Experimentals results variables: 

* AvgTimeBodyAccMeanX   The average of time domain body acceleration mean in X direction 

 * AvgTimeBodyAccMeanY   The average of time domain body acceleration mean in Y direction 

 * AvgTimeBodyAccMeanZ   The average of time domain body acceleration mean in Z direction 

 * AvgTimeBodyAccStdX   The average of time domain body acceleration standard deviation in X direction 

 * AvgTimeBodyAccStdY   The average of time domain body acceleration standard deviation in Y direction 

 * AvgTimeBodyAccStdZ   The average of time domain body acceleration standard deviation in Z direction 

 * AvgTimeGravityAccMeanX   The average of time domain gravity acceleration mean in X direction 

 * AvgTimeGravityAccMeanY   The average of time domain gravity acceleration mean in Y direction 

 * AvgTimeGravityAccMeanZ   The average of time domain gravity acceleration mean in Z direction 

 * AvgTimeGravityAccStdX   The average of time domain gravity acceleration standard deviation in X direction 

 * AvgTimeGravityAccStdY   The average of time domain gravity acceleration standard deviation in Y direction 

 * AvgTimeGravityAccStdZ   The average of time domain gravity acceleration standard deviation in Z direction 

 * AvgTimeBodyAccJerkMeanX   The average of time domain body acceleration Jerk mean in X direction 

 * AvgTimeBodyAccJerkMeanY   The average of time domain body acceleration Jerk mean in Y direction 

 * AvgTimeBodyAccJerkMeanZ   The average of time domain body acceleration Jerk mean in Z direction 
 
 * AvgTimeBodyAccJerkStdX   The average of time domain body acceleration Jerk standard deviation in X direction 
 
 * AvgTimeBodyAccJerkStdY   The average of time domain body acceleration Jerk standard deviation in Y direction 
 
 * AvgTimeBodyAccJerkStdZ   The average of time domain body acceleration Jerk standard deviation in Z direction 
 
 * AvgTimeBodyGyroMeanX   The average of time domain body Gyroscope mean in X direction 
 
 * AvgTimeBodyGyroMeanY   The average of time domain body Gyroscope mean in Y direction 
 
 * AvgTimeBodyGyroMeanZ   The average of time domain body Gyroscope mean in Z direction 
 
 * AvgTimeBodyGyroStdX   The average of time domain body Gyroscope standard deviation in X direction 
 
 * AvgTimeBodyGyroStdY   The average of time domain body Gyroscope standard deviation in Y direction 
 
 * AvgTimeBodyGyroStdZ   The average of time domain body Gyroscope standard deviation in Z direction 
 
 * AvgTimeBodyGyroJerkMeanX   The average of time domain body Gyroscope Jerk mean in X direction 
 
 * AvgTimeBodyGyroJerkMeanY   The average of time domain body Gyroscope Jerk mean in Y direction 
 
 
 * AvgTimeBodyGyroJerkMeanZ   The average of time domain body Gyroscope Jerk mean in Z direction 
 
 * AvgTimeBodyGyroJerkStdX   The average of time domain body Gyroscope Jerk standard deviation in X direction 
 
 * AvgTimeBodyGyroJerkStdY   The average of time domain body Gyroscope Jerk standard deviation in Y direction 
 
 * AvgTimeBodyGyroJerkStdZ   The average of time domain body Gyroscope Jerk standard deviation in Z direction 
 
 * AvgTimeBodyAccMagMean   The average of time domain body acceleration magnitude mean 
 
 * AvgTimeBodyAccMagStd   The average of time domain body acceleration magnitude standard deviation 
 
 * AvgTimeGravityAccMagMean   The average of time domain gravity acceleration magnitude mean 
 
 * AvgTimeGravityAccMagStd   The average of time domain gravity acceleration magnitude standard deviation 
 
 * AvgTimeBodyAccJerkMagMean   The average of time domain body acceleration Jerk magnitude mean 
 
 * AvgTimeBodyAccJerkMagStd   The average of time domain body acceleration Jerk magnitude standard deviation 
 
 * AvgTimeBodyGyroMagMean   The average of time domain body Gyroscope magnitude mean 
 
 * AvgTimeBodyGyroMagStd   The average of time domain body Gyroscope magnitude standard deviation 
 
 * AvgTimeBodyGyroJerkMagMean   The average of time domain body Gyroscope Jerk magnitude mean 
 
 * AvgTimeBodyGyroJerkMagStd   The average of time domain body Gyroscope Jerk magnitude standard deviation 
 
 * AvgFrequencyBodyAccMeanX   The average of frequency domain body acceleration mean in X direction 
 
 * AvgFrequencyBodyAccMeanY   The average of frequency domain body acceleration mean in Y direction 
 
 * AvgFrequencyBodyAccMeanZ   The average of frequency domain body acceleration mean in Z direction 
 
 * AvgFrequencyBodyAccStdX   The average of frequency domain body acceleration standard deviation in X direction 
 
 * AvgFrequencyBodyAccStdY   The average of frequency domain body acceleration standard deviation in Y direction 
 
 * AvgFrequencyBodyAccStdZ   The average of frequency domain body acceleration standard deviation in Z direction 
 
 * AvgFrequencyBodyAccMeanFreqX   The average of frequency domain body acceleration mean frequency in X direction 
 
 * AvgFrequencyBodyAccMeanFreqY   The average of frequency domain body acceleration mean frequency in Y direction 
 
 * AvgFrequencyBodyAccMeanFreqZ   The average of frequency domain body acceleration mean frequency in Z direction 
 
 * AvgFrequencyBodyAccJerkMeanX   The average of frequency domain body acceleration Jerk mean in X direction 
 
 * AvgFrequencyBodyAccJerkMeanY   The average of frequency domain body acceleration Jerk mean in Y direction 
 
 * AvgFrequencyBodyAccJerkMeanZ   The average of frequency domain body acceleration Jerk mean in Z direction 
 
 * AvgFrequencyBodyAccJerkStdX   The average of frequency domain body acceleration Jerk standard deviation in X 
 direction 
 
 * AvgFrequencyBodyAccJerkStdY   The average of frequency domain body acceleration Jerk standard deviation in Y direction 
 
 * AvgFrequencyBodyAccJerkStdZ   The average of frequency domain body acceleration Jerk standard deviation in Z direction 
 
 * AvgFrequencyBodyAccJerkMeanFreqX   The average of frequency domain body acceleration Jerk mean frequency in X direction 
 
 * AvgFrequencyBodyAccJerkMeanFreqY   The average of frequency domain body acceleration Jerk mean frequency in Y direction 
 
 * AvgFrequencyBodyAccJerkMeanFreqZ   The average of frequency domain body acceleration Jerk mean frequency in Z direction 
 
 * AvgFrequencyBodyGyroMeanX   The average of frequency domain body Gyroscope mean in X direction 
 
 * AvgFrequencyBodyGyroMeanY   The average of frequency domain body Gyroscope mean in Y direction 
 
 * AvgFrequencyBodyGyroMeanZ   The average of frequency domain body Gyroscope mean in Z direction 
 
 * AvgFrequencyBodyGyroStdX   The average of frequency domain body Gyroscope standard deviation in X direction 
 
 * AvgFrequencyBodyGyroStdY   The average of frequency domain body Gyroscope standard deviation in Y direction 
 
 * AvgFrequencyBodyGyroStdZ   The average of frequency domain body Gyroscope standard deviation in Z direction 
 
 * AvgFrequencyBodyGyroMeanFreqX   The average of frequency domain body Gyroscope mean frequency in X direction 
 
 * AvgFrequencyBodyGyroMeanFreqY   The average of frequency domain body Gyroscope mean frequency in Y direction 
 
 * AvgFrequencyBodyGyroMeanFreqZ   The average of frequency domain body Gyroscope mean frequency in Z direction 
 
 * AvgFrequencyBodyAccMagMean   The average of frequency domain body acceleration magnitude mean 
 
 * AvgFrequencyBodyAccMagStd   The average of frequency domain body acceleration magnitude standard deviation 
 
 * AvgFrequencyBodyAccMagMeanFreq   The average of frequency domain body acceleration magnitude mean frequency 
 
 * AvgFrequencyBodyAccJerkMagMean   The average of frequency domain body acceleration Jerk magnitude mean 
 
 * AvgFrequencyBodyAccJerkMagStd   The average of frequency domain body acceleration Jerk magnitude standard deviation 
 
 * AvgFrequencyBodyAccJerkMagMeanFreq   The average of frequency domain body acceleration Jerk magnitude mean frequency 
 
 * AvgFrequencyBodyGyroMagMean   The average of frequency domain body Gyroscope magnitude mean 
 
 * AvgFrequencyBodyGyroMagStd   The average of frequency domain body Gyroscope magnitude standard deviation 
 
 * AvgFrequencyBodyGyroMagMeanFreq   The average of frequency domain body Gyroscope magnitude mean frequency 
 
 * AvgFrequencyBodyGyroJerkMagMean   The average of frequency domain body Gyroscope Jerk magnitude mean 
 
 * AvgFrequencyBodyGyroJerkMagStd   The average of frequency domain body Gyroscope Jerk magnitude standard deviation 
 
 * AvgFrequencyBodyGyroJerkMagMeanFreq   The average of frequency domain body Gyroscope Jerk magnitude mean frequency 

