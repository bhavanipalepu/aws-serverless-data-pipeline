
-- 1. Total number of rows
SELECT COUNT(*) FROM raw;

-- 2. View top 5 rows
SELECT * FROM raw LIMIT 5;

-- 3. Unique species
SELECT DISTINCT species FROM raw;

-- 4. Species count
SELECT species, COUNT(*) AS species_count FROM raw GROUP BY species;

-- 5. Average measurements by species
SELECT 
  species,
  ROUND(AVG(sepal_length), 2) AS avg_sepal_length,
  ROUND(AVG(sepal_width), 2) AS avg_sepal_width,
  ROUND(AVG(petal_length), 2) AS avg_petal_length,
  ROUND(AVG(petal_width), 2) AS avg_petal_width
FROM raw
GROUP BY species;

-- 6. Sort by petal length (descending)
SELECT * FROM raw 
WHERE petal_length > 6
ORDER BY petal_length DESC;

-- 7. Classify petal length
SELECT 
  species,
  petal_length,
  CASE
    WHEN petal_length >= 5 THEN 'Long'
    WHEN petal_length BETWEEN 3 AND 5 THEN 'Medium'
    ELSE 'Short'
  END AS petal_category
FROM raw
ORDER BY species, petal_length ASC;

-- 8. Maximum petal length by species
SELECT species, MAX(petal_length) AS max_petal 
FROM raw 
GROUP BY species
ORDER BY max_petal DESC;
