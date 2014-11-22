gettingandcleaningdata
======================

Getting and Cleaning Data course project

The run_analysis.R script parses and calculates summary statistics (means) on mean and standard deviation data
from the Human Activity Recognition Using Smartphones Dataset

The run_analysis.R script requires the following files be present in the working directory:
===========================================================================================

- 'features.txt': List of all features.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. 
	Its range is from 1 to 30. 

- 'train/subject_test.txt': Each row identifies the subject who performed the activity for each window sample. 
	Its range is from 1 to 30. 

The script first stitches together the data from the train and test files for y. The values in the combined dataset are then 
converted from numbers into names of the activities that they represent

The script then stitches together the data from the train and test files for subject. No conversion of values is required.

Then the X train and test data are then stitched together. This data are the measurements recorded.

The measurements do not have column names, these are listed in the features.txt file. The features.txt values are thus added 
to the measurement data as column headers. Punctuation marks and special characters are removed from the resulting column names
and abbreviations within the names are expanded.

The resulting measurement data has columns that do not correspond to mean or standard deviation measures, so these are then discarded.

The measurement data is then joined with the subject and activity data (from the y_train.txt and y_test.txt files) to form a data frame 
containing all the data required.

The measurement data is then grouped by subject and activity and the mean of these groups is calculated. 

The resulting dataset is the required output and it is written out to a file called 'analysis_results.txt' in the working directory.

