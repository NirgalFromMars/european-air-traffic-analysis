# NUTS Geodata Overview

This document explains the geospatial data and process used to assign each airport to a NUTS2 region.

## 📁 Source

- **Shapefile**: NUTS 2024 geospatial data
- **Scale**: 1:10M
- **Geometry**: Region boundaries (type RG)
- **CRS**: EPSG:4326 (WGS84)
- **Source**: [Eurostat GISCO](https://ec.europa.eu/eurostat/web/gisco/geodata/reference-data/administrative-units-statistical-units/nuts)

## 🗺️ Geoprocessing with Python

1. Loaded shapefile using `GeoPandas`.
2. Loaded airports with valid `latitude`/`longitude` from `airports.csv`.
3. Converted both to GeoDataFrames with matching CRS.
4. Performed spatial join to assign each airport to its NUTS2 region.
5. Exported the result as `airports_with_nuts2.csv`.
6. Loaded the CSV into SQL Server for further analysis.

## 🔍 Notes

- Only airports with valid coordinates were included.
- Airports outside the NUTS2 coverage area were excluded.
- This table served as the basis for traffic vs. tourism regional comparison.