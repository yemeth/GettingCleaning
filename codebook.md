## CODE BOOK

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.


# subjectID
    Unique identifier for each of the volunteers.
        1..30

# activityID
    Unique identifier for the activity the subject was doing when the measurement was taken.
        1 .WALKING
        2 .WALKING_UPSTAIRS
        3 .WALKING_DOWNSTAIRS
        4 .SITTING
        5 .STANDING
        6 .LAYING

# activityName
    Name of the activity the activity the subject was doing when the measurement was taken.
        WALKING
        WALKING_UPSTAIRS
        WALKING_DOWNSTAIRS
        SITTING
        STANDING
        LAYING

# time-BodyAccelerometer-mean-X, time-BodyAccelerometer-mean-Y, time-BodyAccelerometer-mean-Z
    Mean value for the body linear acceleration for the X, Y or Z axis in the time domain.
        Numeric value. Possibly negative.

# time-BodyAccelerometer-std-X, time-BodyAccelerometer-std-Y, time-BodyAccelerometer-std-Z
    Standard deviation value for the body linear acceleration for the X, Y or Z axis in the time domain.
        Numeric value. Possibly negative.

# time-Gravity-Accelerometer-mean-X, time-Gravity-Accelerometer-mean-Y, time-Gravity-Accelerometer-mean-Z
    Mean value for the gravity linear acceleration for the X, Y or Z axis in the time domain.
        Numeric value. Possibly negative.

# time-Gravity-Accelerometer-std-X, time-Gravity-Accelerometer-std-Y, time-Gravity-Accelerometer-std-Z
    Standard deviation value for the gravity linear acceleration for the X, Y or Z axis in the time domain.
        Numeric value. Possibly negative.

# time-BodyAccelerometerJerk-mean-X, time-BodyAccelerometerJerk-mean-Y, time-BodyAccelerometerJerk-mean-Z
    Mean value for the body linear acceleration jerk for the X, Y or Z axis in the time domain.
        Numeric value. Possibly negative.

# time-BodyAccelerometerJerk-std-X, time-BodyAccelerometerJerk-std-Y, time-BodyAccelerometerJerk-std-Z
    Standard deviation value for the body linear acceleration jerk for the X, Y or Z axis in the time domain.
        Numeric value. Possibly negative.

# time-BodyGyroscope-mean-X, time-BodyGyroscope-mean-Y, time-BodyGyroscope-mean-Z
    Mean value for the body angular velocity for the X, Y or Z axis in the time domain.
        Numeric value. Possibly negative.

# time-BodyGyroscope-std-X, time-BodyGyroscope-std-Y, time-BodyGyroscope-std-Z
    Standard deviation value for the body angular velocity for the X, Y or Z axis in the time domain.
        Numeric value. Possibly negative.

# time-BodyGyroscopeJerk-mean-X, time-BodyGyroscopeJerk-mean-Y, time-BodyGyroscopeJerk-mean-Z
    Mean value for the body angular velocity jerk for the X, Y or Z axis in the time domain.
        Numeric value. Possibly negative.

# time-BodyGyroscopeJerk-std-X, time-BodyGyroscopeJerk-std-Y, time-BodyGyroscopeJerk-std-Z
    Standard deviation value for the body angular velocity jerk for the X, Y or Z axis in the time domain.
        Numeric value. Possibly negative.

# time-BodyAccelerometerMagnitude-mean
    Mean value for the body linear acceleration magnitude using the euclidean norm in the time domain.
        Numeric value. Possibly negative.

# time-BodyAccelerometerMagnitude-std
    Standard deviation value for the body linear acceleration magnitude using the euclidean norm in the time domain.
        Numeric value. Possibly negative.

# time-GravityAccelerometerMagnitude-mean
    Mean value for the gravity linear acceleration magnitude using the euclidean norm in the time domain.
        Numeric value. Possibly negative.

# time-GravityAccelerometerMagnitude-std
    Standard deviation value for the gravity linear acceleration magnitude using the euclidean norm in the time domain.
        Numeric value. Possibly negative.

# time-BodyAccelerometerJerkMagnitude-mean
    Mean value for the body linear acceleration jerk magnitude using the euclidean norm in the time domain.
        Numeric value. Possibly negative.

# time-BodyAccelerometerJerkMagnitude-std
    Standard deviation value for the body linear acceleration jerk magnitude using the euclidean norm in the time domain.
        Numeric value. Possibly negative.

