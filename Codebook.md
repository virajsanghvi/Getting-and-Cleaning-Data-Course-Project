## Original features info

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

- tBodyAcc-XYZ
- tGravityAcc-XYZ
- tBodyAccJerk-XYZ
- tBodyGyro-XYZ
- tBodyGyroJerk-XYZ
- tBodyAccMag
- tGravityAccMag
- tBodyAccJerkMag
- tBodyGyroMag
- tBodyGyroJerkMag
- fBodyAcc-XYZ
- fBodyAccJerk-XYZ
- fBodyGyro-XYZ
- fBodyAccMag
- fBodyAccJerkMag
- fBodyGyroMag
- fBodyGyroJerkMag
- 
The set of variables that were estimated from these signals are: 

- mean(): Mean value
- std(): Standard deviation
- mad(): Median absolute deviation 
- max(): Largest value in array
- min(): Smallest value in array
- sma(): Signal magnitude area
- energy(): Energy measure. Sum of the squares divided by the number of values. 
- iqr(): Interquartile range 
- entropy(): Signal entropy
- arCoeff(): Autorregresion coefficients with Burg order equal to 4
- correlation(): correlation coefficient between two signals
- maxInds(): index of the frequency component with largest magnitude
- meanFreq(): Weighted average of the frequency components to obtain a mean frequency
- skewness(): skewness of the frequency domain signal 
- kurtosis(): kurtosis of the frequency domain signal 
- bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
- angle(): Angle between to vectors.
- 
Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

- gravityMean
- tBodyAccMean
- tBodyAccJerkMean
- tBodyGyroMean
- tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt' 

## Data dictionary tidy_raw.txt

