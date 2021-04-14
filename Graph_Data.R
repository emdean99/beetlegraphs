# This function is made to create graphs for the data I have collected
# on beetle survival thus far
# EMD
# April 14, 2021
#---------------------------------------------------------------------
#

#Import libraries
library(ggplot2)

#Import csv data and store as a variable as a df
surv_data <- read.csv("Data_For_Graphing - Sheet1.csv")

#Verify type of data
typeof(surv_data)
