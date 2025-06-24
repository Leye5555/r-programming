install.packages("moments")
install.packages("ggplot2")
library(ggplot2)
library(moments)


#Example 1. Mirra is interested in the elapse time (in minutes) she spends on riding a tricycle from home, 
#at Simandagit, to school, MSU-TCTO, Sanga-Sanga for three weeks (excluding weekends). 
#She obtain the following data: 19.09, 19.55, 17.89, 17.73, 25.15, 27.27, 25.24, 21.05, 21.65, 20.92, 22.61, 15.71, 22.04, 22.60, and 24.25. 
#Compute and interpret the skewness and kurtosis.


#solution

time <- c(19.09, 19.55, 17.89, 17.73, 25.15, 27.27, 25.24, 21.05, 21.65, 20.92, 22.61, 15.71, 22.04, 22.60, 24.25)

skewness(time) #skewness measures the distribution of the data and ensures that the sample is asymmetric. Skewness values of 0, -0.5 to +0.5, are generally considered as insignificant and hence the most idle for symmetry

kurtosis(time)



#Interpretation: The data collected has a skewness of negative but insignificant skewness of -0.016, which indicates that the data distribution is symmetric. 
# It has a platykurtic kurtosis of 2.3 which means that the data is skewed in the negative direction because the computed value is less than 3. That is there are more values on the left side of the mean.  




ggplot(data.frame(time), aes(x=time)) + geom_density(color="#ff5fff", alpha=.2)



