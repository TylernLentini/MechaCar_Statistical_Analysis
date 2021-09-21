library(tidyverse)
head(mecha_df)

#generate multiple linear regression
lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mecha_df) 

#generate summary of statistics 
summary(lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mecha_df))

p-value: 5.35e-11
Multiple R-squared:  0.7149