# 🧾 SQL Scripts – Data Modeling & Aggregation

This folder contains the SQL code used for cleaning, transforming, and modeling the data once imported into SQL Server. All views created here serve as the foundation for the Tableau Prep data model and dashboards.

---

## 🗂️ Included Scripts

All SQL logic is organized into two main files:

| File                          | Description |
|-------------------------------|-------------|
| `ETL_EDA_SQLQuery1.sql`       | Initial data loading, table cleanup, and exploratory queries |
| `Create_VIEWS_SQLQuery1.sql`  | Definitions of final views used in Tableau Prep and Tableau Desktop |

These scripts define the views listed below, each serving a specific role in the data model:

- `traffic_monthly_by_airport`  
- `traffic_total_by_airport`  
- `routes_by_airport`  
- `airlines_by_airport`  
- `tourism_country_level`  
- `tourism_nuts2_level`  
- `airports_with_nuts2`  

---

## 🔁 Data Flow

1. **Raw CSVs** → Imported into SQL Server as clean base tables  
2. **SQL Views** → Created via `Create_VIEWS_SQLQuery1.sql` to simplify downstream modeling  
3. **Tableau Prep** → Joins and additional calculations performed visually

---

## 🧩 Purpose in the Project

- Normalize relationships between airports, airlines, and routes
- Aggregate passenger traffic at different levels (monthly, total, by region)
- Align tourism data (country/NUTS2) with air traffic data
- Provide clean, ready-to-use views to reduce complexity in Tableau

---

## ⚠️ Notes

- All views were designed with performance in mind and to avoid duplication issues in Tableau
- Any sensitive or redundant joins were handled in Tableau Prep after importing these views
