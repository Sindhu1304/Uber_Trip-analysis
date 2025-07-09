-- Joined Tables
SELECT
  td.trip_id,
  td.pickup_time,
  td.drop_off_time,
  td.vehicle,
  td.passenger_count,
  td.fare_amount,
  td.trip_distance,
  pl.Location AS Pickup_Zone,
  dl.Location AS Dropoff_Zone
FROM `x-cycling-456011-f6.Uber_Analysis.trip_details` td
LEFT JOIN `x-cycling-456011-f6.Uber_Analysis.location` pl
  ON td.pu_location_id = pl.LocationID
LEFT JOIN `x-cycling-456011-f6.Uber_Analysis.location` dl
  ON td.do_Location_id = dl.LocationID
LIMIT 100;


## Overview Analysis

-- 1. Total Trips
SELECT COUNT(*) AS total_trips
FROM `x-cycling-456011-f6.Uber_Analysis.trip_details`;

-- 2. Total Fare Collected
SELECT ROUND(SUM(fare_amount), 2) AS total_fare
FROM `x-cycling-456011-f6.Uber_Analysis.trip_details`;

-- 3. Total Trip Distance
SELECT ROUND(SUM(trip_distance), 2) AS total_distance
FROM `x-cycling-456011-f6.Uber_Analysis.trip_details`;

-- 4. Total Passengers Served
SELECT SUM(passenger_count) AS total_passengers
FROM `x-cycling-456011-f6.Uber_Analysis.trip_details`;

-- 5. Average Fare per Trip
SELECT ROUND(AVG(fare_amount), 2) AS avg_fare
FROM `x-cycling-456011-f6.Uber_Analysis.trip_details`;

-- 6. Most Frequent Pickup Zone
SELECT 
  pl.Location AS pickup_zone,
  COUNT(*) AS trip_count
FROM `x-cycling-456011-f6.Uber_Analysis.trip_details` td
JOIN `x-cycling-456011-f6.Uber_Analysis.location` pl
  ON td.pu_location_id = pl.LocationID
GROUP BY pickup_zone
ORDER BY trip_count DESC
LIMIT 1;

-- 7. Most Frequent Dropoff Zone
SELECT 
  dl.Location AS dropoff_zone,
  COUNT(*) AS trip_count
FROM `x-cycling-456011-f6.Uber_Analysis.trip_details` td
JOIN `x-cycling-456011-f6.Uber_Analysis.location` dl
  ON td.do_Location_id = dl.LocationID
GROUP BY dropoff_zone
ORDER BY trip_count DESC
LIMIT 1;

## Time-Based Insights

-- 8. Trips by Hour of Day
SELECT 
  EXTRACT(HOUR FROM pickup_time) AS hour_of_day,
  COUNT(*) AS total_trips
FROM `x-cycling-456011-f6.Uber_Analysis.trip_details`
GROUP BY hour_of_day
ORDER BY hour_of_day;

-- 9. Trips by Day of Week
SELECT 
  FORMAT_DATE('%A', DATE(pickup_time)) AS day_of_week,
  COUNT(*) AS total_trips
FROM `x-cycling-456011-f6.Uber_Analysis.trip_details`
GROUP BY day_of_week
ORDER BY total_trips DESC;

-- 10. Trips by Date
SELECT 
  DATE(pickup_time) AS trip_date,
  COUNT(*) AS total_trips
FROM `x-cycling-456011-f6.Uber_Analysis.trip_details`
GROUP BY trip_date
ORDER BY trip_date;

-- 11. Average Trip Duration (in minutes)
SELECT 
  ROUND(AVG(TIMESTAMP_DIFF(drop_off_time, pickup_time, MINUTE)), 2) AS avg_trip_duration_mins
FROM `x-cycling-456011-f6.Uber_Analysis.trip_details`;

-- 12. Total Revenue by Day
SELECT 
  DATE(pickup_time) AS trip_date,
  ROUND(SUM(fare_amount), 2) AS total_revenue
FROM `x-cycling-456011-f6.Uber_Analysis.trip_details`
GROUP BY trip_date
ORDER BY trip_date;

-- 13. Trip Count by Vehicle Type
SELECT 
  vehicle,
  COUNT(*) AS total_trips
FROM `x-cycling-456011-f6.Uber_Analysis.trip_details`
GROUP BY vehicle
ORDER BY total_trips DESC;

-- 14. Trip Count by Passenger Count
SELECT 
  passenger_count,
  COUNT(*) AS total_trips
FROM `x-cycling-456011-f6.Uber_Analysis.trip_details`
GROUP BY passenger_count
ORDER BY passenger_count;

-- 15. Average Fare per Vehicle Type
SELECT 
  vehicle,
  ROUND(AVG(fare_amount), 2) AS avg_fare
FROM `x-cycling-456011-f6.Uber_Analysis.trip_details`
GROUP BY vehicle
ORDER BY avg_fare DESC;

-- 16. Total Revenue per Vehicle Type
SELECT 
  vehicle,
  ROUND(SUM(fare_amount), 2) AS total_revenue
FROM `x-cycling-456011-f6.Uber_Analysis.trip_details`
GROUP BY vehicle
ORDER BY total_revenue DESC;

-- 17. Average Trip Distance by Vehicle Type
SELECT 
  vehicle,
  ROUND(AVG(trip_distance), 2) AS avg_trip_distance
FROM `x-cycling-456011-f6.Uber_Analysis.trip_details`
GROUP BY vehicle
ORDER BY avg_trip_distance DESC;

-- 18. Top 10 Highest Fare Trips
SELECT 
  trip_id,
  vehicle,
  passenger_count,
  fare_amount,
  trip_distance,
  pickup_time,
  drop_off_time
FROM `x-cycling-456011-f6.Uber_Analysis.trip_details`
ORDER BY fare_amount DESC
LIMIT 10;



