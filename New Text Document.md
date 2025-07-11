# Canadian Housing Price Index Growth Analysis (2016–2024)

## 1. Introduction

This project investigates housing price trends across major Canadian cities between 2016 and 2024. Using official data from Statistics Canada, we conducted a comprehensive analysis with R and built an interactive dashboard using Power BI to highlight regional disparities in housing market growth.

---

## 2. Objectives

- Analyze housing price evolution across key Canadian cities  
- Compare city-level growth from 2016 to 2024  
- Identify the top and bottom performers  
- Create clear visualizations for public understanding  

---

## 3. Data Source

- **Origin:** Statistics Canada (StatCan)
- **Indicator:** New Housing Price Index (NHPI)
- **Frequency:** Monthly
- **Years Covered:** 1981–2024 (filtered to 2016–2024)
- **Units:** Index (2016=100)

---

## 4. Methodology

### Data Cleaning (in R)
- Loaded `housing_raw.csv`, selected relevant columns:  
  `REF_DATE`, `GEO`, `New housing price indexes`, and `VALUE`
- Filtered out `NA` values and unwanted index types (kept `Total (house and land)`)
- Standardized date formats and converted city names to factors
- Extracted `2016` and `2024` values to calculate:
  - Absolute growth
  - Percentage growth

### Final Dataset Structure

| Column Name   | Description                       |
|---------------|-----------------------------------|
| Date          | Monthly date (YYYY-MM)            |
| Geography     | City / Region                     |
| Type          | Type of price index (Total)       |
| Value         | Index value (base = 2016 = 100)   |

---

## 5. Key Findings

### 🔝 Top Cities by Growth (2016–2024)

| City                          | 2016 | 2024 | Growth % |
|-------------------------------|------|------|-----------|
| Ottawa-Gatineau (ON part)     | 100  | 165.9| 65.9%     |
| Montréal                      | 95.1 | 145.1| 52.6%     |
| Calgary                       | 97.7 | 136.3| 39.5%     |
| Edmonton                      | 93.2 | 123.7| 32.7%     |
| Toronto                       | 104.5| 123.2| 17.9%     |
| Regina                        | 100.3| 101.2| 0.9%      |

> Ottawa surprisingly leads all cities in price growth, even outperforming Toronto and Vancouver.

---

## 6. Visualizations

### A. Bar Chart
- Visualizes growth % from 2016 to 2024 for major cities.
- Highlights Ottawa as the leader in housing price increase.

### B. Power BI Dashboard
- Interactive elements:
  - Bubble Map (city-based growth)
  - Cards showing max/min growth
  - Tooltips with historical comparisons
  - City slicers and filters
- Map sizing and color saturation reflect percent growth.

---

## 7. Dashboard Design Notes

- Used Bubble Map (not filled map) to show city sizes based on growth.
- Size: `Percent_Growth`, Color: `Percent_Growth`
- Enhanced with tooltips showing:
  - 2016 Value
  - 2024 Value
  - Growth (%)

---

## 8. Limitations

- NHPI does not reflect resale or rental prices.
- Small markets may distort visual scale due to low baseline values.
- Monthly granularity was not used in favor of yearly comparisons.

---

## 9. Future Work

- Integrate rental data for affordability comparison
- Include tech employment or income data for context
- Add regional population growth to explain housing demand
- Build time-series forecasts using ARIMA or Prophet

---

## 10. File Guide

| Folder        | Contents                                       |
|---------------|------------------------------------------------|
| `data/`       | Raw and processed CSV files                    |
| `scripts/`    | R scripts used for data wrangling and analysis |
| `visuals/`    | Exported graphs (PNG, JPEG)                    |
| `dashboard/`  | Power BI `.pbix` dashboard file                |

---

## 11. Conclusion

Ottawa emerged as the unexpected leader in housing price growth over the last eight years, highlighting a shift in real estate dynamics in Canada. This analysis offers valuable insight into long-term price trends and lays the foundation for more data-driven urban policy discussions.

---

## Author

**Mahmoud Ibrahim**  
Computer Programming Student, Algonquin College  
GitHub: [github.com/mahmoudibrahim](https://github.com/mahmoudibrahim)  
