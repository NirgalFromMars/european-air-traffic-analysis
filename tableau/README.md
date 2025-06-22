# 📊 Tableau – Data Modeling & Visualization

This folder contains all files related to the visual data exploration and dashboard creation performed in Tableau. It covers both the data model construction in **Tableau Prep** and the development of dashboards in **Tableau Desktop**.

---

## 🛠️ Tools Used

- **Tableau Prep** (Free trial): for modeling and enriching the dataset using SQL views and additional logic.
- **Tableau Desktop** (Free trial): for creating dashboards and publishing them to Tableau Public.

---

## 📐 Data Model Overview (Tableau Prep)

The Prep workflow connects to pre-processed views stored in SQL Server. It performs:

- Joins between air traffic data and tourism data
- Enrichment of airports with regional (NUTS2) codes
- Calculation of derived metrics (e.g., traffic by type, number of routes, incoming/outgoing ratios)
- Cleaning of nulls and field normalization

The final output of this workflow is used directly in Tableau Desktop.

---

## 📈 Dashboards (Tableau Desktop)

A total of **4 themed dashboards** were created from 14 individual visualizations:

| Dashboard | Theme                            | Key Visuals Included |
|----------|----------------------------------|----------------------|
| `D1`     | Air Traffic – Volume & Evolution | V1–V5, V12           |
| `D2`     | Traffic vs Tourism               | V6–V8, V11           |
| `D3`     | Airport Profiles                 | V9, V10              |
| `D4`     | Routes & Airlines                | V13, V14             |

Additionally, a landing page `D_Index` was created to act as a navigation hub.

Each dashboard includes interactive filters, and some feature enhanced tooltips with embedded charts (e.g., treemaps, bar charts).

---

## 🔗 Navigation

- A **minimalist navigation system** was implemented using dashboard buttons:
  - From `D_Index` to each of the 4 main dashboards
  - A "Back to Index" button in each dashboard
- Visual consistency and simplicity were prioritized

---

## 🌐 Tableau Public

The full interactive version is available on [Tableau Public](https://public.tableau.com/).  
See project root `README.md` for direct link and description.

---

## 🗂️ Files

| File                          | Description |
|-------------------------------|-------------|
| `european_air_traffic_analysis.twbx` | Packaged Tableau workbook (Prep + Desktop) |
| Images or GIFs (optional)     | Visual captures for GitHub previews (stored in `/images`) |
