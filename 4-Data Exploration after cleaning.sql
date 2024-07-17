--Counting the total number of rows

SELECT COUNT(*) AS trip_count
 FROM `warm-agility-427707-f7.cyclistic_DA.2021_tripscombined_cleaned` ;

--Checking the Data Types for all the columns

SELECT column_name, data_type
FROM `warm-agility-427707-f7.cyclistic_DA`.INFORMATION_SCHEMA.COLUMNS
WHERE table_name = '2021_tripscombined_cleaned';

--Checking for number of NULL values in each column

SELECT COUNT(*) - COUNT(trip_id) AS trip_id,
 COUNT(*) - COUNT(bike_type) AS bike_type,
 COUNT(*) - COUNT(started_at) AS  started_at,
 COUNT(*) - COUNT(ended_at) AS ended_at,
 COUNT(*) - COUNT(start_station_name) AS start_station_name,
 COUNT(*) - COUNT(end_station_name) AS end_station_name,
 COUNT(*) - COUNT(start_lat)AS  start_lat,
 COUNT(*) - COUNT(start_lng) AS start_lng,
 COUNT(*) - COUNT(end_lat) AS end_lat,
 COUNT(*) - COUNT(end_lng) AS end_lng,
 COUNT(*) - COUNT(user_type) AS user_type
FROM `warm-agility-427707-f7.cyclistic_DA.2021_tripscombined_cleaned`;



