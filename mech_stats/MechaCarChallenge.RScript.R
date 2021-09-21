library(tidyverse)
head(mecha_df)

#read csv into dataframe 
mecha_df <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

#generate multiple linear regression
lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mecha_df) 

#generate summary of statistics 
summary(lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mecha_df))

#create linear regression model to test hypothesis 
model <- lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mecha_df)

yvals <- model$coefficients['vehicle_length']*mecha_df$vehicle_length +
  model$coefficients['(Intercept)'] #determine y-axis values from linear model

plt <- ggplot(mecha_df,aes(x=vehicle_length,y=mpg)) #import dataset into ggplot2

plt + geom_point() + geom_line(aes(y=yvals), color = "red") #plot scatter and linear model

# Deliverable 2 Suspension Coil Analysis
#read csv into dataframe 
coil_df <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

#create an rscript to view total summary of PSI col
susp_coil_summary <- coil_df  %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep')
View(susp_coil_summary)

#create lot summary by PSI
susp_coil_summary2 <- coil_df  %>% group_by(Manufacturing_Lot)  %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep')
View(susp_coil_summary2)

#Deliverable 3

#T-test ALL LOTS
t.test(coil_df$PSI, mu=mean(coil_df$PSI))

#T-test lot 1
filter_table1 <- subset(coil_df, Manufacturing_Lot == "Lot1")
t.test(filter_table1$PSI, mu=mean(coil_df$PSI))
#T-test Lot 2
filter_table2 <- subset(coil_df, Manufacturing_Lot == "Lot2")
t.test(filter_table2$PSI, mu=mean(coil_df$PSI))
#T-test Lot 3 
filter_table3 <- subset(coil_df, Manufacturing_Lot == "Lot3")
t.test(filter_table3$PSI, mu=mean(coil_df$PSI))

