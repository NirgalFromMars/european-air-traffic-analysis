# 🐍 Jupyter Notebooks – Geospatial Enrichment

This folder contains the Python notebook used to enrich airport data with geospatial information. The main goal was to assign each airport to its corresponding NUTS2 region using coordinates.

---

## 📘 Included Notebook

- `Generate_Airports_with_NUTS2_codes.ipynb`:  
  Uses the airport latitude and longitude data to spatially join each point with a polygon from the NUTS2 2024 shapefile.

---

## ⚙️ Libraries Used

- `pandas`
- `geopandas`
- `shapely`
- `matplotlib` (optional for visual inspection)
- `pyproj` (for CRS transformations)

---

## 🗺️ Input & Output

- **Input:**
  - Cleaned CSV with airport coordinates (`airports_clean.csv`)
  - Shapefile from Eurostat GISCO (NUTS 2024, scale 1:10M, EPSG:4326)

- **Output:**
  - Enriched CSV (`airports_with_nuts2.csv`) with:
    - ICAO code
    - airport name
    - country
    - assigned NUTS2 code

---

## 📌 Purpose in Project

The resulting dataset is imported into SQL Server and used to:
- Enable regional traffic aggregation
- Link with Eurostat tourism data by NUTS2
- Build spatially-aware dashboards in Tableau

---

## 📎 Notes

- NUTS2 assignment was based on spatial overlay (point-in-polygon).
- Airports outside the EU or with missing coordinates were excluded.
