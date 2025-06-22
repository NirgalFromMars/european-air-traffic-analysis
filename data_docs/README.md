# 📚 Data Documentation

This folder contains structured documentation of all datasets used in the *European Air Traffic & Tourism Analysis* project. The focus is on data sources, key fields, structure, and how each dataset contributes to the final model.

---

## 📁 Files Included

| File                                 | Description |
|--------------------------------------|-------------|
| `airports_data.md`                   | Description of airport metadata, traffic, airlines, and routes datasets |
| `tourism_data.md`                    | Documentation of Eurostat tourism data by region and country |
| `nuts2_geodata.md`                   | Description of the shapefile used for NUTS2 region mapping |
| `final_model_structure.md`           | Overview of the integrated data model built in Tableau Prep |

---

## 🧭 Purpose

Each `.md` file provides:

- Original source and licensing (if available)
- Key variables and structure
- Filters or transformations applied
- Purpose within the analytical pipeline

This documentation supports transparency, reproducibility, and future reuse or adaptation.

---

## 🔄 Data Usage in the Project

| Dataset Category | Used For |
|------------------|----------|
| **Airports & Traffic** | Monthly traffic per airport, type of routes, airport elevation |
| **Tourism** | Annual overnight stays by region and country |
| **Geospatial (NUTS2)** | Assigning airports to European administrative regions |
| **Integrated Model** | Tableau Prep joins and calculated fields for dashboards |

---

## 📌 Notes

All original datasets are public and cited.  
No sensitive or private data is included in this project.
