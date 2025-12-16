# Airbnb Amsterdam Analytics Dashboard — A/B Testing + Business Insights

This project started as a simple curiosity about Airbnb listings in Amsterdam and it turned into a full breakdown of how pricing, room type, booking rules, and seasonality affect demand.Everything here was cleaned, modeled, and visualized using SQL + Power BI, and the final dashboard walks through four A/B tests that help hosts understand what actually drives bookings.

 ## What This Dashboard Covers

Here’s the full storyline the dashboard walks through:

1. Overview Page
A quick snapshot showing:
Average Estimated Revenue
Total Listings
Average Price
Average Demand
Neighborhood-level heatmaps
Revenue by neighborhood
Room-type distributions

Basically: What does the Amsterdam Airbnb market look like at a glance?


## A/B Test 1: Price Sensitivity

## Question:
Do cheaper listings really get more bookings?

## Finding:
Yes,Low-price listings pull more demand (0.63 vs 0.55).
They also make up a slightly bigger share of available listings.

## Why it matters:
Hosts who want steady bookings are better off pricing competitively.


# A/B Test 2: Room Type Performance

## Question:
## Which room type performs best—Entire homes, private rooms, or shared spaces?

## Finding:

Entire homes dominate supply (82%) and generate the highest revenue.

Private rooms surprisingly have the highest engagement/demand.

Shared rooms barely exist in Amsterdam.

## Why it matters:
Perfect mix for hosts = private rooms for demand and entire homes for revenue.


## A/B Test 3: Minimum Nights Impact

## Question:

## Do flexible listings (1–2 nights) attract more demand than strict long stays (3+ nights)?

## Finding:

Flexible stays get more demand (0.68 vs 0.47)
And they represent a decent share of total listings.

## Why it matters:

Strict policies hurt visibility and booking frequency.


## A/B Test 4: Seasonality Effects

## Question:
## How do peaks and dips across the year affect bookings?

## Finding:
Amsterdam has a clear pattern:

April - September = peak months

December - February = lowest activity

Why it matters:
Hosts should adjust pricing & minimum nights during slow months.


## Tech Stack

SQL (MySQL Workbench) - Data cleaning + preprocessing

Power BI and Power Query - Data cleaning, Data modeling, DAX, dashboard design

GeoJSON - Neighborhood mapping layer


## Project Files

- <a href="https://github.com/Real-Chris205/Airbnb-Amsterdam-Dashboard/blob/main/cleaned_listing.csv">cleaned_listing</a>

- <a href="https://github.com/Real-Chris205/Airbnb-Amsterdam-Dashboard/blob/main/cleaned_review.csv">cleaned_review</a>

- <a href="https://github.com/Real-Chris205/Airbnb-Amsterdam-Dashboard/blob/main/neighbourhoods.geojson">neighbourhoods.geojson</a>

- <a href="https://github.com/Real-Chris205/Airbnb-Amsterdam-Dashboard/blob/main/Airbnb.pbix">Dashboard_Interaction</a>

- <a href="https://github.com/Real-Chris205/Airbnb-Amsterdam-Dashboard/blob/main/sql/cleaning.sql">Cleaning.Sql</a>

- <a href="https://github.com/Real-Chris205/Airbnb-Amsterdam-Dashboard/blob/main/sql/ab_tests.sql">AB_Tests.Sql</a>

- <a href="https://github.com/Real-Chris205/Airbnb-Amsterdam-Dashboard/blob/main/sql/analysis_queries.sql">Analysis_Queries.Sql</a>







