## Day 1: Kickstarting My Project + First Look at Data

Here's where I get started on my contrails journey!

To begin, I setup the Google Contrails API, which returns a dataset containing longitude, latitude, altitude (flight level), datetime, and contrail forcing index values. The provided sample code on the website allowed me to practice requesting data for one specific datetime.

I then modified the code to import a week's worth of data into a simple, local SQLite database in around 6-hour intervals. I verified the data had been imported using SQL queries.

Then I generated some plots from the data to get some first glimpses into what the data looks like:

### Average Contrail Probability by Hour of Day
![Contrail altitude distribution](/assets/images/day1_plot1.png)

### Contrail Probability by Day of Week
![Contrail altitude distribution](/assets/images/day1_plot2.png)

### Contrail Probability by Flight Level
![Contrail altitude distribution](/assets/images/day1_plot3.png)

### Contrail Probability by Location 
![Contrail altitude distribution](/assets/images/day1_plot4.png)

An interesting first glimpse at the data I will be working with, which is already showing some trends! I will be curious to see whether these larger trends in the dataset will remain the same after importing a larger set of data from the API, or if things will change significantly when I narrow the dataset to Australia.
