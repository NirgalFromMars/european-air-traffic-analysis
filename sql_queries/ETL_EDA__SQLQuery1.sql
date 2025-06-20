---- AIRPORTS TABLE ----
SELECT * FROM [dbo].[airports]

-- check if any value of longitude/latitude/timezone is a problem when converting to float
SELECT *
FROM airports
WHERE TRY_CAST(timezone AS FLOAT) IS NULL AND timezone IS NOT NULL;

-- convert longitude/latitude/timezone columns to float
ALTER TABLE airports
ALTER COLUMN timezone FLOAT;

-- check those columns values for european rows (the ones will be under study)
SELECT DISTINCT latitude
FROM airports
WHERE timezone2 LIKE 'Europe%';

---- ROUTES TABLE ----
SELECT * FROM [dbo].[routes]

-- delete 3 columns we'll not need
ALTER TABLE dbo.routes
DROP COLUMN codeshare, stops, equipment;

---- TRAFFIC_STATS TABLE ----
SELECT * FROM [dbo].traffic_stats

-- delete unnecessary columns
ALTER TABLE dbo.traffic_stats
DROP COLUMN [DATAFLOW], LAST_UPDATE, freq, unit, schedule, tra_meas, OBS_FLAG, CONF_STATUS;

-- create new date column as DATE type
ALTER TABLE dbo.traffic_stats
ADD time_period_date DATE;

-- update new date column adding day "01":
UPDATE dbo.traffic_stats
SET time_period_date = CAST(TIME_PERIOD + '-01' AS DATE);

---- TOURISM_STATS TABLE ----
SELECT * FROM [dbo].tourism_stats

-- delete unnecessary columns
ALTER TABLE tourism_stats
DROP COLUMN
	STRUCTURE,
    STRUCTURE_ID,
    STRUCTURE_NAME,
    freq,
    Time_frequency,
    [Country_of_residence],
	unit,
    [Unit_of_measure],
    nace_r2,
    [Statistical_classification_of_economic_activities_in_the_European_Community_NACE_Rev_2],
    [Time],
    [Observation_value],
    OBS_FLAG,
	[Observation_status_Flag_V2_structure],
    CONF_STATUS,
    [Confidentiality_status_flag];

-- new column with year as date type (adding day/month, first day of year)
ALTER TABLE tourism_stats
ADD date_year DATE;

UPDATE tourism_stats
SET date_year = CAST(CAST(TIME_PERIOD AS VARCHAR(4)) + '-01-01' AS DATE);

-- new table created with just NUTS2 regions, filtering from general tourism_stats table
SELECT *
INTO tourism_stats_nuts2
FROM tourism_stats
WHERE LEN(geo) = 4;

SELECT * FROM [dbo].tourism_stats_nuts2
WHERE geo LIKE 'NO%'