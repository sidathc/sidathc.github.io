## Day 3: Migrating Databases & Starting Geospatial Analysis

So far, I had been using a local SQLite database imported from Google Contrails API with 1-2 days worth of data for a first glimpse. As I began thinking of importing more data, I thought of a better way to store the data.

I decided to migrate the database to PostgreSQL using Docker Desktop, which I am already familiar with and will be much more efficient at running queries as my database gets bigger.

Since migrating the database to Postgres, here is a summary of it now. As you can see, data is restricted to the Australian continent:

| Dimension         | Detail                                                                 |
|-------------------|------------------------------------------------------------------------|
| **Period**        | 15 May 2025 20:00 UTC → 14 July 2025 14:00 UTC (~60 days)              |
| **Interval**      | Exactly 6 hours — no gaps                                              |
| **Snapshots**     | 239 timestamps (02:00, 08:00, 14:00, 20:00 UTC each day)               |
| **Total rows**    | ~109.8 million                                                         |
| **Latitude**      | −45° to −10° · 141 values · 0.25° steps                                |
| **Longitude**     | 110° to 155° · 181 values · 0.25° steps                                |
| **Coverage**      | Australia only — no global data                                        |
| **Flight levels** | FL270 to FL440 · 18 levels · FL10 steps                                |
| **Grid completeness** | 141 × 181 × 18 × 239 = fully consistent, no missing cells 

Looks ready for some more analysis!


## Analysis
Today's findings will provide some insights into contrail formation in Australia during the winter period using PostgreSQL to aggregate the data.

**97.1%** of contrail_probability values were found to be zero. Two variables were created from this to understand two things: frequency and intensity of contrails.

**Mean contrail probability:**  Calculated by filtering to rows where contrail_probability > 0 then averaging within groups. Answers question of how intense contrails are when they form?

**Contrail Frequency:** Binary flag per timestamp - 1 if contrail_probability > 0 and 0 if not, which is then averaged within groups. Answers question of "what fraction of the time do contrails form here at all?"

The two variables were then represented spatially using GeoPandas, shape files of Australia and coordinates of its major cities with the coordinates data in the Contrails dataset resulting in these plots:

### Plot 1: Mean Contrail Probability
![Mean Contrail Probability](/assets/images/day_4_hotspot_mean.png)


### Plot 2: Contrail Frequency
![Contrail Frequency](/assets/images/day_4_hotspot_frequency.png)


Plots 1 and 2 show that both intensity and frequency of contrail formation are concentrated towards the south of the continent, with some interesting activity in the North to a lesser extent.


### Plot 3: Altitude Profile
Shows contrail formation likelihood across the 18 flight levels in Contrails API dataset:
![Altitude Profile](/assets/images/day_4_altitude_profile.png)
Between FL270-FL440, notable altitudes for contrail frequency and intensity appear to be at FL330 (33,000 ft), FL340 (34,000 ft), FL350 (35,000 ft) and FL440 (44,000 ft).

### Plot 4: Hotspot Maps by Flight Level Band
![Hotspot Maps by Flight Level Band](/assets/images/day_4_band_maps.png)
The above is probably the most interesting plot in my opinion! It reveals that the hotspot locations are altitude dependent, with higher likelihood for contrail formation near Antarctica at a mid-cruise altitude (34-39,000 ft) while higher concentrations near Darwin and Northern Queensland are at an upper cruising altitude between 40-44,000 ft. This is super insightful!














