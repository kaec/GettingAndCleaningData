Data
====
The raw data of the "Human Activity Recognition using Smartphones" project was retrieved from the [Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#) 

The provided script will run on the data and output two new datasets:

+ *Activities_StdMean.txt*  
    Column names are given in the first row  
    Contains the Activity names and the standard deviation (std()) and mean (mean()) features of the raw data
+ *SubjectActivities_Mean.txt*  
    Column names are given in the first row  
    Contains the SubjectID, Activity names and the mean value for each standard deviation and mean feature. taken from all measurements belonging to the same SubjectID and Activity

Script
======
The run_analysis.R script can be used to clean the raw data. 
It will use the following files to create its output:  
 activity_label.txt, feature.txt, train/subject_train.txt, train/X_train.txt, train/y_train.txt, test/subject_test.txt, test/X_test.txt, test/y_test.txt 

### Prerequisites
- R needs to be installed
- reshape2 library needs to be installed and loadedX

### How do run the script
- download the raw data from [here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#) 
- unzip the downloaded item into a directory called "Datasets", next to the script
- check that the above mentioned files the script needs are available in the "Datatsets" directory
- open a R command shell
- set the working directory to the directory the script is located in using *setwd("path\\to\\scriptDirectory")*
- load the script using *source("run_analysis.R")*
- call *cleanData()* and wait until the script has finished

### What the script does
For the *Activities_StdMean.txt* output the script appends the variables of the test data to the training data but only keeps the variables related to the standard deviation and mean. The assumption is that these variables are recorded in the raw data under variables with names that end in std() and mean(). 
The variable (column) names for these measurements are taken from the feature.txt and not changed. This allows easy cross-referencing with the raw data's descriptions and codebook. 
The Activity name under which each observation was made is also attached to the dataset. 

For the *SubjectActivities_Mean.txt* output, the script uses the prepared data from the *Activities_StdMean.txt* output and attaches
to every observation the SubjectID. This allows every observation to be matched to the subject that performed it. 
The raw data provides multiple measurements of each feature for each Activity and Subject. To reduce the number of observations for each Subject-Activity combination, the script takes the average of the mean() and std() measurements done for to that combination. The variable names for these new variables are the name of the original variable appended with a ".Mean"

