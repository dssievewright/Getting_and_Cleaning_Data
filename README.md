# Getting and Cleaning Data Class Project

This project is designed to collect and clean data from a UCI experiment studying certain cell phone while performing various activities.  The following link contains more information about the data.

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones# 

There are two other scripts in this repo.  

run_analysis.R contains the R code that completes the follwoing tasks:
* Downloads the data and loads it into R. 
* Cleans the data. 
* Groups it by activity and participant.
* Computes the average of the means and standard deviations for each signal.
These averages will be stored in a table called tidydata and can be viewed by calling View(tidydata)

CodeBook.md contains information about the data set, the variables in it, and the transformations used to clean up the data. 