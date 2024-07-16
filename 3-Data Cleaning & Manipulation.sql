
DROP TABLE IF EXISTS `warm-agility-427707-f7.cyclistic_DA.2021_tripscombined_cleaned` ;


CREATE TABLE IF NOT EXISTS `warm-agility-427707-f7.cyclistic_DA.2021_tripscombined_cleaned` AS (
  SELECT 
    a.ride_id AS trip_id, rideable_type as bike_type, started_at, ended_at, 
    trip_duration,
    CASE EXTRACT(DAYOFWEEK FROM started_at) 
      WHEN 1 THEN 'SUN'
      WHEN 2 THEN 'MON'
      WHEN 3 THEN 'TUE'
      WHEN 4 THEN 'WED'
      WHEN 5 THEN 'THU'
      WHEN 6 THEN 'FRI'
      WHEN 7 THEN 'SAT'    
    END AS day_of_week,
    CASE EXTRACT(MONTH FROM started_at)
      WHEN 1 THEN 'JAN'
      WHEN 2 THEN 'FEB'
      WHEN 3 THEN 'MAR'
      WHEN 4 THEN 'APR'
      WHEN 5 THEN 'MAY'
      WHEN 6 THEN 'JUN'
      WHEN 7 THEN 'JUL'
      WHEN 8 THEN 'AUG'
      WHEN 9 THEN 'SEP'
      WHEN 10 THEN 'OCT'
      WHEN 11 THEN 'NOV'
      WHEN 12 THEN 'DEC'
    END AS month,
    start_station_name, end_station_name, 
    start_lat, start_lng, end_lat, end_lng, member_casual as user_type
 FROM `warm-agility-427707-f7.cyclistic_DA.2021_tripscombined` AS a 
   
  JOIN (
    SELECT ride_id, CAST(ROUND(
      
      EXTRACT(HOUR FROM (ended_at - started_at)) * 60 +
      EXTRACT(MINUTE FROM (ended_at - started_at)) +
      EXTRACT(SECOND FROM (ended_at - started_at)) / 60,0)AS INT64) AS trip_duration
 FROM `warm-agility-427707-f7.cyclistic_DA.2021_tripscombined` 
    
  ) AS b 
  ON a.ride_id = b.ride_id
  WHERE 
    start_station_name IS NOT NULL AND
    end_station_name IS NOT NULL AND
    end_lat IS NOT NULL AND
    end_lng IS NOT NULL AND
    rideable_type <> "docked_bike" AND
    trip_duration > 5 AND trip_duration <= 1140);




