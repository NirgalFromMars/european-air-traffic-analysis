-- 1. European airports VIEW
CREATE OR ALTER VIEW airports_cleaned_europe AS
SELECT *
FROM airports
WHERE 
    timezone2 LIKE 'Europe%' 
    OR timezone2 IN (
        'Arctic/Longyearbyen',
        'Atlantic/Canary',
        'Atlantic/Faeroe',
        'Atlantic/Reykjavik'
    );


-- 2. Airlines with routes View
CREATE VIEW airlines_cleaned AS
SELECT *
FROM airlines
WHERE airline_id IN (
    SELECT DISTINCT airline_id
    FROM routes
    WHERE airline_id IS NOT NULL
);


-- 3.1 Routes by airport View (as origin or destination)
CREATE VIEW routes_count_by_airport AS
SELECT airport_id, COUNT(*) AS num_routes
FROM (
    SELECT source_airport_id AS airport_id FROM routes
    UNION ALL
    SELECT destination_airport_id FROM routes
) AS all_airports
WHERE airport_id IS NOT NULL
GROUP BY airport_id;


-- 3.2 Routes by airline View
CREATE VIEW routes_count_by_airline AS
SELECT airline_id, COUNT(*) AS num_routes
FROM routes
WHERE airline_id IS NOT NULL
GROUP BY airline_id;

-- 4. Total passengers traffic by airport View (from 2023-11 to 2025-01)
CREATE VIEW traffic_total_by_airport AS
SELECT rep_airp AS airport,
       SUM(OBS_VALUE) AS total_passengers_NOV2023_JAN2025
FROM traffic_stats
WHERE tra_cov = 'TOTAL'
GROUP BY rep_airp;

-- 5. VISTA: Total de noches en alojamientos por país y año (c_resid = 'TOTAL')
CREATE VIEW tourism_total_nights_by_year_and_country AS
SELECT [Geopolitical_entity_reporting] AS country,
       TIME_PERIOD AS year,
       SUM(OBS_VALUE) AS total_nights
FROM tourism_stats
WHERE c_resid = 'TOTAL' AND LEN(geo) = 2
GROUP BY [Geopolitical_entity_reporting], TIME_PERIOD;

SELECT * FROM [dbo].[airlines_cleaned]