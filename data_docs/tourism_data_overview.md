# Tourism Data Overview

This document summarizes the structure and use of tourism data sourced from Eurostat.

## 📁 Source Files

- **overnights_by_region.csv**: Annual number of overnight stays by region (NUTS2) and country of residence.
- **overnights_by_country.csv**: Annual total overnight stays by country (aggregated).

## 📌 Key Variables

### `overnights_by_region.csv`
- `geo`: NUTS2 region code (e.g., ES511)
- `c_resid`: Country of residence (e.g., DE, FR, TOTAL)
- `time`: Year
- `value`: Number of overnight stays

### `overnights_by_country.csv`
- `geo`: Country code (2-letter)
- `c_resid`: Always 'TOTAL'
- `time`, `value`: Same as above

## 🛠️ Preprocessing Steps

- Filtered `c_resid = 'TOTAL'` for total overnight stays.
- Kept only valid NUTS2 codes (length = 5).
- Converted wide format to long where necessary.
- Loaded into SQL Server as two separate tables.