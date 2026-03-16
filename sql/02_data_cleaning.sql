-- check missing directors
SELECT COUNT(*) 
FROM netflix
WHERE director IS NULL;

-- replace NULL directors
UPDATE netflix
SET director = 'Unknown'
WHERE director IS NULL;

-- check missing country
SELECT COUNT(*)
FROM netflix
WHERE country IS NULL;

-- replace NULL country
UPDATE netflix
SET country = 'Unknown'
WHERE country IS NULL;