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


## Dashboard Preview

<img width="1210" height="720" alt="Ab Overview" src="https://github.com/user-attachments/assets/15786b79-cc4b-4703-8ef2-cd5e7b65a51c" />

<img width="1199" height="723" alt="AB Test 1" src="https://github.com/user-attachments/assets/f23f31cc-17da-44b6-a104-be3df163e80b" />

<img width="1196" height="730" alt="AB Test 2" src="https://github.com/user-attachments/assets/44f8fb23-3f37-46f8-8a2b-5b9369e4d496" />

<img width="1205" height="738" alt="AB Test 3" src="https://github.com/user-attachments/assets/686198e4-7649-4c24-a904-a43443ff3332" />

<img width="1180" height="735" alt="AB TEst 4" src="https://github.com/user-attachments/assets/945c2f92-08b1-4dd1-ab1b-ee053980110b" />


## What I Learned

## This project forced me to really understand:

How to clean messy Airbnb data

Designing A/B tests in analytics

Using DAX for grouping + calculated measures

Visual storytelling (not just pretty charts)

Communicating business insights simply

And honestly,the biggest lesson was realizing how much small changes (like pricing or night rules) can completely change booking behavior.








