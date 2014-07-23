library('plyr')
library('data.table')

# read in data
basedir = './UCI HAR Dataset'

# get features
features = read.table(paste(basedir, 'features.txt', sep = '/'), header = FALSE)
names(features) = c('featureId', 'feature')

# get activities
activities = read.table(paste(basedir, 'activity_labels.txt', sep = '/'), header = FALSE)
names(activities) = c('activityId', 'activity')

# generic method to build data set from data, activities and subjects
get_data_set = function (type) {
  typedir = paste(basedir, type, sep = '/')
  
  # get activities
  type_activities = read.table(paste(typedir, paste('y_', type, '.txt', sep = ''), sep = '/'), header = FALSE)
  names(type_activities) = c('activityId')
  type_activities = join(type_activities, activities)$activity
  
  # get subjects
  type_subjects = read.table(paste(typedir, paste('subject_', type, '.txt', sep = ''), sep = '/'), header = FALSE)
  names(type_subjects) = c('Subject')
  
  # get data
  type_feature_data = read.table(paste(typedir, paste('X_', type, '.txt', sep = ''), sep = '/'), header = FALSE, strip.white = TRUE)
  names(type_feature_data) = features$feature
  type_feature_data = type_feature_data[,grepl(".*-(mean|std)\\(.*", features$feature)]
  
  # rename columns in data
  type_feature_columns = names(type_feature_data)
  type_feature_columns = gsub("(-|\\(\\))+", ' ', type_feature_columns) # replace bad chars
  type_feature_columns = gsub("( mean| std)( [X-Z])$", '\\2\\1', type_feature_columns) # move metric to end
  type_feature_columns = gsub("(\\w)([A-Z])", '\\1 \\2', type_feature_columns) # add space before capital letters
  type_feature_columns = gsub("^t ", '', type_feature_columns) # remove starting t
  type_feature_columns = gsub("^f ", 'Fast Fourier Transform of ', type_feature_columns) # replace starting f
  type_feature_columns = gsub(" Acc ", ' Accelerometer ', type_feature_columns) # replace Acc
  type_feature_columns = gsub(" Gyro ", ' Gyroscope ', type_feature_columns) # replace Gyro
  type_feature_columns = gsub(" Mag ", ' Magnitude ', type_feature_columns) # replace Mag
  type_feature_columns = gsub(" mean\\s*", ' Mean', type_feature_columns) # replace mean
  type_feature_columns = gsub(" std\\s*", ' Standard Deviation', type_feature_columns) # replace std
  names(type_feature_data) = type_feature_columns
  
  ds = cbind(type_subjects, 'Activity' = type_activities, type_feature_data)
}

# build combined tidy data set of training and test data
dataset = rbind(get_data_set('train'), get_data_set('test'))

# write raw data set to file
write.table(averages_dataset, file = 'tidy_raw.txt', row.names = FALSE)

# create tidy data set of averages by grouping data by subject and activity
averages_dataset = data.table(dataset)[, lapply(.SD, mean), by = 'Subject,Activity']

# order to subject asc, activity asc
averages_dataset = averages_dataset[order(averages_dataset$Subject, averages_dataset$Activity),]

# update columns to properly update
averages_dataset_columns = names(averages_dataset)
setnames(averages_dataset, averages_dataset_columns, c(averages_dataset_columns[1:2], paste(averages_dataset_columns[3:length(averages_dataset_columns)], 'Mean')))

# write summary to file
write.table(averages_dataset, file = 'tidy_summary.txt', row.names = FALSE)