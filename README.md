## Analysis of the UCI HAR Dataset 

This readme explains how the analysis script works as well as information about the output

### Dataset info

Please see the README and feature_info.txt of https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip for more information on the construction of data

### run_analysis.R

This script goes throught the following process:
1. Loading feature and activity label data 
1. Defining a generic method to read the data sets
     1. This first grabs activity, subject, and dataset data into tables, naming columns appropriately
     1. Activity labels are applied to the activity data set by merging with the dataset we got from the features.txt file
     1. From the data set, any columns not including mean or standard deviation data is removed
     1. Column names for features are renamed to be more readable
     1. We then combine the three datasets and return them as one
1. We use the generic method to grab training and test data, and combine them with rbind
1. The resulting dataset is written to tidy_raw.txt
1. Column averages are then calculating by grouping on Subject and Acitivty with the data.table api
1. Data observations are ordered in a easy to read fashion
1. The resulting dataset is written to tidy_summary.txt

### tidy_raw.txt

This data is tidy because:
- Each variable forms a column
- Each observation forms a row
- Each column/row value only contains information on one observation
- Data is not repeated

Please see codebook for more information about column names

### tidy_summary.txt

This wide form tidy data because:
- Each variable forms a column
- Each observation forms a row
- Each column/row value only contains information on one observation
- Data is not repeated

Please see codebook for more information about column names
