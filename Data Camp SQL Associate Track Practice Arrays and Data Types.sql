
-- Arrays and Data Types

-- Determining data types

SELECT
 	column_name, 
    data_type
FROM INFORMATION_SCHEMA.COLUMNS 
WHERE table_name ='customer';


-- Interval Data Types

SELECT
	rental_date,
	return_date,
	rental_date + INTERVAL '3 days' AS expected_return_date
FROM rental;


-- Accessing data in an ARRAY

SELECT 
  title, 
  special_features 
FROM film
WHERE special_features[2] = 'Deleted Scenes';


-- Searching an ARRAY with ANY

SELECT 
  title, 
  special_features 
FROM film 
WHERE 'Trailers' = ANY (special_features);


-- Searching an ARRAY with @>

SELECT 
  title, 
  special_features 
FROM film 
WHERE special_features @> ARRAY[ 'Deleted Scenes' ];




