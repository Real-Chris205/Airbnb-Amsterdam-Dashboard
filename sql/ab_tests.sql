-- A/B TEST 1: PRICE SENSITIVITY
-- ======================================

-- Find the median price
SELECT 
    PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY price) 
    OVER () AS median_price
FROM cleaned_listing;

-- Compare booking activity for Low vs High price groups
SELECT 
    CASE 
        WHEN price < 120 THEN 'Low Price'
        ELSE 'High Price'
    END AS price_group,
    COUNT(*) AS num_listings,
    AVG(reviews_per_month) AS avg_reviews
FROM cleaned_listing
WHERE reviews_per_month IS NOT NULL
GROUP BY price_group;



-- A/B TEST 2: ROOM TYPE PERFORMANCE
-- ======================================

SELECT 
    room_type,
    COUNT(*) AS num_listings,
    AVG(reviews_per_month) AS avg_demand
FROM cleaned_listing
WHERE reviews_per_month IS NOT NULL
GROUP BY room_type;




-- A/B TEST 3: MINIMUM NIGHTS IMPACT
-- ======================================

SELECT 
    CASE 
        WHEN minimum_nights <= 2 THEN 'Flexible (1–2 nights)'
        ELSE 'Strict (3+ nights)'
    END AS night_group,
    COUNT(*) AS num_listings,
    AVG(reviews_per_month) AS avg_demand
FROM cleaned_listing
WHERE reviews_per_month IS NOT NULL
GROUP BY night_group;



-- A/B TEST 4: SEASONALITY
-- ======================================

-- Extract year-month
SELECT 
    DATE_FORMAT(date, '%Y-%m') AS year_month,
    COUNT(*) AS num_reviews
FROM cleaned_review
GROUP BY year_month
ORDER BY year_month;
