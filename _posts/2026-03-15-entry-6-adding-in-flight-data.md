## Entry 6: Adding in Flight Data

In the last few posts, we looked at purely contrail formation probability based on altitudes and coordinates. In this post, we're going to add a flight traffic layer to move from "where do contrails form" to "where do contrails form where there is high air traffic?".

To get ADS-B data, I created an account on OpenSky. However, a standard account restricts queries to the last hour and I would need researcher access to match the May-Jul 2025 window that matches the Contrails data timeframe. For now, given that flight routes largely are stable year-round (in Australia currently), we can use existing data to get some insights.

We have four cool plots generated from overlaying the ADS-B data on top of our existing data:

### Plot 1: Side-by-Side: Contrail Frequency vs. Flight Density

Test

![Mean Contrail Probability](/assets/images/day_5_alt_lat_mean.png)


### Plot 2: Overlay: Flight Corridors on Contrail Risk Background

![Mean Contrail Probability](/assets/images/day_5_alt_lat_mean.png)

### Plot 3: Exposure Index: Where Avoidance Would Matter Most

![Mean Contrail Probability](/assets/images/day_5_alt_lat_mean.png)

### Plot 4: Altitude Alignment: Are Planes at the Riskiest Flight Levels?

![Mean Contrail Probability](/assets/images/day_5_alt_lat_mean.png)




