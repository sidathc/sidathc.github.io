---
excerpt: Zooming in on Australia's domestic flight network — which routes carry the most traffic, and how do they align with contrail-prone skies?
---

## Entry 6: Charting Australia's Domestic Skies

Last post, I used a very limited amount of ADS-B data to get a glimpse into how contrail formation in winter intersects with air traffic inside Australia. Despite how limited the ADSB data was, it showed how contrail formation likelihood may not align directly with where the air traffic is, and identified the Bass Strait as a region to be investigated further, where there was a reasonable amount of air traffic and contrail formation probability.

OpenSky's free tier ran out of credits quite fast, so I decided to use a Github Action to collect a snapshot of Australian airspace every 15 minutes. It will take a week to collect a good amount of data, so this post is what I am doing while waiting for that.

----

In Australia, BITRE (Bureau of Infrastructure, Transport and Regional Economics) provides a free, downloadable dataset of monthly domestic aviation statistics with the total number of flights and seats for that month. In today's post, I plan to look at domestic flight routes, particularly the busiest ones, and evaluate them with the contrail risk data we have. 

In Entry 5, we found from some limited OpenSky data that flights were observed to mostly be at FL320–FL400 in Australian skies. A quick search online at flight reports shows a cruising altitude from SYD-MEL ranging from FL330 to FL400.

--------
### How this analysis was done

**Transparent Sheet:** Used 28km squares over a map of Australia and coloured each square by how often the atmosphere at cruising altitude (FL320-400) contains the conditions for contrails to form and persist. Dark squares indicate where the atmosphere is dangerous for contrail formation.

**Great Circle Paths:** on a globe, the shortest path between two points is a slight curve known as a "great circle". For short routes that curve is almost identical to a straight line on a flat map, while for longer routes it arcs more noticeable. We go along each great circle and record which grid squares it passes through - only the portion where the aircraft would be at cruising altitude at around FL320-FL400.

The BITRE dataset: Contains monthly domestic aviation statistics with every city pair in Australia. We downloaded all 12 months of 2024 and added them up to get annual flight counts. For each route, multiplied contrail risk along the great circle path by the annual flight count resulting in a t otal annual exposure score that indicates how dangerous the route's geographjy is with its flying frequency.

In summary, our dataset looks like this:

Source	Detail
Contrail risk grid	ERA5-based, FL320–FL400, May–July 2025, 239 timestamps, 25,521 grid cells at 0.25° resolution
Flight traffic	BITRE monthly domestic aviation statistics, all 12 months of 2024, 62 city pairs with known airport coordinates
Path model	Great circle arcs sampled at 150 points; cruise portion only (within Australian bounding box)

Note there are some limitations. First, great circle paths are not exact. Second, BITRE provides a seats-per-fllights figure which we can assume aircraft size. For flights with low passenger size, they are likely to be operated by turboprops which have a much lower cruising altitude. This causes the exposure score to overstate actual contrail risk, which is important to keep in mind.





-----
### Routes vs Contrail Risk
The top 20 routes by total annual exposure over the contrail risk grid. Arc colour indicates exposure score, which dark red being high and thickness indicates flight frequency.

![Route Map](/assets/images/entry_6_route_map.png)

The map reveals that almost all the action is focused on southeastern Australia and the Bass Strait/Tasmania corridor. Northern Territory is largely unlit because the atmosphere there is low-risk relatively as indicated by the white shading compared to the South. The MEL-SYD route as expected is visually dominant due to high air traffic but HBA-MEL stands out because the route crosses through the highest-risk cells in the entire dataset.


![Contrail Risk by Altitude Band](/assets/images/entry_6_band_breakdown.png)

### Busy Routes vs Risky Zones
![Busy Routes vs Risky Zones](/assets/images/entry_6_exposure_comparison.png)

### What Factors Determine Contrail Exposure?
![Factors Driving Contrail Exposure](/assets/images/entry_6_factors.png)

### What does Contrail Avoidance Cost?
![Contrail Avoidance Cost](/assets/images/entry_6_avoidance_cost.png)