<dl>
<dt>Subject</dt>
<dd>Subject of the observation (integer 1..30) </dd>
<dt>Activity</dt>
<dd>Activity the subject is undertaking (WALKING, WALKING_UPSTAIRS, WALKING_UPSTAIRS, SITTING, STANDING, LAYING)    </dd>
<dt>Body Accelerometer X Mean</dt>
<dd>Mean of the Body Accelerometer in X axis (float) </dd>
<dt>Body Accelerometer Y Mean</dt>
<dd>Mean of the Body Accelerometer in Y axis (float) </dd>
<dt>Body Accelerometer Z Mean</dt>
<dd>Mean of the Body Accelerometer in Z axis (float) </dd>
<dt>Body Accelerometer X Standard Deviation</dt>
<dd>Standard Deviation of the Body Accelerometer in X axis (float)</dd>
<dt>Body Accelerometer Y Standard Deviation</dt>
<dd>Standard Deviation of the Body Accelerometer in Y axis (float)</dd>
<dt>Body Accelerometer Z Standard Deviation</dt>
<dd>Standard Deviation of the Body Accelerometer in Z axis (float)</dd>
<dt>Gravity Accelerometer X Mean</dt>
<dd>Mean of Gravity Accelerometer in X axis (float)</dd>
<dt>Gravity Accelerometer Y Mean</dt>
<dd>Mean of Gravity Accelerometer in Y axis (float)</dd>
<dt>Gravity Accelerometer Z Mean</dt>
<dd>Mean of Gravity Accelerometer in Z axis (float)</dd>
<dt>Gravity Accelerometer X Standard Deviation</dt>
<dd>Standard Deviation of Gravity Accelerometer in X axis (float)</dd>
<dt>Gravity Accelerometer Y Standard Deviation</dt>
<dd>Standard Deviation of Gravity Accelerometer in Y axis (float)</dd>
<dt>Gravity Accelerometer Z Standard Deviation</dt>
<dd>Standard Deviation of Gravity Accelerometer in Z axis (float)</dd>
<dt>Body Accelerometer Jerk X Mean</dt>
<dd>Mean of Body Accelerometer Jerk in X Axis (float)</dd>
<dt>Body Accelerometer Jerk Y Mean</dt>
<dd>Mean of Body Accelerometer Jerk in Y Axis (float)</dd>
<dt>Body Accelerometer Jerk Z Mean</dt>
<dd>Mean of Body Accelerometer Jerk in Z Axis (float)</dd>
<dt>Body Accelerometer Jerk X Standard Deviation</dt>
<dd>Standard Deviation of Body Accelerometer Jerk in X Axis (float)</dd>
<dt>Body Accelerometer Jerk Y Standard Deviation</dt>
<dd>Standard Deviation of Body Accelerometer Jerk in Y Axis (float)</dd>
<dt>Body Accelerometer Jerk Z Standard Deviation</dt>
<dd>Standard Deviation of Body Accelerometer Jerk in Z Axis (float)</dd>
<dt>Body Gyroscope X Mean</dt>
<dd>Mean of Body Gyroscope in X Axis (float) </dd>
<dt>Body Gyroscope Y Mean</dt>
<dd>Mean of Body Gyroscope in Y Axis (float) </dd>
<dt>Body Gyroscope Z Mean</dt>
<dd>Mean of Body Gyroscope in Z Axis (float) </dd>
<dt>Body Gyroscope X Standard Deviation</dt>
<dd>Standard Deviation of Body Gyroscope in X Axis (float) </dd>
<dt>Body Gyroscope Y Standard Deviation</dt>
<dd>Standard Deviation of Body Gyroscope in Y Axis (float) </dd>
<dt>Body Gyroscope Z Standard Deviation</dt>
<dd>Standard Deviation of Body Gyroscope in Z Axis (float) </dd>
<dt>Body Gyroscope Jerk X Mean</dt>
<dd>Mean of Body Gyroscope Jerk in X Axis (float) </dd>
<dt>Body Gyroscope Jerk Y Mean</dt>
<dd>Mean of Body Gyroscope Jerk in Y Axis (float) </dd>
<dt>Body Gyroscope Jerk Z Mean</dt>
<dd>Mean of Body Gyroscope Jerk in Z Axis (float) </dd>
<dt>Body Gyroscope Jerk X Standard Deviation</dt>
<dd>Standard Deviation of Body Gyroscope Jerk in X Axis (float) </dd>
<dt>Body Gyroscope Jerk Y Standard Deviation</dt>
<dd>Standard Deviation of Body Gyroscope Jerk in Y Axis (float) </dd>
<dt>Body Gyroscope Jerk Z Standard Deviation</dt>
<dd>Standard Deviation of Body Gyroscope Jerk in Z Axis (float) </dd>
<dt>Body Accelerometer Magnitude Mean</dt>
<dd>Mean of Body Accelerometer Magnitude (float)</dd>
<dt>Body Accelerometer Magnitude Standard Deviation</dt>
<dd>Standard Deviation of Body Accelerometer Magnitude (float)</dd>
<dt>Gravity Accelerometer Magnitude Mean</dt>
<dd>Mean of the Gravity Accelerometer Magnitude (float) </dd>
<dt>Gravity Accelerometer Magnitude Standard Deviation</dt>
<dd>Standard Deviation of the Gravity Accelerometer Magnitude (float) </dd>
<dt>Body Accelerometer Jerk Magnitude Mean</dt>
<dd>Mean of the Body Accelerometer Jerk Magnitude (float) </dd>
<dt>Body Accelerometer Jerk Magnitude Standard Deviation</dt>
<dd>Standard Deviation of the Body Accelerometer Jerk Magnitude (float) </dd>
<dt>Body Gyroscope Magnitude Mean</dt>
<dd>Mean of the Body Gyroscope Magnitude Mean (float)</dd>
<dt>Body Gyroscope Magnitude Standard Deviation</dt>
<dd>Standard Deviation of the Body Gyroscope Magnitude Mean (float)</dd>
<dt>Body Gyroscope Jerk Magnitude Mean</dt>
<dd>Body of the Gyroscope Jerk Magnitude (float);</dd>
<dt>Body Gyroscope Jerk Magnitude Standard Deviation</dt>
<dd>Standard Deviation of the Gyroscope Jerk Magnitude (float);</dd>
<dt>Fast Fourier Transform of Body Accelerometer X Mean</dt>
<dd>Fast Fourier Transform of the Body Accelerometer Mean in X axis (float) </dd>
<dt>Fast Fourier Transform of Body Accelerometer Y Mean</dt>
<dd>Fast Fourier Transform of the Body Accelerometer Mean in X axis (float) </dd>
<dt>Fast Fourier Transform of Body Accelerometer Z Mean</dt>
<dd>Fast Fourier Transform of the Body Accelerometer Mean in X axis (float) </dd>
<dt>Fast Fourier Transform of Body Accelerometer X Standard Deviation</dt>
<dd>Fast Fourier Transform of the Body Accelerometer Standard Deviation in X axis (float) </dd>
<dt>Fast Fourier Transform of Body Accelerometer Y Standard Deviation</dt>
<dd>Fast Fourier Transform of the Body Accelerometer Standard Deviation in Y axis (float) </dd>
<dt>Fast Fourier Transform of Body Accelerometer Z Standard Deviation</dt>
<dd>Fast Fourier Transform of the Body Accelerometer Standard Deviation in Z axis (float) </dd>
<dt>Fast Fourier Transform of Body Accelerometer Jerk X Mean</dt>
<dd>Fast Fourier Transform of the Body Accelerometer Jerk Mean in X axis (float) </dd>
<dt>Fast Fourier Transform of Body Accelerometer Jerk Y Mean</dt>
<dd>Fast Fourier Transform of the Body Accelerometer Jerk Mean in Y axis (float) </dd>
<dt>Fast Fourier Transform of Body Accelerometer Jerk Z Mean</dt>
<dd>Fast Fourier Transform of the Body Accelerometer Jerk Mean in Z axis (float) </dd>
<dt>Fast Fourier Transform of Body Accelerometer Jerk X Standard Deviation</dt>
<dd>Fast Fourier Transform of the Body Accelerometer Jerk Standard Deviation in X axis (float) </dd>
<dt>Fast Fourier Transform of Body Accelerometer Jerk Y Standard Deviation</dt>
<dd>Fast Fourier Transform of the Body Accelerometer Jerk Standard Deviation in Y axis (float) </dd>
<dt>Fast Fourier Transform of Body Accelerometer Jerk Z Standard Deviation</dt>
<dd>Fast Fourier Transform of the Body Accelerometer Jerk Standard Deviation in Z axis (float) </dd>
<dt>Fast Fourier Transform of Body Gyroscope X Mean</dt>
<dd>Fast Fourier Transform of Body Gyroscope Mean in X Axis (float)</dd>
<dt>Fast Fourier Transform of Body Gyroscope Y Mean</dt>
<dd>Fast Fourier Transform of Body Gyroscope Mean in Y Axis (float)</dd>
<dt>Fast Fourier Transform of Body Gyroscope Z Mean</dt>
<dd>Fast Fourier Transform of Body Gyroscope Mean in Z Axis (float)</dd>
<dt>Fast Fourier Transform of Body Gyroscope X Standard Deviation</dt>
<dd>Fast Fourier Transform of Body Gyroscope Standard Deviation in X axis (float)</dd>
<dt>Fast Fourier Transform of Body Gyroscope Y Standard Deviation</dt>
<dd>Fast Fourier Transform of Body Gyroscope Standard Deviation in Y axis (float)</dd>
<dt>Fast Fourier Transform of Body Gyroscope Z Standard Deviation</dt>
<dd>Fast Fourier Transform of Body Gyroscope Standard Deviation in Z axis (float)</dd>
<dt>Fast Fourier Transform of Body Accelerometer Magnitude Mean</dt>
<dd>Fast Fourier Transform of Body Accelerometer Magnitude Mean (float)</dd>
<dt>Fast Fourier Transform of Body Accelerometer Magnitude Standard Deviation</dt>
<dd>Fast Fourier Transform of Body Accelerometer Magnitude Standard Deviation (float)</dd>
<dt>Fast Fourier Transform of Body Body Accelerometer Jerk Magnitude Mean</dt>
<dd>Fast Fourier Transform of Body Body Accelerometer Jerk Magnitude Mean (float)</dd>
<dt>Fast Fourier Transform of Body Body Accelerometer Jerk Magnitude Standard Deviation</dt>
<dd>Fast Fourier Transform of Body Body Accelerometer Jerk Magnitude Standard Deviation (float)</dd>
<dt>Fast Fourier Transform of Body Body Gyroscope Magnitude Mean</dt>
<dd>Fast Fourier Transform of Body Body Gyroscope Magnitude Mean (float)</dd>
<dt>Fast Fourier Transform of Body Body Gyroscope Magnitude Standard Deviation</dt>
<dd>Fast Fourier Transform of Body Body Gyroscope Magnitude Standard Deviation (float)</dd>
<dt>Fast Fourier Transform of Body Body Gyroscope Jerk Magnitude Mean</dt>
<dd>Fast Fourier Transform of Body Body Gyroscope Jerk Magnitude Mean (float)</dd>
<dt>Fast Fourier Transform of Body Body Gyroscope Jerk Magnitude Standard Deviation</dt>
<dd>Fast Fourier Transform of Body Body Gyroscope Jerk Magnitude Standard Deviation (float)</dd>
</dl>

