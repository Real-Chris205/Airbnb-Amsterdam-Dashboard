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





