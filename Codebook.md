Codebook - Analysis of Human Activity Recognition Using Smartphones Dataset

Subject

	Numerical Identifier of each person taking part in the data gathering
	
	Values: 1-30 inclusive

Activity

	Names of the types of activity recorded
	
	Values:
		WALKING
		WALKING_UPSTAIRS
		WALKING_DOWNSTAIRS
		SITTING
		STANDING
		LAYING
		
Measurements:

	A series of results each one the mean of the mean or standard deviation of the results for each subject and for each activity
	Each measurement name is composed a several identifiers which together uniquely mark out each measurement
	The identifiers used in the measurement names are as follows:
	
	TimeDomain		- measurements taken in the time domain
	FFT				- measurements that had a Fast Fourier Transform performed on them
	Accelerometer	- measurements taken from the accelerometer in the phone
	Gyroscope		- measurements taken from the gyroscope in the phone
	Body 			- acceleration measurements resulting from body movement
	Gravity			- acceleration measurements resulting from gravity
	Jerk			- body linear acceleration and angular velocity were derived in time to obtain Jerk signals
	Mean			- mean of the measurements taken
	Std				- standard deviations of the measurements taken
	Mag				- Magnitude of 3-dimensional measurements
	X				- measurements taken in the X-axis
	Y				- measurements taken in the Y-axis
	Z				- measurements taken in the Z-axis
	Angle			- angle between 2 vectors	
	
	values: all raw measurements were normalised to lie between -1 and 1, so the mean measurements of the mean and standard deviation will lie between those values too. 
	
