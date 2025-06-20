# Airports Data Overview

This document describes the structure, sources, and usage of the datasets related to European airports and air traffic, used in this project.

## 📁 Source Files

- **airports.csv**: Metadata for airports worldwide, including location, country, and elevation.
- **airlines.csv**: Basic information about airlines (name, code, country).
- **routes.csv**: Routes connecting source and destination airports (with airline and equipment codes).
- **traffic_monthly.csv**: Monthly passenger traffic per reporting airport (ICAO code), from Nov 2023 to Jan 2025.

## 📌 Key Variables

### `airports.csv`
- `icao`: ICAO airport code (primary key)
- `name`: Airport name
- `city`, `country`
- `latitude`, `longitude`: Coordinates used for geolocation and NUTS2 mapping
- `altitude`: Used in elevation-based visualizations

### `traffic_monthly.csv`
- `rep_airp`: ICAO code of reporting airport
- `month`: Reporting period (YYYY-MM)
- `passengers`: Total passenger count
- `traffic_type`: Domestic / Intra-EU / Extra-EU

### `routes.csv`
- `source_airport`, `destination_airport`: ICAO codes
- `airline`: Airline code
- `codeshare`: Y/N
- `stops`: Number of stops
- `equipment`: Aircraft type (when available)

## 🛠️ Notes on Preprocessing

- All files were cleaned and imported into SQL Server.
- ICAO code was used as primary key and join field.
- Only airports with traffic data were retained.
- Route duplicates were removed before visualizing unique connections.
