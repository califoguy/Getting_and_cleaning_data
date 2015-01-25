###Getting and Cleaning Data: Course Project
##Introduction

This repository contains work for the "Getting and Cleaning data", part of the Data Science specialization.

###The data set

The 561 unlabeled features are found in the x_test.txt. The activity labels are in the y_test.txt file. The test subjects are in the subject_test.txt file.

The same holds good for the training set.

###The script and the tidy dataset

The script called run_analysis.R will merge the test and training sets together. 

The program uses rbind method to combine both data sets.
The program uses the write.file() with the row.name = FALSE as required by the assignment.

Prerequisites for this script are the following:

the UCI HAR Dataset must be extracted first.
the UCI HAR Dataset must be available in a directory called "UCI HAR Dataset"
After merging the testing and training using row binding method, labels are applied and only columns that related to the mean and standard deviation are kept for output extraction.

Finally, the script will create a tidy data set containing the means of all the columns per test subject and per activity. This tidy dataset will then be written to a file called tidy-dataset-AVG.txt, which can also be found in this repository.

###The Code Book

The CodeBook.md file explains the transformations performed and the resulting data and variables.