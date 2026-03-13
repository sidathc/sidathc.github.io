## Day 4: Contrail Probabilities with Respect to Longitude, Altitude + Time

On day 3, we looked at where contrails form and at what altitudes in Australia during winter months. 

We saw that the probabilities for contrails formation was significantly higher over the Southern Ocean (area from Australia's southern coast to Antarctica) which was interesting given the little aviation traffic there. However, it is important to keep in mind that the dataset only indicates the probability for contrail formation and does not indicate whether any aircraft flew there. 

In this post, we will re-examine these plots, but see if we can gain further insight by breaking the plots down in terms of longitude, flight level and time of day.

---

Plots 1 and 2 are heatmaps which aggregate the data to compare Mean Contrail Probability and Contrail Frequency (created in day 3) against longitude values. The following table gives some context on longitude values:

| Latitude | Geography |
|----------|-----------|
| 45°S | Deep Southern Ocean — no land, no flights |
| 43°S | Southern Tasmania (Hobart) |
| 38°S | Southern Victoria coast — aviation zone boundary (dashed white line) |
| 35°S | Sydney / Canberra |
| 32°S | Perth |
| 27°S | Brisbane |
| 25°S | Tropic of Capricorn boundary — transition to tropical atmosphere |
| 23°S | Alice Springs |
| 17°S | Darwin / north Kimberley |
| 10°S | Northern edge of the data domain, above Cape York |

### Plot 1: Mean Contrail Probability by Flight Level & Latitude
![Mean Contrail Probability](/assets/images/day_5_alt_lat_mean.png)

### Plot 2: Contrail Frequency by Flight Level & Latitude
![Contrail Frequency](/assets/images/day_5_alt_lat_freq.png)


Plots 1-2 give some helpful insight by adding flight altitudes in addition to location. It appears that as you move north, the contrail-favourable layer is at higher altitudes. For example, at southern latitudes, we have a peak probability of 0.13-0.15 at FL330–FL350, at mid latitudes, the peak shifts slightly to FL340-360, and in the tropical north, the contrail favourable layer appears at FL380-FL440. 

---
In addition to altitudes, we can also look at how the time of day may change the level of contrail risk:

### Plot 3: Overall Diurnal Signal
![Altitude Profile](/assets/images/day_5_diurnal_overall.png)


As we see above in Plots 3 and 4, there are noticeable differences in the bar plots, so conditions are not uniform in time, with probability highest at around midnight.

We can also further examine the results of this bar plot by splitting it into different latitudes as discussed above:

### Plot 4: Diurnal Signal by Latitude Band
![Hotspot Maps by Flight Level Band](/assets/images/day_5_diurnal_by_band.png)

Both plots reveal midnight to be the peak, with the Southern Ocean band dominating by 3-7x at every UTC hour. Noon is the trough. 

The above results leave some questions and food for thought:

* Does the midnight peak and noon trough in the plot make sense meteorologically? What are the implications of this given the low amount of air traffic at late night in Australia (due to curfews, etc)
* What are the implications of the contrail layer shifting upwards as you move up north?

More to be added on this page later!













