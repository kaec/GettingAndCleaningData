Study Design
============
The raw data of the "Human Activity Recognition using Smartphones" project was retrieved from the [Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#) 

It provides data collected from a Samsung Smartphone carried by 30 subjects doing 6 different activities. 
Using the gyroscope and accelerometer embedded in the phone, the linear acceleration and angular velocity along the X, Y, and Z axis where measured. The data has been split into training and test data and the measurements have been be pre-processed into different features from the time and frequency domain. 

Code Book
============

Name: SubjectID  
Meaning: Identifier for the subject that performed the activity

Name: Activity   
Meaning: Activity name, one of WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING


The variable names for the features in the first tidy datasets (Activities_StdMean.txt) have been kept the same as the given by the raw data. 
The measurements are normalized within [-1,1]. The tidy datasets only use the feature variables related to the mean and standard deviation from the raw data.
The variable names for these features are composed of separate parts. 
*t* denotes signal measurements in the domain domain, *f* denotes measurements in the frequency domain.

**1.Part** 

Name: tAcc 
Meaning: raw accelerometer signal, 3 axial, standard gravity units

Name: tGyro   
Meaning: raw gyroscope signal, 3 axial, radians/second

Name: tBodyAcc   
Meaning: Body acceleration   

Name: tGravityAcc    
Meaning: Gravity acceleration   

Name: tBodyAccJerk   
Meaning: Jerk signal for body acceleration

Name: tBodyGyroJerk  
Meaning: Jerk signal for angular velocity   

Name: tBodyAccMag  
Meaning: Magnitude of body acceleration  

Name: tGravityAccMag   
Meaning: Magnitude of gravity acceleration  

Name: tBodyAccJerkMag   
Meaning: Magnitude of body acceleration jerk signal   

Name: tBodyGyroMag   
Meaning: Magnitude of gravity acceleration jerk signal   

Name: tBodyGyroJerkMag   
Meaning: Magnitude of gravity acceleration jerk signal  

Name: fBodyAcc  
Meaning: Body acceleration in frequency domain  

Name: fBodyAccJerk   
Meaning: Body acceleration jerk signal in frequency domain   

Name: fBodyGyro   
Meaning: Gravity acceleration in frequency domai  n

Name: fBodyAccJerkMag    
Meaning: Magnitude of body acceleration jerk signal in frequency domain    

Name: fBodyGyroMag    
Meaning: Magnitude of gravity acceleration in frequency domain    

Name: fBodyGyroJerkMag    
Meaning: Magnitude of gravity acceleration jerk signal in frequency domain  

**2.part**  
Name: mean()   
Meaning: Mean value  

Name: std()   
Meaning: standard deviation   

**3.part**  
X, Y, and Z denote the 3 axis. 

The second tidy dataset (SubjectActivities_mean.txt) summarises the features from the first tidy dataset into their mean value.
The suffix *.Mean* is appended to the feature variable names, denoting that this is the mean value of all measurements of the feature for the given SubjectID and Activity.
