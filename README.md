# MechaCar_Statistical_Analysis

# Linear Regression to Predict MPG
![](https://github.com/jmajma327/MechaCar_Statistical_Analysis/blob/main/regressions.png)

1. The three variables (vehicle length, ground clearance, and AWD) provide a non-random amount of variance to the mpg variable given their p-scores (Pr(>Itl)) were less than/equal to 0.05, rejecting a null hypothesis.

2. The slope for this linear model is not considered to be zero because the model  p-value of 5.35e-11, which is much smaller than the  level of 0.05%. Since the p-value is smaller than the significance level we can reject the null hypothesis which in turn means that the slope of our linear model is not zero.

3. This shows that 71% of the variance in the dependent variable, mpg, is explained by the other variables that we provided (vehicle length, vehicle weight, spoiler angle, ground clearance, and all wheel drive).

# Summary Statistics on Suspension Coils
![](https://github.com/jmajma327/MechaCar_Statistical_Analysis/blob/main/total%20summary.png)
![](https://github.com/jmajma327/MechaCar_Statistical_Analysis/blob/main/Lot%20summary.png)

1. Overall, the current manufacturing data meets the design specification that the variance of the suspension coils must not exceed a 100 pound variance. When all data is combined, the variance is 76.23.

2. On the other hand, when the statistics of the lots are calculated separately, only Lots 1 & 2 meet the design specification with variances of 1.15 and 10.13 respectively. Lot 3 exceeds the specification with a variance of 220.01 which is twice the requirement.

# T-Tests on Suspension Coils
![](https://github.com/jmajma327/MechaCar_Statistical_Analysis/blob/main/total%20t%20test.png)
![](https://github.com/jmajma327/MechaCar_Statistical_Analysis/blob/main/lot%201%20test.png)
![](https://github.com/jmajma327/MechaCar_Statistical_Analysis/blob/main/lot%202%20test.png)
![](https://github.com/jmajma327/MechaCar_Statistical_Analysis/blob/main/lot%203%20test.png)

The t-Test was performed on all manufacturing lots. This showed that all are statistically similar from the population mean of 1,500 PSI (the t-Test p-value of 0.2511 is > 0.05). The results were the same for the other t-tests conducted for each individual lots with their p-values being as follows: Lot 1 = 0.90, Lot 2 = 0.34, and Lot 3 = 0.64.

# Study Design: MechaCar vs Competition
I would create a statistical study to compare MechaCar vehicles miles per gallon in comparions of vehicles from other manufacturers miles per gallon to see which car is more efficient.
The null hypothesis for each would be that the means between the vehicles miles per gallon are the same, and the alternative hypothesis would be that they are not equal.
In order to compare the data, we would have to compile data sets of vehicles from 2 or 3 models competitive to MechaCar. Data would need to include Miles Per Gallon.
I would use a Two-Sample t-Test to determine the hypothesis decision because I am testing the competitors vehicles in this study.
