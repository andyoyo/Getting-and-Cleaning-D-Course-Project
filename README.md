# Getting-and-Cleaning-D-Course-Project
Course Project

This R Script works with different measurements from an experiment carried out with 
30 subjects doing 6 different activities. 

First, the script merges separate data sets (test and training) containing the observations 
on several variables, and reads other tables with labels and information about the activities and
subjects of the experiment. This creates a new dataset with all the previous information.

Having merged the test and training datasets under their correct feature (column name),
the script filters the columns we need, which are exclusively the ones considering mean or
standard deviation of each measurement.

Next, the script replaces the numbers contained in the 'activity' column with their correspondent
activity name, as described in the original 'activity labels' table.

Following the tidy data principle, the script replaces all column names' characters that make
it hard to read, leaving clean and descriptive variable names.

Last, a second new dataset is created from the previous one, by grouping the observations by
subject and activity, and later summarising the average of each variable.

The sript writes a .csv document which contains the last dataset created, which allows us to
read the clean and tidy values.
