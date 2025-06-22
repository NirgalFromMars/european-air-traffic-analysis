# ✈️ European Air Traffic & Tourism Analysis (2023–2025)

This project presents an end-to-end analysis of air traffic and tourism in Europe, combining public datasets from various sources. It covers data ingestion, cleaning, modeling, geospatial enrichment, and visualization through interactive dashboards built with Tableau.

---

## 📌 Project Scope

- Analyze passenger traffic by airport and by month (2023–2025).
- Enrich airports with geographic and administrative information (NUTS2 regions).
- Combine tourism data (overnight stays) to explore traffic-tourism relationships.
- Deliver four themed dashboards for interactive exploration in Tableau.

---

## 🗂️ Repository Structure

├── data_docs/ # Documentation of all datasets used
├── sql_server/ # SQL scripts and views for modeling and aggregation
├── visualizations/ # Dashboard previews (images or GIFs)
├── notebooks/ # Python scripts for geospatial enrichment
└── README.md # Main documentation (this file)


---

## 📊 Dashboards (Tableau Public)

All dashboards were built with Tableau Desktop and published on Tableau Public.  
Click the image below or use the link to access the full interactive experience.

🔗 **[View dashboards on Tableau Public](https://public.tableau.com/app/profile/eros1782/viz/EuropeanAirTrafficTourismAnalysis)**  

---

## 🧩 Datasets Used

| Dataset                | Source                                 | Description                             |
|------------------------|----------------------------------------|-----------------------------------------|
| Airports & Routes      | [OpenFlights](https://openflights.org/data.html) | Metadata, traffic & route data         |
| Passenger Traffic      | Various airport authorities (compiled) | Monthly passengers by airport (2023–25) |
| Tourism Data           | [Eurostat](https://ec.europa.eu/eurostat) | Overnight stays by region & country    |
| NUTS2 Geodata          | [Eurostat GISCO](https://ec.europa.eu/eurostat/web/gisco) | Geospatial regions (2024)              |

Detailed dataset documentation can be found in the [`/data_docs`](./data_docs) folder.

---

## ⚙️ Tools & Technologies

- **SQL Server (SSMS)** – Data ingestion and modeling
- **Python + GeoPandas** – Geospatial enrichment (assigning airports to NUTS2)
- **Tableau Prep** – Final data model design
- **Tableau Desktop** – Visualization and dashboard creation
- **Tableau Public** – Dashboard publication

---

## 🧭 Dashboards Overview

1. **Dashboard 1: Total Traffic**
   - Evolution, MoM, type of traffic, and top airports
2. **Dashboard 2: Traffic vs Tourism**
   - Regional maps, scatter plots, and correlations
3. **Dashboard 3: Airport Characteristics**
   - Domestic vs international shares, airport elevation
4. **Dashboard 4: Routes & Airlines**
   - Incoming/outgoing routes and airline distribution

Each dashboard includes navigation buttons and visual tooltips where relevant.
![D_Index](https://github.com/user-attachments/assets/1b5ec936-d38c-46c9-ae52-0a1447af60df)

---

## 📝 Author & License

Created by Francisco Eros Blázquez del Rio (https://github.com/NirgalFromMars) – Data Analyst  
This project is open source under the MIT License.

---

## 📍 Notes

- All data used are publicly available and cited appropriately.
- This project is for educational and portfolio purposes.
