Lecture3Project
===============

##Abstract
This is the project assignment of coursera - Getting and Cleaning Data course.
The goal of the project is to pratice getting and cleaning data with R.
In this project, 
* Use the data from Human Activity Recognition Using Smartphones Data Set(UCI HAR Dataset) 
* Write an R script (run_analysis.R) to extract, merge and create a tidy data set (tidyData.txt)


##Files:

 * README.md
   - Basic introductions

 * CodeBook.md
    - The code book of the variables in tidy data set

 * UCI HAR Dataset
    - The data used in run_analysis,
   it is about the wearable computing, which is recorded by 30 people(subjects)collected from the accelerometers and gyroscope by Samsung Galaxy S II smartphone.
   More detailed information on "http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones"  

 * run_analysis.R
   - The analysis file including 5 steps:    
  	 1. Merges the training and the test sets to create one data set.The merge is base on this diagram
      (https://coursera-forum-screenshots.s3.amazonaws.com/ab/a2776024af11e4a69d5576f8bc8459/Slide2.png)
   	 2. Use grep and column subsetting to extracts only the measurements on the mean and standard deviation("mean"and "std") for each measurement. 
     3. Uses descriptive activity names to name the activities in the data set( using gsub to the activities column).
     4. Appropriately labels the data set with descriptive variable names( using sub and gsub to rename the colnumn names from the features.txt). 
     5. From the data set in step 4, creates a second, independent tidy data set("tidyData.txt") with the average of each variable for each activity and each subject. (using write.table(data,"tidyData.txt",row.name=FALSE))

 * tidyData.txt
   - The tidy data set, the result and output of run_analysis.R 
     
 * codebook.R
   - The R script that helps produce CodeBook.md 
   
##Usage 

* Please put all the files in your working directory before you execute,
 and use setwd("your working directory")

* To view the tidy data set created in step 5 
 Please use the instruction: data<-read.table("tidyData.txt",header=TRUE) 

* To execute the run_analysis.R,
 Please use the instruction: source("run_analysis.R")

##Citation
- Bache, K. & Lichman, M. (2013). UCI Machine Learning Repository [http://archive.ics.uci.edu/ml]. Irvine, CA: University of California, School of Information and Computer Science.

- The diagram by David Hood [http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones]