## Data dictionary tidy_summary.txt
<dl>
<dt>Subject</dt>
<dd>Subject of the observation (integer 1..30) </dd>
<dt>Activity</dt>
<dd>Activity the subject is undertaking (WALKING, WALKING_UPSTAIRS, WALKING_UPSTAIRS, SITTING, STANDING, LAYING)    </dd>
<dt>Body Accelerometer X Mean Mean</dt>
<dd>Mean of the Mean of the Body Accelerometer in X axis (float) </dd>
<dt>Body Accelerometer Y Mean Mean</dt>
<dd>Mean of the Mean of the Body Accelerometer in Y axis (float) </dd>
<dt>Body Accelerometer Z Mean Mean</dt>
<dd>Mean of the Mean of the Body Accelerometer in Z axis (float) </dd>
<dt>Body Accelerometer X Standard Deviation Mean</dt>
<dd>Mean of the Standard Deviation of the Body Accelerometer in X axis (float)</dd>
<dt>Body Accelerometer Y Standard Deviation Mean</dt>
<dd>Mean of the Standard Deviation of the Body Accelerometer in Y axis (float)</dd>
<dt>Body Accelerometer Z Standard Deviation Mean</dt>
<dd>Mean of the Standard Deviation of the Body Accelerometer in Z axis (float)</dd>
<dt>Gravity Accelerometer X Mean Mean</dt>
<dd>Mean of the Mean of Gravity Accelerometer in X axis (float)</dd>
<dt>Gravity Accelerometer Y Mean Mean</dt>
<dd>Mean of the Mean of Gravity Accelerometer in Y axis (float)</dd>
<dt>Gravity Accelerometer Z Mean Mean</dt>
<dd>Mean of the Mean of Gravity Accelerometer in Z axis (float)</dd>
<dt>Gravity Accelerometer X Standard Deviation Mean</dt>
<dd>Mean of the Standard Deviation of Gravity Accelerometer in X axis (float)</dd>
<dt>Gravity Accelerometer Y Standard Deviation Mean</dt>
<dd>Mean of the Standard Deviation of Gravity Accelerometer in Y axis (float)</dd>
<dt>Gravity Accelerometer Z Standard Deviation Mean</dt>
<dd>Mean of the Standard Deviation of Gravity Accelerometer in Z axis (float)</dd>
<dt>Body Accelerometer Jerk X Mean Mean</dt>
<dd>Mean of the Mean of Body Accelerometer Jerk in X Axis (float)</dd>
<dt>Body Accelerometer Jerk Y Mean Mean</dt>
<dd>Mean of the Mean of Body Accelerometer Jerk in Y Axis (float)</dd>
<dt>Body Accelerometer Jerk Z Mean Mean</dt>
<dd>Mean of the Mean of Body Accelerometer Jerk in Z Axis (float)</dd>
<dt>Body Accelerometer Jerk X Standard Deviation Mean</dt>
<dd>Mean of the Standard Deviation of Body Accelerometer Jerk in X Axis (float)</dd>
<dt>Body Accelerometer Jerk Y Standard Deviation Mean</dt>
<dd>Mean of the Standard Deviation of Body Accelerometer Jerk in Y Axis (float)</dd>
<dt>Body Accelerometer Jerk Z Standard Deviation Mean</dt>
<dd>Mean of the Standard Deviation of Body Accelerometer Jerk in Z Axis (float)</dd>
<dt>Body Gyroscope X Mean Mean</dt>
<dd>Mean of the Mean of Body Gyroscope in X Axis (float) </dd>
<dt>Body Gyroscope Y Mean Mean</dt>
<dd>Mean of the Mean of Body Gyroscope in Y Axis (float) </dd>
<dt>Body Gyroscope Z Mean Mean</dt>
<dd>Mean of the Mean of Body Gyroscope in Z Axis (float) </dd>
<dt>Body Gyroscope X Standard Deviation Mean</dt>
<dd>Mean of the Standard Deviation of Body Gyroscope in X Axis (float) </dd>
<dt>Body Gyroscope Y Standard Deviation Mean</dt>
<dd>Mean of the Standard Deviation of Body Gyroscope in Y Axis (float) </dd>
<dt>Body Gyroscope Z Standard Deviation Mean</dt>
<dd>Mean of the Standard Deviation of Body Gyroscope in Z Axis (float) </dd>
<dt>Body Gyroscope Jerk X Mean Mean</dt>
<dd>Mean of the Mean of Body Gyroscope Jerk in X Axis (float) </dd>
<dt>Body Gyroscope Jerk Y Mean Mean</dt>
<dd>Mean of the Mean of Body Gyroscope Jerk in Y Axis (float) </dd>
<dt>Body Gyroscope Jerk Z Mean Mean</dt>
<dd>Mean of the Mean of Body Gyroscope Jerk in Z Axis (float) </dd>
<dt>Body Gyroscope Jerk X Standard Deviation Mean</dt>
<dd>Mean of the Standard Deviation of Body Gyroscope Jerk in X Axis (float) </dd>
<dt>Body Gyroscope Jerk Y Standard Deviation Mean</dt>
<dd>Mean of the Standard Deviation of Body Gyroscope Jerk in Y Axis (float) </dd>
<dt>Body Gyroscope Jerk Z Standard Deviation Mean</dt>
<dd>Mean of the Standard Deviation of Body Gyroscope Jerk in Z Axis (float) </dd>
<dt>Body Accelerometer Magnitude Mean Mean</dt>
<dd>Mean of the Mean of Body Accelerometer Magnitude (float)</dd>
<dt>Body Accelerometer Magnitude Standard Deviation Mean</dt>
<dd>Mean of the Standard Deviation of Body Accelerometer Magnitude (float)</dd>
<dt>Gravity Accelerometer Magnitude Mean Mean</dt>
<dd>Mean of the Mean of the Gravity Accelerometer Magnitude (float) </dd>
<dt>Gravity Accelerometer Magnitude Standard Deviation Mean</dt>
<dd>Mean of the Standard Deviation of the Gravity Accelerometer Magnitude (float) </dd>
<dt>Body Accelerometer Jerk Magnitude Mean Mean</dt>
<dd>Mean of the Mean of the Body Accelerometer Jerk Magnitude (float) </dd>
<dt>Body Accelerometer Jerk Magnitude Standard Deviation Mean</dt>
<dd>Mean of the Standard Deviation of the Body Accelerometer Jerk Magnitude (float) </dd>
<dt>Body Gyroscope Magnitude Mean Mean</dt>
<dd>Mean of the Mean of the Body Gyroscope Magnitude Mean (float)</dd>
<dt>Body Gyroscope Magnitude Standard Deviation Mean</dt>
<dd>Mean of the Standard Deviation of the Body Gyroscope Magnitude Mean (float)</dd>
<dt>Body Gyroscope Jerk Magnitude Mean Mean</dt>
<dd>Mean of the Body of the Gyroscope Jerk Magnitude (float);</dd>
<dt>Body Gyroscope Jerk Magnitude Standard Deviation Mean</dt>
<dd>Mean of the Standard Deviation of the Gyroscope Jerk Magnitude (float);</dd>
<dt>Fast Fourier Transform of Body Accelerometer X Mean Mean</dt>
<dd>Mean of the Fast Fourier Transform of the Body Accelerometer Mean in X axis (float) </dd>
<dt>Fast Fourier Transform of Body Accelerometer Y Mean Mean</dt>
<dd>Mean of the Fast Fourier Transform of the Body Accelerometer Mean in X axis (float) </dd>
<dt>Fast Fourier Transform of Body Accelerometer Z Mean Mean</dt>
<dd>Mean of the Fast Fourier Transform of the Body Accelerometer Mean in X axis (float) </dd>
<dt>Fast Fourier Transform of Body Accelerometer X Standard Deviation Mean</dt>
<dd>Mean of the Fast Fourier Transform of the Body Accelerometer Standard Deviation in X axis (float) </dd>
<dt>Fast Fourier Transform of Body Accelerometer Y Standard Deviation Mean</dt>
<dd>Mean of the Fast Fourier Transform of the Body Accelerometer Standard Deviation in Y axis (float) </dd>
<dt>Fast Fourier Transform of Body Accelerometer Z Standard Deviation Mean</dt>
<dd>Mean of the Fast Fourier Transform of the Body Accelerometer Standard Deviation in Z axis (float) </dd>
<dt>Fast Fourier Transform of Body Accelerometer Jerk X Mean Mean</dt>
<dd>Mean of the Fast Fourier Transform of the Body Accelerometer Jerk Mean in X axis (float) </dd>
<dt>Fast Fourier Transform of Body Accelerometer Jerk Y Mean Mean</dt>
<dd>Mean of the Fast Fourier Transform of the Body Accelerometer Jerk Mean in Y axis (float) </dd>
<dt>Fast Fourier Transform of Body Accelerometer Jerk Z Mean Mean</dt>
<dd>Mean of the Fast Fourier Transform of the Body Accelerometer Jerk Mean in Z axis (float) </dd>
<dt>Fast Fourier Transform of Body Accelerometer Jerk X Standard Deviation Mean</dt>
<dd>Mean of the Fast Fourier Transform of the Body Accelerometer Jerk Standard Deviation in X axis (float) </dd>
<dt>Fast Fourier Transform of Body Accelerometer Jerk Y Standard Deviation Mean</dt>
<dd>Mean of the Fast Fourier Transform of the Body Accelerometer Jerk Standard Deviation in Y axis (float) </dd>
<dt>Fast Fourier Transform of Body Accelerometer Jerk Z Standard Deviation Mean</dt>
<dd>Mean of the Fast Fourier Transform of the Body Accelerometer Jerk Standard Deviation in Z axis (float) </dd>
<dt>Fast Fourier Transform of Body Gyroscope X Mean Mean</dt>
<dd>Mean of the Fast Fourier Transform of Body Gyroscope Mean in X Axis (float)</dd>
<dt>Fast Fourier Transform of Body Gyroscope Y Mean Mean</dt>
<dd>Mean of the Fast Fourier Transform of Body Gyroscope Mean in Y Axis (float)</dd>
<dt>Fast Fourier Transform of Body Gyroscope Z Mean Mean</dt>
<dd>Mean of the Fast Fourier Transform of Body Gyroscope Mean in Z Axis (float)</dd>
<dt>Fast Fourier Transform of Body Gyroscope X Standard Deviation Mean</dt>
<dd>Mean of the Fast Fourier Transform of Body Gyroscope Standard Deviation in X axis (float)</dd>
<dt>Fast Fourier Transform of Body Gyroscope Y Standard Deviation Mean</dt>
<dd>Mean of the Fast Fourier Transform of Body Gyroscope Standard Deviation in Y axis (float)</dd>
<dt>Fast Fourier Transform of Body Gyroscope Z Standard Deviation Mean</dt>
<dd>Mean of the Fast Fourier Transform of Body Gyroscope Standard Deviation in Z axis (float)</dd>
<dt>Fast Fourier Transform of Body Accelerometer Magnitude Mean Mean</dt>
<dd>Mean of the Fast Fourier Transform of Body Accelerometer Magnitude Mean (float)</dd>
<dt>Fast Fourier Transform of Body Accelerometer Magnitude Standard Deviation Mean</dt>
<dd>Mean of the Fast Fourier Transform of Body Accelerometer Magnitude Standard Deviation (float)</dd>
<dt>Fast Fourier Transform of Body Body Accelerometer Jerk Magnitude Mean Mean</dt>
<dd>Mean of the Fast Fourier Transform of Body Body Accelerometer Jerk Magnitude Mean (float)</dd>
<dt>Fast Fourier Transform of Body Body Accelerometer Jerk Magnitude Standard Deviation Mean</dt>
<dd>Mean of the Fast Fourier Transform of Body Body Accelerometer Jerk Magnitude Standard Deviation (float)</dd>
<dt>Fast Fourier Transform of Body Body Gyroscope Magnitude Mean Mean</dt>
<dd>Mean of the Fast Fourier Transform of Body Body Gyroscope Magnitude Mean (float)</dd>
<dt>Fast Fourier Transform of Body Body Gyroscope Magnitude Standard Deviation Mean</dt>
<dd>Mean of the Fast Fourier Transform of Body Body Gyroscope Magnitude Standard Deviation (float)</dd>
<dt>Fast Fourier Transform of Body Body Gyroscope Jerk Magnitude Mean Mean</dt>
<dd>Mean of the Fast Fourier Transform of Body Body Gyroscope Jerk Magnitude Mean (float)</dd>
<dt>Fast Fourier Transform of Body Body Gyroscope Jerk Magnitude Standard Deviation Mean</dt>
<dd>Mean of the Fast Fourier Transform of Body Body Gyroscope Jerk Magnitude Standard Deviation (float)</dd>
</dl>

