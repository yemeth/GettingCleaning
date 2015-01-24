# Getting and Cleaning Data Course Project

## DataSet Information

(from: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

## README.md
This file.

## run_analysis.R
This file downloads, extracts and reads the dataset files in order to create a tidy dataset. The steps are:

    1.- Download and extract the Dataset in the directory ./Dataset . This step is only performed if the directory or if the Dataset.zip  do not exist.

    2.- Read the dataset files: test, train, features and activities.

    3.- Searches for the columns related to the desired mean and standard deviation measures. Ignores the rest of the features.

        3.1- meanFreq measures are also ignored. An alternative line that includes this measures is included, but commented.

    4.- Renames the columns to make them a little bit more verbose (t -> time, f -> frequency, and so on).

    5.- Merges all the files into a sinlge variable, including activity names.

    6.- Calculates the mean of each measure for each different pair (subjectID,activityID).

    7.- Writes the dataset to the "tidy_data.txt" file.


## codebook.{txt,pdf,md}
The code book file, that includes the necessary information about the features considered. Uses much information found in the original Dataset files.

## codebook.tex
The LaTeX file used to create the codebook.pdf file.

## tidy_data.txt
The result file written by run_analysis.txt