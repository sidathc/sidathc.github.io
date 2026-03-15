## Entry 6: Adding in Flight Data

In the last few posts, we looked at purely contrail formation probability based on altitudes and coordinates. In this post, we're going to add a flight traffic layer to move from "where do contrails form" to "where do contrails form where there is high air traffic?".

To get ADS-B data, I created an account on OpenSky. However, a standard account restricts queries to the last hour and I would need researcher access to match the May-Jul 2025 window that matches the Contrails data timeframe. For now, given that flight routes largely are stable year-round (in Australia currently), we can use existing data to get some insights.

We have four cool plots generated from overlaying the ADS-B data on top of our existing data:

### Plot 1: Side-by-Side: Contrail Frequency vs. Flight Density

![Mean Contrail Probability](/assets/images/day_6_side_by_side.png)

The left plot is the same one from last post to compare. The right plot contains the same map but with flight traffic from today. 

As we can see above, flight density is highest on the east coast connecting the cities Brisbane, Sydney and Melbourne. Interestingly, Darwin has very little air traffic represented, which might be caused by OpenSky receiver gaps in NT.

This contrasts with the left plot, where the highest contrail formation probabilities are concentrated in the Southern ocean. The only place of overlap is in the Bass Strait (between Melbourne and Tasmania) which has a reasonable amount of traffic but not as significant as between the three cities mentioned above.

These observations can be seen clearer in Plot 2 below, where we overlay both maps: 

### Plot 2: Overlay: Flight Corridors on Contrail Risk Background

![Mean Contrail Probability](/assets/images/day_6_overlay.png)

The main takeaway from all of this is that Australia's busiest flight paths are not where contrail formation is most likely to happen, at least based on the current dataset collected in winter 2025. Even if we were to predict flight levels to avoid contrail-likely zones, this would not affect the busiest flight corridors in Australia.


### Plot 3: Exposure Index: Where Avoidance Would Matter Most

This plot provides an indicator of prioritisation for avoidance effort. Each grid cell is scored as: exposure = normalised_flight_density × normalised_contrail_frequency. Dark orange/red = busy AND risky.

![Mean Contrail Probability](/assets/images/day_6_exposure.png)

This presents some interesting results where the two (contrail formation and flight density might overlap). The peak cell was found at -36.25°S, 148.00°E with an exposure score of 0.123, which is Snowy Mountains / Monaro Tablelands and is a part of the Sydney-Melbourne route, which is the 6th most travelled route worldwide!

Another cell of interest is −41.00°S, 146.50°E which is over the Bass Strait (flights to and from Tasmania). Its atmospheric risk is around ~3× higher than the NSW tablelands cells but fewer aircraft transit it. 

Northern Territory is completely blank which is also worth nothing. Anecdotally many aircraft pass the NT on overseas flights - perhaps it is a lapse in ADS-B data.


### Plot 4: Altitude Alignment: Are Planes at the Riskiest Flight Levels?

The left plot is from last post with the different altitudes distributions shown by contrail risk probability. On the right we have the distribution based on flight traffic to compare. 

![Mean Contrail Probability](/assets/images/day_6_fl_comparison.png)

Earlier we observed that FL340-FL390 is where contrail risk peaks for mid-latitudes. The right plot shows that commercial flights mostly (presumably cruise) at FL340-FL390, which overlaps with the contrail risk peak flight levels.

---
Questions for next time:

* Are the altitudes depicted in the right side plot for Plot 4 the cruising altitudes, given that altitudes change constantly?

* These snapshots were taken between 10:21 to 11:01 AEST. How do these compare at night or over a longer timeframe?

These questions are to be answered soon. Stay tuned!




