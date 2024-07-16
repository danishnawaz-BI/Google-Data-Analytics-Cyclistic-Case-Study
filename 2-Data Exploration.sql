--Counting the total number of rows

SELECT COUNT(*) AS total_rides
 FROM `warm-agility-427707-f7.cyclistic_DA.2021_tripscombined` ;

--Checking the Data Types for all the columns

SELECT column_name, data_type
FROM `warm-agility-427707-f7.cyclistic_DA`.INFORMATION_SCHEMA.COLUMNS
WHERE table_name = '2021_tripscombined';

--Checking for number of NULL values in each column

SELECT COUNT(*) - COUNT(ride_id) ride_id,
 COUNT(*) - COUNT(rideable_type) rideable_type,
 COUNT(*) - COUNT(started_at) started_at,
 COUNT(*) - COUNT(ended_at) ended_at,
 COUNT(*) - COUNT(start_station_name) start_station_name,
 COUNT(*) - COUNT(start_station_id) start_station_id,
 COUNT(*) - COUNT(end_station_name) end_station_name,
 COUNT(*) - COUNT(end_station_id) end_station_id,
 COUNT(*) - COUNT(start_lat) start_lat,
 COUNT(*) - COUNT(start_lng) start_lng,
 COUNT(*) - COUNT(end_lat) end_lat,
 COUNT(*) - COUNT(end_lng) end_lng,
 COUNT(*) - COUNT(member_casual) member_casual
FROM `warm-agility-427707-f7.cyclistic_DA.2021_tripscombined`;

--Checking duplicate rows

SELECT COUNT(ride_id) - COUNT(DISTINCT ride_id) AS duplicate_rows
FROM `warm-agility-427707-f7.cyclistic_DA.2021_tripscombined`;

--Checking ride ids length for consistency 

SELECT LENGTH(ride_id) AS length_ride_id, COUNT(ride_id) AS no_of_rows
FROM `warm-agility-427707-f7.cyclistic_DA.2021_tripscombined`
GROUP BY length_ride_id;

--Checking trip count by usertype

SELECT DISTINCT member_casual, COUNT(member_casual) AS trip_count
FROM `warm-agility-427707-f7.cyclistic_DA.2021_tripscombined`
GROUP BY member_casual;

--Checking trip count by bike type

SELECT DISTINCT rideable_type, COUNT(rideable_type) AS no_of_trips
FROM `warm-agility-427707-f7.cyclistic_DA.2021_tripscombined`
GROUP BY rideable_type;

--Checking for trips whose duration is greater than 19 hours 
--bike operation time is 5am-12am (19 hrs)

SELECT COUNT(*) AS longer_than_19_hours
FROM `warm-agility-427707-f7.cyclistic_DA.2021_tripscombined`
WHERE (
  EXTRACT(HOUR FROM (ended_at - started_at)) * 60 +
  EXTRACT(MINUTE FROM (ended_at - started_at)) +
  EXTRACT(SECOND FROM (ended_at - started_at)) / 60) >= 1140; 

--Checking for trips whose duration is less than 5 minutes

SELECT COUNT(*) AS less_than_5_minutes
FROM `warm-agility-427707-f7.cyclistic_DA.2021_tripscombined`
WHERE (
  EXTRACT(HOUR FROM (ended_at - started_at)) * 60 +
  EXTRACT(MINUTE FROM (ended_at - started_at)) +
  EXTRACT(SECOND FROM (ended_at - started_at)) / 60) < 5; 

--Trip count by start station ( Checking for NULL count)

SELECT  start_station_name,start_station_id, COUNT(ride_id) AS trip_count
FROM `warm-agility-427707-f7.cyclistic_DA.2021_tripscombined`
GROUP BY start_station_name,start_station_id
ORDER BY start_station_name;

--Trip count by end station (Checking for NULL count)

SELECT  end_station_name,end_station_id, COUNT(ride_id) AS trip_count
FROM `warm-agility-427707-f7.cyclistic_DA.2021_tripscombined`
GROUP BY end_station_name,end_station_id
ORDER BY end_station_name;

--Checking the NULL count for end_lat,end_lat

SELECT  end_lat,end_lng, COUNT(ride_id) AS trip_count
FROM `warm-agility-427707-f7.cyclistic_DA.2021_tripscombined`
GROUP BY end_lat,end_lng
ORDER BY end_lat;




