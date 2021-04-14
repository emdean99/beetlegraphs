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

#change to data frame for reading
surv_data_frame <- as.data.frame(surv_data)

# create graphs
# bar code
p_comp<- ggplot(data = surv_data_frame, aes(x= data$Treatment, y=Mean, fill= Line)) + 
  geom_bar(position = "dodge", stat = "identity", color="black") + 
  facet_grid(~Dose) + scale_fill_manual(values = c("#758ECD", "#C1CEFE")) + 
  labs(y="Mean no. of individuals", x="Temperature (?C)", fill="Line") + theme_bw() + theme(strip.background =element_rect(fill="white")) +
  geom_errorbar(aes(ymin=mean, ymax=mean+sd), width=.4,
                position=position_dodge(1)) +
  scale_y_continuous(expand = c(0, 0), limits = c(0, 10.3)) 

# display graphs
p_comp