# time-BodyGyroscopeMagnitude-mean
    Mean value for the body angular velocity magnitude using the euclidean norm in the time domain.
        Numeric value. Possibly negative.

# time-BodyGyroscopeMagnitude-std
    Standard deviation value for the body angular velocity magnitude using the euclidean norm in the time domain.
        Numeric value. Possibly negative.

# time-BodyGyroscopeJerkMagnitude-mean
    Mean value for the body angular velocity jerk magnitude using the euclidean norm in the time domain.
        Numeric value. Possibly negative.

# time-BodyGyroscopeJerkMagnitude-std
    Standard deviation value for the body angular velocity jerk magnitude using the euclidean norm in the time domain.
        Numeric value. Possibly negative.

# frequency-BodyAccelerometer-mean-X, frequency-BodyAccelerometer-mean-Y, frequency-BodyAccelerometer-mean-Z
    Mean value for the body linear acceleration for the X, Y or Z axis in the frequency domain.
        Numeric value. Possibly negative.

# frequency-BodyAccelerometer-std-X, frequency-BodyAccelerometer-std-Y, frequency-BodyAccelerometer-std-Z
    Standard deviation value for the body linear acceleration for the X, Y or Z axis in the frequency domain.
        Numeric value. Possibly negative.

# frequency-BodyAccelerometerJerk-mean-X, frequency-BodyAccelerometerJerk-mean-Y, frequency-BodyAccelerometerJerk-mean-Z
    Mean value for the body linear acceleration jerk for the X, Y or Z axis in the frequency domain.
        Numeric value. Possibly negative.

# frequency-BodyAccelerometerJerk-std-X, frequency-BodyAccelerometerJerk-std-Y, frequency-BodyAccelerometerJerk-std-Z
    Standard deviation value for the body linear acceleration jerk for the X, Y or Z axis in the frequency domain.
        Numeric value. Possibly negative.

# frequency-BodyGyroscope-mean-X, frequency-BodyGyroscope-mean-Y, frequency-BodyGyroscope-mean-Z
    Mean value for the body angular velocity for the X, Y or Z axis in the frequency domain.
        Numeric value. Possibly negative.

# frequency-BodyGyroscope-std-X, frequency-BodyGyroscope-std-Y, frequency-BodyGyroscope-std-Z
    Standard deviation value for the body angular velocity for the X, Y or Z axis in the frequency domain.
        Numeric value. Possibly negative.

# frequency-BodyGyroscopeJerk-mean-X, frequency-BodyGyroscopeJerk-mean-Y, frequency-BodyGyroscopeJerk-mean-Z
    Mean value for the body angular velocity jerk for the X, Y or Z axis in the frequency domain.
        Numeric value. Possibly negative.

# frequency-BodyGyroscopeJerk-std-X, frequency-BodyGyroscopeJerk-std-Y, frequency-BodyGyroscopeJerk-std-Z
    Standard deviation value for the body angular velocity jerk for the X, Y or Z axis in the frequency domain.
        Numeric value. Possibly negative.

# frequency-BodyAccelerometerMagnitude-mean
    Mean value for the body linear acceleration magnitude using the euclidean norm in the frequency domain.
        Numeric value. Possibly negative.

# frequency-BodyAccelerometerMagnitude-std
    Standard deviation value for the body linear acceleration magnitude using the euclidean norm in the frequency domain.
        Numeric value. Possibly negative.

# frequency-BodyAccelerometerJerkMagnitude-mean
    Mean value for the body linear acceleration jerk magnitude using the euclidean norm in the frequency domain.
        Numeric value. Possibly negative.

# frequency-BodyAccelerometerJerkMagnitude-std
    Standard deviation value for the body linear acceleration jerk magnitude using the euclidean norm in the frequency domain.
        Numeric value. Possibly negative.

# frequency-BodyGyroscopeMagnitude-mean
    Mean value for the body angular velocity magnitude using the euclidean norm in the frequency domain.
        Numeric value. Possibly negative.

# frequency-BodyGyroscopeMagnitude-std
    Standard deviation value for the body angular velocity magnitude using the euclidean norm in the frequency domain.
        Numeric value. Possibly negative.

# frequency-BodyGyroscopeJerkMagnitude-mean
    Mean value for the body angular velocity jerk magnitude using the euclidean norm in the frequency domain.
        Numeric value. Possibly negative.

# frequency-BodyGyroscopeJerkMagnitude-std
    Standard deviation value for the body angular velocity jerk magnitude using the euclidean norm in the frequency domain.
        Numeric value. Possibly negative.
