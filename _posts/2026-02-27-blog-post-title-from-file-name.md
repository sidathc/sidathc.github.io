## Starting Off & Notebook 1

Welcome to my website where I document my progress! The first task I did was to setup the Google Contrails API, which provides valuable data on longitude, latitude, flight level, datetime, and contrail forcing index values. To make it easier to analyse some data, I imported a day's worth of data into a simple, local SQLite database. After successfully running that, I imported a week's worth of data in around 6 hour intervals and ran some SQL queries to verify this.

I created a notebook 1 ipynb file to do some preliminary analysis on the dataset by generating some plots including:

### Average Contrail Probability by Hour of Day
![Contrail altitude distribution](/assets/images/day1_plot1.png)

### Contrail Probability by Day of Week
![Contrail altitude distribution](/assets/images/day1_plot2.png)

### Contrail Probability by Flight Level
![Contrail altitude distribution](/assets/images/day1_plot3.png)

### Contrail Probability by Location 
![Contrail altitude distribution](/assets/images/day1_plot4.png)

These plots were interesting as a first glance for some familiarity with the dataset and revealed some interesting trends, which will be interesting to note later on whether these will remain the same after importing a larger set of data from the API, or whether I will see very different trends when narrowing it down to Australia. 
