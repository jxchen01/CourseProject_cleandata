Part 1: Dataset description

There are two datasets in the repo, tidy_dataset and new_dataset.
1. tidy_dataset is the one combining test and training datasets with only the mean and std of each measurement.
2. new_dataset is the new dataset with the average of each variable for each activity and each subject.


Part 2: Variable description

In tidy_dataset, 81 features are associated with each observation. The first one is the subjectID, indicating which subject these measurements come from. The last one is the ActivityType showing what kind of activity these values were measured in. The remaining 79 features are different measurements. 

 [2] "time_signal_of_Body_Acceleration-MeanValue-X"                                      
 [3] "time_signal_of_Body_Acceleration-MeanValue-Y"                                      
 [4] "time_signal_of_Body_Acceleration-MeanValue-Z"                                      
 [5] "time_signal_of_Gravity_Acceleration-MeanValue-X"                                   
 [6] "time_signal_of_Gravity_Acceleration-MeanValue-Y"                                   
 [7] "time_signal_of_Gravity_Acceleration-MeanValue-Z"                                   
 [8] "time_signal_of_Body_Acceleration_Jerk_Signal-MeanValue-X"                          
 [9] "time_signal_of_Body_Acceleration_Jerk_Signal-MeanValue-Y"                          
[10] "time_signal_of_Body_Acceleration_Jerk_Signal-MeanValue-Z"                          
[11] "time_signal_of_Body_GyroscopeMeasurement-MeanValue-X"                              
[12] "time_signal_of_Body_GyroscopeMeasurement-MeanValue-Y"                              
[13] "time_signal_of_Body_GyroscopeMeasurement-MeanValue-Z"                              
[14] "time_signal_of_Body_GyroscopeMeasurement_Jerk_Signal-MeanValue-X"                  
[15] "time_signal_of_Body_GyroscopeMeasurement_Jerk_Signal-MeanValue-Y"                  
[16] "time_signal_of_Body_GyroscopeMeasurement_Jerk_Signal-MeanValue-Z"                  
[17] "time_signal_of_Body_Acceleration_Magnitude-MeanValue"                              
[18] "time_signal_of_Gravity_Acceleration_Magnitude-MeanValue"                           
[19] "time_signal_of_Body_Acceleration_Jerk_Signal_Magnitude-MeanValue"                  
[20] "time_signal_of_Body_GyroscopeMeasurement_Magnitude-MeanValue"                      
[21] "time_signal_of_Body_GyroscopeMeasurement_Jerk_Signal_Magnitude-MeanValue"          
[22] "frequency_signal_of_Body_Acceleration-MeanValue-X"                                 
[23] "frequency_signal_of_Body_Acceleration-MeanValue-Y"                                 
[24] "frequency_signal_of_Body_Acceleration-MeanValue-Z"                                 
[25] "frequency_signal_of_Body_Acceleration-meanFreq()-X"                                
[26] "frequency_signal_of_Body_Acceleration-meanFreq()-Y"                                
[27] "frequency_signal_of_Body_Acceleration-meanFreq()-Z"                                
[28] "frequency_signal_of_Body_Acceleration_Jerk_Signal-MeanValue-X"                     
[29] "frequency_signal_of_Body_Acceleration_Jerk_Signal-MeanValue-Y"                     
[30] "frequency_signal_of_Body_Acceleration_Jerk_Signal-MeanValue-Z"                     
[31] "frequency_signal_of_Body_Acceleration_Jerk_Signal-meanFreq()-X"                    
[32] "frequency_signal_of_Body_Acceleration_Jerk_Signal-meanFreq()-Y"                    
[33] "frequency_signal_of_Body_Acceleration_Jerk_Signal-meanFreq()-Z"                    
[34] "frequency_signal_of_Body_GyroscopeMeasurement-MeanValue-X"                         
[35] "frequency_signal_of_Body_GyroscopeMeasurement-MeanValue-Y"                         
[36] "frequency_signal_of_Body_GyroscopeMeasurement-MeanValue-Z"                         
[37] "frequency_signal_of_Body_GyroscopeMeasurement-meanFreq()-X"                        
[38] "frequency_signal_of_Body_GyroscopeMeasurement-meanFreq()-Y"                        
[39] "frequency_signal_of_Body_GyroscopeMeasurement-meanFreq()-Z"                        
[40] "frequency_signal_of_Body_Acceleration_Magnitude-MeanValue"                         
[41] "frequency_signal_of_Body_Acceleration_Magnitude-meanFreq()"                        
[42] "frequency_signal_of_BodyBody_Acceleration_Jerk_Signal_Magnitude-MeanValue"         
[43] "frequency_signal_of_BodyBody_Acceleration_Jerk_Signal_Magnitude-meanFreq()"        
[44] "frequency_signal_of_BodyBody_GyroscopeMeasurement_Magnitude-MeanValue"             
[45] "frequency_signal_of_BodyBody_GyroscopeMeasurement_Magnitude-meanFreq()"            
[46] "frequency_signal_of_BodyBody_GyroscopeMeasurement_Jerk_Signal_Magnitude-MeanValue" 
[47] "frequency_signal_of_BodyBody_GyroscopeMeasurement_Jerk_Signal_Magnitude-meanFreq()"
[48] "time_signal_of_Body_Acceleration-std()-X"                                          
[49] "time_signal_of_Body_Acceleration-std()-Y"                                          
[50] "time_signal_of_Body_Acceleration-std()-Z"                                          
[51] "time_signal_of_Gravity_Acceleration-std()-X"                                       
[52] "time_signal_of_Gravity_Acceleration-std()-Y"                                       
[53] "time_signal_of_Gravity_Acceleration-std()-Z"                                       
[54] "time_signal_of_Body_Acceleration_Jerk_Signal-std()-X"                              
[55] "time_signal_of_Body_Acceleration_Jerk_Signal-std()-Y"                              
[56] "time_signal_of_Body_Acceleration_Jerk_Signal-std()-Z"                              
[57] "time_signal_of_Body_GyroscopeMeasurement-std()-X"                                  
[58] "time_signal_of_Body_GyroscopeMeasurement-std()-Y"                                  
[59] "time_signal_of_Body_GyroscopeMeasurement-std()-Z"                                  
[60] "time_signal_of_Body_GyroscopeMeasurement_Jerk_Signal-std()-X"                      
[61] "time_signal_of_Body_GyroscopeMeasurement_Jerk_Signal-std()-Y"                      
[62] "time_signal_of_Body_GyroscopeMeasurement_Jerk_Signal-std()-Z"                      
[63] "time_signal_of_Body_Acceleration_Magnitude-std()"                                  
[64] "time_signal_of_Gravity_Acceleration_Magnitude-std()"                               
[65] "time_signal_of_Body_Acceleration_Jerk_Signal_Magnitude-std()"                      
[66] "time_signal_of_Body_GyroscopeMeasurement_Magnitude-std()"                          
[67] "time_signal_of_Body_GyroscopeMeasurement_Jerk_Signal_Magnitude-std()"              
[68] "frequency_signal_of_Body_Acceleration-std()-X"                                     
[69] "frequency_signal_of_Body_Acceleration-std()-Y"                                     
[70] "frequency_signal_of_Body_Acceleration-std()-Z"                                     
[71] "frequency_signal_of_Body_Acceleration_Jerk_Signal-std()-X"                         
[72] "frequency_signal_of_Body_Acceleration_Jerk_Signal-std()-Y"                         
[73] "frequency_signal_of_Body_Acceleration_Jerk_Signal-std()-Z"                         
[74] "frequency_signal_of_Body_GyroscopeMeasurement-std()-X"                             
[75] "frequency_signal_of_Body_GyroscopeMeasurement-std()-Y"                             
[76] "frequency_signal_of_Body_GyroscopeMeasurement-std()-Z"                             
[77] "frequency_signal_of_Body_Acceleration_Magnitude-std()"                             
[78] "frequency_signal_of_BodyBody_Acceleration_Jerk_Signal_Magnitude-std()"             
[79] "frequency_signal_of_BodyBody_GyroscopeMeasurement_Magnitude-std()"                 
[80] "frequency_signal_of_BodyBody_GyroscopeMeasurement_Jerk_Signal_Magnitude-std()" 


In new_dataset, there are 79 rows. Each row shows the average value of a measurement, as discussed above, for subject K performing a particular type of activity. For example, column 1 is 1.LAYING. It means the measurement is recorded while subject 1 is laying. Thus, the first element in the first row is the average value of time_signal_of_Body_Acceleration-MeanValue-X for subject 1 laying.   

Part 3 Transformation performed to get the data

step 1: Extract valid measurement. The feature name list is loaded. Only the features as the mean or std of a measurement are included. 
step 2: Extract test data. The subject ID, features(only the valid ones identified in step 1), and activity type are loaded, respectively. rbind() is performed to combine these three pieces of data into a data frame, called mergedTest.
step 3: The same transformation, as step 2, is performed for train data.
step 4: Combine test and merge data. cbind() is performed.
step 5: Replace the numeric value of each row in column "ActivityType" by a descriptive name according to "activity_labels.txt"
step 6: Group the subject ID and ActivityType. Compute the average value of each feature for each combination of subject ID and ActivityType, by sapply(split()).

 
step 5:

  
