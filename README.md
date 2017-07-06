# Getting and Cleaning Data Class Project

This project is designed to collect and clean data from a UCI experiment collecting cell phone data from participants while they performed certain activities.  The following link contains more information about the data.

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones# 

There are two other scripts and a table in this repository.  

run_analysis.R contains the R code that completes the follwoing tasks:
* Downloads the data and loads it into R. 
* Cleans the data, selecting out the means and standard deviations of the signals. 
* Groups it by activity and participant.
* Computes the averages of the mean and standard deviation for each signal in each group.
These averages will be stored in a table called tidydata and can be viewed by calling View(tidydata)

CodeBook.md contains information about the data set, the variables in it, and the transformations used to clean up the data. 

GCD_project.csv is a copy of the tidydata table after the run_analysis.R script was completed.
