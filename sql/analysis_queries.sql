-- Count total listings
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
