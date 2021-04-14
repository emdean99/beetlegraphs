
#geom_bar graph

#how the data is set up

# A tibble: 8 x 6
# Dose        Temp  Line   mean    sd    se
# <chr>       <chr> <chr> <dbl> <dbl> <dbl>
#   1 Control     25    R      6.4  0.894 0.4  
# 2 Control     25    S      7.8  2.28  1.02 
# 3 Control     40    R      5.6  1.67  0.748
# 4 Control     40    S      7    1     0.447
# 5 Insecticide 25    R      4.25 1.71  0.854
# 6 Insecticide 25    S      6.6  1.82  0.812
# 7 Insecticide 40    R      2.75 2.36  1.18 
# 8 Insecticide 40    S      6    2.35  1.05 



#bar code
p_comp<- ggplot(comp_adult, aes(x= data$Temp, y=mean, fill= Line)) + 
  geom_bar(position = "dodge", stat = "identity", color="black") + 
  facet_grid(~Dose) + scale_fill_manual(values = c("#758ECD", "#C1CEFE")) + 
  labs(y="Mean no. of individuals", x="Temperature (°C)", fill="Line") + theme_bw() + theme(strip.background =element_rect(fill="white")) +
  geom_errorbar(aes(ymin=mean, ymax=mean+sd), width=.4,
                position=position_dodge(1)) +
  scale_y_continuous(expand = c(0, 0), limits = c(0, 10.3)) 


p_comp

