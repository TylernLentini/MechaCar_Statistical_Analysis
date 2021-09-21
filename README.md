# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

![Screen Shot 2021-09-21 at 12 58 39 PM](https://user-images.githubusercontent.com/84756166/134214780-c578e46d-1e82-4db5-be23-2fd7d1989ffe.png)


* Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
vehicle_length, ground_clearance and the y-intercept coefficients provided a non-random amount of variance to the mpg mpg values in the dataset.

* Is the slope of the linear model considered to be zero? Why or why not?
The slope of the correlation is not considered to be zero. An r-value near 0 would indicate a slope near zero. Because our r-value = .72 there is a strong positive correlation and the slope would not equal 0. 

* Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
The multiple linear regression indicates that there is a positive relationship between 3 of the independent variables and the dependent variable MPG. However, a simple linear regression of the individual variables would help determine the prediction power more effectively. Depending on the hypothesis there is too much room for error in running just this test. Additionally, the high significance of the intercept variable may indicate that there is additonal scaling and transforming necessary to understand the predictability of the model. 

## Summary Statistics on Suspension Coils

![Screen Shot 2021-09-21 at 2 24 12 PM](https://user-images.githubusercontent.com/84756166/134226570-91a74fe1-d2f5-4406-af54-358c8f0c0528.png)
![Screen Shot 2021-09-21 at 2 24 19 PM](https://user-images.githubusercontent.com/84756166/134226574-86e25682-a3a2-4696-a698-0c72a8070384.png)

These charts show the mean, median, variance and standard deviation of psi for suspension coils, first in total and then for each lot. 

*The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

The design specifications are met when the data is viewed in total. Variance falls below the psi threshhold of 100 psi as total variance = 62.29. However, when the data is viewed by lot, lot 3 exceeds the 100 psi variance threshold where variance for lot 3 = 170 psi.

## T-Tests on Suspension Coils
![Screen Shot 2021-09-21 at 3 21 59 PM](https://user-images.githubusercontent.com/84756166/134234388-e71cc0c7-6f03-4b24-b635-5a0930543649.png)
![Screen Shot 2021-09-21 at 3 12 38 PM](https://user-images.githubusercontent.com/84756166/134233180-814a63af-fc8d-4ae2-b51c-53f852ecdc0a.png)

for the T tests I filtered the tables using the subset function and ran the test on the three seperate lots. The first two results produced p-values less than our significance level meaning we can reject the null hypothesis. 

Lot 3 returned a p-value of .16 meaning that our pvalue is greater than our significance level of .05. If p-value is greater than our significance level we do not have sufficient evidence to reject the null hypothesis and we would state that the two means are statistically similar. 

## Study Design: MechaCar vs Competition

MechaCar wants to know how they stack up against other car companies. To figure this out I would look at key metrics like fuel efficiency (HWY & CITY), Cost, and Safety rating. Limiting our key metrics to those that are most important to consumers will prevent us from muddying the waters as we try to compare statistics.

Other mechanical qualitative and quantitative data will be helpful in finding the root of our statistical findings. For example, if we find in a two-way test that there may be some outside influence by an additional variable we would need the full breadth of data to find the source of that difference. So data for this testing will need to be expansive.

A Two-way Annova test will be used because there are multiple independent variables in this study. 

Our null hypothesis is, the means of all groups are equal. Our alternative hypothesis is that there is a statistically significant difference in the mean of at least 1 group. 



