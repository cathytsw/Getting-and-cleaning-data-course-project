# Getting-and-cleaning-data-course-project
This repo is created for finishing the course project of Getting and Cleaning Data Coursera Course.
* Data files were downloaded from this link [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip] and unzipped.
* The unzipped and needed data files were loaded into the R working directory.
* The R script "run_analysis.R" was executed to get the tidy data which was exported into "tidydata.txt".

### Descirption of the original data
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals . Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm. Finally a Fast Fourier Transform (FFT) was applied to some of these signals for calaulating their frequency. These signals were used to estimate variables of the feature vector for each pattern: '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

In the original data, the following set of variables were estimated from these signals: 

* Mean value
* Standard deviation
* Median absolute deviation 
* Largest value in array
* Smallest value in array
* Signal magnitude area
* Energy measure. Sum of the squares divided by the number of values. 
* Interquartile range 
* Signal entropy
* Autorregresion coefficients with Burg order equal to 4
* correlation coefficient between two signals
* index of the frequency component with largest magnitude
* Weighted average of the frequency components to obtain a mean frequency
* skewness of the frequency domain signal 
* kurtosis of the frequency domain signal 
* Energy of a frequency interval within the 64 bins of the FFT of each window.
* Angle between to vectors.

### Data transformation
The R script "run_analysis.R" was executed in order to tidy the original data and create a new data set with average value for each activity and each subject. In this script, the training data and testing data are first combined. The variables containing the mean and standard deviation of measurements are then extracted. The codes for measured activity and variables are revised to be more descriptive. Finally, the average values of mean and standard deviation for each activity and each subject are calculated and listed in another new data set, which is exported into "tidydata.txt"
