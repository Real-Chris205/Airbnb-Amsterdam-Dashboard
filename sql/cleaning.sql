-- CLEANING LISTING TABLE

-- Remove rows with missing ID
DELETE FROM cleaned_listing
WHERE id IS NULL;

-- Remove currency symbols from price
UPDATE cleaned_listing
SET price = REPLACE(price, '$', '');

-- Convert price column from text to integer
ALTER TABLE cleaned_listing
MODIFY COLUMN price INT;

-- Remove rows with unrealistic prices (outliers)
DELETE FROM cleaned_listing
WHERE price <= 0 OR price > 50000;


--CLEANING REVIEW TABLE
-- 

-- Convert messy string dates to proper date format
UPDATE cleaned_review
SET date = STR_TO_DATE(date, '%W, %M %e, %Y')
WHERE date IS NOT NULL;

-- Remove empty review rows
DELETE FROM cleaned_review
WHERE listing_id IS NULL OR date IS NULL;
