# Social-Media-Analysis

Factors affecting User Interaction 

# Questions that our data set might answer
1. Is the Total Engagement and Interaction being affected by the type of source, language and followers?​
2. Is the Total Engagement and Interaction being affected by the type of source and date?​
3. Is the Total Engagement and Interaction being affected by the content type?​
​
These questions can help analyze how to use the source, language and amount of followers to boost the Total Engagement Interaction.​

# About the Data Set
The dataset is very messy and has missing values. I will clean the data set and account for missing values using Microsoft Excel and R studio.
The dataset also has many categorical variables that I will create dummy variables for. 
​
# Hypothesis
H₀: The Total Engagement and Interaction of a post is not significantly influenced and dependent on the Source Type, Author Followers, and the Language of the post was made in. ​
Ha: The Total Engagement and Interaction of a post is significantly influenced and independent of the Source Type, Author Followers, and language of the post was made in.​

# Results 
We reject the null hypothesis and conclude that there is enough evidence to support the claim that Language, Plattform and Author Follower Count all affect the Total engagemnet of a post. 

# Way forward
We need to exclude languages and platforms and that have p-value > 0.05 and rerun the regression analysis to improve our R^2 value. 
We can also transform some variables logarithmically to see if the Regression values change. 
