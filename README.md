# Getting-and-cleaning-data-course-project
### Data Transformation
The original data are downloaded from [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip]. They are collected from he accelerometers from the Samsung Galaxy S Smartphone.
The following data transformations are executed by running the script "run_analysis.R":

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject. This data set is exported into "tidydata.txt".

### Variables in the tidy data
The tidy data contains 180 rows and 88 columns. This dataset only shows the mean and standard deviation(Std) of each measurement. Each row represents the averaged variable for each activity and each subject.

#### Subjects are named by ID ranged from 1 to 30. 
#### There are 6 types of activities including: 
1. WALKING
2. WALKING_UPSTAIRS
3. WALKING_DOWNSTAIRS
4. SITTING
5. STANDING
6. LAYING

#### There are 43 measurements for each activity.  Average of Mean and Std for each measurements are listed in this dataset. Therefore, this datset contains the following 88 columns:
 [1] "Activitylabel"                                             
 [2] "Subject"                                                   
 [3] "TimeBodyAccelerometerMean()-X"                             
 [4] "TimeBodyAccelerometerMean()-Y"                             
 [5] "TimeBodyAccelerometerMean()-Z"                             
 [6] "TimeBodyAccelerometerStd()-X"                              
 [7] "TimeBodyAccelerometerStd()-Y"                              
 [8] "TimeBodyAccelerometerStd()-Z"                              
 [9] "TimeGravityAccelerometerMean()-X"                          
[10] "TimeGravityAccelerometerMean()-Y"                          
[11] "TimeGravityAccelerometerMean()-Z"                          
[12] "TimeGravityAccelerometerStd()-X"                           
[13] "TimeGravityAccelerometerStd()-Y"                           
[14] "TimeGravityAccelerometerStd()-Z"                           
[15] "TimeBodyAccelerometerJerkMean()-X"                         
[16] "TimeBodyAccelerometerJerkMean()-Y"                         
[17] "TimeBodyAccelerometerJerkMean()-Z"                         
[18] "TimeBodyAccelerometerJerkStd()-X"                          
[19] "TimeBodyAccelerometerJerkStd()-Y"                          
[20] "TimeBodyAccelerometerJerkStd()-Z"                          
[21] "TimeBodyGyroscopeMean()-X"                                 
[22] "TimeBodyGyroscopeMean()-Y"                                 
[23] "TimeBodyGyroscopeMean()-Z"                                 
[24] "TimeBodyGyroscopeStd()-X"                                  
[25] "TimeBodyGyroscopeStd()-Y"                                  
[26] "TimeBodyGyroscopeStd()-Z"                                  
[27] "TimeBodyGyroscopeJerkMean()-X"                             
[28] "TimeBodyGyroscopeJerkMean()-Y"                             
[29] "TimeBodyGyroscopeJerkMean()-Z"                             
[30] "TimeBodyGyroscopeJerkStd()-X"                              
[31] "TimeBodyGyroscopeJerkStd()-Y"                              
[32] "TimeBodyGyroscopeJerkStd()-Z"                              
[33] "TimeBodyAccelerometerMagnitudeMean()"                      
[34] "TimeBodyAccelerometerMagnitudeStd()"                       
[35] "TimeGravityAccelerometerMagnitudeMean()"                   
[36] "TimeGravityAccelerometerMagnitudeStd()"                    
[37] "TimeBodyAccelerometerJerkMagnitudeMean()"                  
[38] "TimeBodyAccelerometerJerkMagnitudeStd()"                   
[39] "TimeBodyGyroscopeMagnitudeMean()"                          
[40] "TimeBodyGyroscopeMagnitudeStd()"                           
[41] "TimeBodyGyroscopeJerkMagnitudeMean()"                      
[42] "TimeBodyGyroscopeJerkMagnitudeStd()"                       
[43] "FrequencyBodyAccelerometerMean()-X"                        
[44] "FrequencyBodyAccelerometerMean()-Y"                        
[45] "FrequencyBodyAccelerometerMean()-Z"                        
[46] "FrequencyBodyAccelerometerStd()-X"                         
[47] "FrequencyBodyAccelerometerStd()-Y"                         
[48] "FrequencyBodyAccelerometerStd()-Z"                         
[49] "FrequencyBodyAccelerometerMeanFrequency()-X"               
[50] "FrequencyBodyAccelerometerMeanFrequency()-Y"               
[51] "FrequencyBodyAccelerometerMeanFrequency()-Z"               
[52] "FrequencyBodyAccelerometerJerkMean()-X"                    
[53] "FrequencyBodyAccelerometerJerkMean()-Y"                    
[54] "FrequencyBodyAccelerometerJerkMean()-Z"                    
[55] "FrequencyBodyAccelerometerJerkStd()-X"                     
[56] "FrequencyBodyAccelerometerJerkStd()-Y"                     
[57] "FrequencyBodyAccelerometerJerkStd()-Z"                     
[58] "FrequencyBodyAccelerometerJerkMeanFrequency()-X"           
[59] "FrequencyBodyAccelerometerJerkMeanFrequency()-Y"           
[60] "FrequencyBodyAccelerometerJerkMeanFrequency()-Z"           
[61] "FrequencyBodyGyroscopeMean()-X"                            
[62] "FrequencyBodyGyroscopeMean()-Y"                            
[63] "FrequencyBodyGyroscopeMean()-Z"                            
[64] "FrequencyBodyGyroscopeStd()-X"                             
[65] "FrequencyBodyGyroscopeStd()-Y"                             
[66] "FrequencyBodyGyroscopeStd()-Z"                             
[67] "FrequencyBodyGyroscopeMeanFrequency()-X"                   
[68] "FrequencyBodyGyroscopeMeanFrequency()-Y"                   
[69] "FrequencyBodyGyroscopeMeanFrequency()-Z"                   
[70] "FrequencyBodyAccelerometerMagnitudeMean()"                 
[71] "FrequencyBodyAccelerometerMagnitudeStd()"                  
[72] "FrequencyBodyAccelerometerMagnitudeMeanFrequency()"        
[73] "FrequencyBodyBodyAccelerometerJerkMagnitudeMean()"         
[74] "FrequencyBodyBodyAccelerometerJerkMagnitudeStd()"          
[75] "FrequencyBodyBodyAccelerometerJerkMagnitudeMeanFrequency()"
[76] "FrequencyBodyBodyGyroscopeMagnitudeMean()"                 
[77] "FrequencyBodyBodyGyroscopeMagnitudeStd()"                  
[78] "FrequencyBodyBodyGyroscopeMagnitudeMeanFrequency()"        
[79] "FrequencyBodyBodyGyroscopeJerkMagnitudeMean()"             
[80] "FrequencyBodyBodyGyroscopeJerkMagnitudeStd()"              
[81] "FrequencyBodyBodyGyroscopeJerkMagnitudeMeanFrequency()"    
[82] "AngleBetween(TimeBodyAccelerometerMean,Gravity)"           
[83] "AngleBetween(TimeBodyAccelerometerJerkMean),GravityMean)"  
[84] "AngleBetween(TimeBodyGyroscopeMean,GravityMean)"           
[85] "AngleBetween(TimeBodyGyroscopeJerkMean,GravityMean)"       
[86] "AngleBetween(X,GravityMean)"                               
[87] "AngleBetween(Y,GravityMean)"                               
[88] "AngleBetween(Z,GravityMean)" 

#### Class of variables:
"ActivityLabel" is character.
"Subject" is integer.
The remaining 86 variables are numeric.

