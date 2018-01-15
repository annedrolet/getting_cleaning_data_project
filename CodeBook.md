Each row contains, for a given subject and activity, 79 averaged signal measurements.

Identifiers
- subject : Subject identifier, integer, ranges from 1 to 30.
- activity : Activity identifier (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)

Average of measurements
  Time-domain signals
   - timeDomainBodyAccelerometerMeanX
   - timeDomainBodyAccelerometerMeanY
   - timeDomainBodyAccelerometerMeanZ
   
   - timeDomainBodyAccelerometerStandardDeviationX
   - timeDomainBodyAccelerometerStandardDeviationY
   - timeDomainBodyAccelerometerStandardDeviationZ
   
   - timeDomainGravityAccelerometerMeanX
   - timeDomainGravityAccelerometerMeanY
   - timeDomainGravityAccelerometerMeanZ
   
   - timeDomainGravityAccelerometerStandardDeviationX
   - timeDomainGravityAccelerometerStandardDeviationY
   - timeDomainGravityAccelerometerStandardDeviationZ
   
   - timeDomainBodyAccelerometerJerkMeanX
   - timeDomainBodyAccelerometerJerkMeanY
   - timeDomainBodyAccelerometerJerkMeanZ
   
   - timeDomainBodyAccelerometerJerkStandardDeviationX
   - timeDomainBodyAccelerometerJerkStandardDeviationY
   - timeDomainBodyAccelerometerJerkStandardDeviationZ
   
   - timeDomainBodyGyroscopeMeanX
   - timeDomainBodyGyroscopeMeanY
   - timeDomainBodyGyroscopeMeanZ

   - timeDomainBodyGyroscopeStandardDeviationX
   - timeDomainBodyGyroscopeStandardDeviationY
   - timeDomainBodyGyroscopeStandardDeviationZ

   - timeDomainBodyGyroscopeJerkMeanX
   - timeDomainBodyGyroscopeJerkMeanY
   - timeDomainBodyGyroscopeJerkMeanZ

   - timeDomainBodyGyroscopeJerkStandardDeviationX
   - timeDomainBodyGyroscopeJerkStandardDeviationY
   - timeDomainBodyGyroscopeJerkStandardDeviationZ

   - timeDomainBodyAccelerometerMagnitudeMean
   - timeDomainBodyAccelerometerMagnitudeStandardDeviation

   - timeDomainGravityAccelerometerMagnitudeMean
   - timeDomainGravityAccelerometerMagnitudeStandardDeviation

   - timeDomainBodyAccelerometerJerkMagnitudeMean
   - timeDomainBodyAccelerometerJerkMagnitudeStandardDeviation

   - timeDomainBodyGyroscopeMagnitudeMean
   - timeDomainBodyGyroscopeMagnitudeStandardDeviation

   - timeDomainBodyGyroscopeJerkMagnitudeMean
   - timeDomainBodyGyroscopeJerkMagnitudeStandardDeviation

  Frequency-domain signals
   - frequencyDomainBodyAccelerometerMeanX
   - frequencyDomainBodyAccelerometerMeanY
   - frequencyDomainBodyAccelerometerMeanZ
   
   - frequencyDomainBodyAccelerometerStandardDeviationX
   - frequencyDomainBodyAccelerometerStandardDeviationY
   - frequencyDomainBodyAccelerometerStandardDeviationZ

   - frequencyDomainBodyAccelerometerMeanFrequencyX
   - frequencyDomainBodyAccelerometerMeanFrequencyY
   - frequencyDomainBodyAccelerometerMeanFrequencyZ

   - frequencyDomainBodyAccelerometerJerkMeanX
   - frequencyDomainBodyAccelerometerJerkMeanY
   - frequencyDomainBodyAccelerometerJerkMeanZ

   - frequencyDomainBodyAccelerometerJerkStandardDeviationX
   - frequencyDomainBodyAccelerometerJerkStandardDeviationY
   - frequencyDomainBodyAccelerometerJerkStandardDeviationZ

   - frequencyDomainBodyAccelerometerJerkMeanFrequencyX
   - frequencyDomainBodyAccelerometerJerkMeanFrequencyY
   - frequencyDomainBodyAccelerometerJerkMeanFrequencyZ

   - frequencyDomainBodyGyroscopeMeanX
   - frequencyDomainBodyGyroscopeMeanY
   - frequencyDomainBodyGyroscopeMeanZ

   - frequencyDomainBodyGyroscopeStandardDeviationX
   - frequencyDomainBodyGyroscopeStandardDeviationY
   - frequencyDomainBodyGyroscopeStandardDeviationZ

   - frequencyDomainBodyGyroscopeMeanFrequencyX
   - frequencyDomainBodyGyroscopeMeanFrequencyY
   - frequencyDomainBodyGyroscopeMeanFrequencyZ

   - frequencyDomainBodyAccelerometerMagnitudeMean
   - frequencyDomainBodyAccelerometerMagnitudeStandardDeviation
   - frequencyDomainBodyAccelerometerMagnitudeMeanFrequency

   - frequencyDomainBodyAccelerometerJerkMagnitudeMean
   - frequencyDomainBodyAccelerometerJerkMagnitudeStandardDeviation
   - frequencyDomainBodyAccelerometerJerkMagnitudeMeanFrequency

   - frequencyDomainBodyGyroscopeMagnitudeMean
   - frequencyDomainBodyGyroscopeMagnitudeStandardDeviation
   - frequencyDomainBodyGyroscopeMagnitudeMeanFrequency

   - frequencyDomainBodyGyroscopeJerkMagnitudeMean
   - frequencyDomainBodyGyroscopeJerkMagnitudeStandardDeviation
   - frequencyDomainBodyGyroscopeJerkMagnitudeMeanFrequency
   
Transformations
- Training and test data were merged into one data set
- Measurements on the mean and standard deviation were extracted for each measurement, and others were discarded
- Activity identifiers (integers between 1 and 6) were replaced with descriptive activity names
- Variable names were replaced with descriptive variable names
  Rules:
    - Special characters removed
    - Initial "f" and "t" expanded to "frequencyDomain" and "timeDomain" respectively.
    - "Acc", "Gyro", "Mag", "Freq", "mean" & "std" replaced with "Accelerometer", "Gyroscope", "Magnitude", "Frequency", "Mean" & "StandardDeviation" respectively.
    - "BodyBody" replaced with "Body".
- Final data set created with the average of each variable for each activity and each subject.
