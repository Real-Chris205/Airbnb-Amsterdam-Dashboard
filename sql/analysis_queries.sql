-- Median Price
-- Objective: To get the median price in the dataset
SELECT AVG(price) AS median_price 
FROM
    ( SELECT price FROM cleaned_listing
      WHERE price IS NOT NULL AND price > 0
      ORDER BY price
      LIMIT 2 offset 5313 ) as sub;

-- Count total listings
-- Objective : To find the total number listing in the AIrbnb
SELECT COUNT(*) FROM cleaned_listing;

-- Neighborhood-level revenue
SELECT 
    neighbourhood,
    AVG(price * reviews_per_month) AS avg_estimated_revenue,
    SUM(price * reviews_per_month) AS total_revenue
FROM cleaned_listing
WHERE reviews_per_month IS NOT NULL
GROUP BY neighbourhood
ORDER BY avg_estimated_revenue DESC;

-- Room type distribution
SELECT 
    room_type,
    COUNT(*) AS total
FROM cleaned_listing
GROUP BY room_type;


--grouping the data for A/B Tests
-- OBjECTIVE: We group the listing into hugh priced and low priced
SELECT id, name , price, 
CASE
    WHEN price < 120 THEN "low"
    WHEN price >= 120 THEN "High"
    ELSE " "
    END AS "Grade"
FROM cleaned_listing;

--- To know the booking rate
---OBJECTIVE: We use this to measure how listing of different prices are oftenly booked
SELECT COUNT(*) AS num_listing, avg(reviews_per_month) AS "avg_review_per_month", 
    CASE
         WHEN price < 120 THEN "low"
         WHEN price >= 120 THEN "High"
         ELSE " "
         END AS Grade
FROM cleaned_listing
WHERE reviews_per_month IS NOT NULL
GROUP BY Grade
ORDER BY Grade;

--- To run fairness check on the listing  
SELECT room_type, COUNT(*) AS num_listing, avg(reviews_per_month) AS "avg_review_per_month",
    CASE
        WHEN price < 120 THEN "low"
        WHEN price >= 120 THEN "High"
        ELSE " "
        END AS Grade
FROM cleaned_listing
WHERE reviews_per_month IS NOT NULL
AND room_type IN ( "entire home/apt","private room", "shared room")
GROUP BY room_type,Grade
ORDER BY room_type;

---  A/B TEST 2 — Room Type Performance
--- OBJECTIVE: we set the rooms to private and entire home/apt and know which one performs better
SELECT room_type, COUNT(*) AS num_listing, avg(reviews_per_month) AS Avg_rev_month 
FROM cleaned_listing 
WHERE reviews_per_month IS NOT NULL AND room_type IN ("entire home/apt", "private room")
GROUP BY room_type
ORDER BY avg(reviews_per_month);

--- A/B TEST 3 — Minimum Nights Effect on Demand
---OBJECTIVE : To compare booking activity between listings requiring 1–2 minimum nights  and 3 or more nights
select count(*) as num_listing , avg(reviews_per_month) as Avg_reviews_month , case 
when minimum_nights <= 2 then "flexible listing"
else "strict listing"
end as listing
from cleaned_listing
where reviews_per_month is not null
group by listing ;

