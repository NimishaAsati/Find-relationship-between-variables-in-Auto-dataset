# Find-relationship-between-variables-in-Auto-dataset
Find relationship between variables in Auto dataset using Linear Regression in R


### Data: Auto dataset --> ISLR package in R
		Gas mileage, horsepower, and other information for 392 vehicles.
		A data frame with 392 observations on the following 9 variables.
		
### Goal:

	1) Basic exploratory analysis by computing and visualizing correlations. 
		Draw the plot of correlations between every pair of features. 
		Which features are highly correlated one another?

	2) Perform linear regression by putting mpg as an output variable based on all other features except the name attribute. 
		Is there any relationship between the input features and the output response? 
		Which features appear to have a statistically significant relationship to the output response? 
		What does the coefficient for the year variable suggest?
		
### Results:

1) Following are negatively correlated:
		mpg – horsepower
		mpg – weight
		mpg – cylinder
		mpg – displacement
    
	and following are positively correlated:
		displacement with horsepower, weight and cylinder.

##### Based on correlation values:
Highly correlated variables are:

Negatively correlated:mpg - weight

Positively correlated:displacement – cylinders

2) 	1.	Relationship between input features and output response:

Yes, there is relationship between input features and the output response. Each input feature impacts the output response by the Estimate value measure (as shown in the summary table above)


	2.	Features that appear to have a statistically significant relationship to the output response are:

Displacement, Weight, Year and Origin

	3.	The coefficient for the year variable suggests:

The coefficient of Year variable is 0.751 (approx.). This suggests that if we change Year variable by 1 value, 
it is going to impact our response variable by 0.751 times (approx.). Since, it is a positive coefficient, 
every 1 value increase in Year variable will result in 0.751 times increase in the response variable.


