# Canadian Housing Prices Analysis (2016–2024)

This project analyzes trends in the New Housing Price Index across major Canadian cities using data from Statistics Canada.

---

## Key Insight

Ottawa — not Toronto or Vancouver — experienced the highest housing price increase from 2016 to 2024.  
Prices in Ottawa grew by over XX%, surpassing all other major cities in Canada.

---

## Data Source

- Source: Statistics Canada – Table 18-10-0205-01
- Type: Monthly Housing Price Index
- Period: 2016–2024
- Base: 2016 = 100

---

## Methodology

- Loaded raw CSV data
- Filtered only Total (house and land) prices
- Focused on selected cities:
  - Ottawa
  - Toronto
  - Vancouver
  - Montréal
  - Calgary
  - Edmonton
  - Halifax
  - Quebec City
  - Winnipeg
  - Hamilton
  - Kitchener–Cambridge–Waterloo
- Calculated growth between 2016 and 2024
- Produced:
  - Time series line charts
  - Bar charts comparing total growth
  - Normalized trend lines

---

## Project Structure

canadian-housing-prices-analysis/  
├── data/                  # Raw and cleaned CSVs  
├── scripts/               # R scripts for cleaning, analysis, and plotting  
├── output/  
│   ├── charts/            # PNG visualizations  
│   └── summary_tables/    # Summary growth tables  
├── housing_project.Rproj  # RStudio project file  
└── README.md              # Project documentation

---

## Tools Used

- tidyverse  
- ggplot2  
- dplyr  
- lubridate  
- readr  

---

## Author

Mahmoud Ibrahim  
Ottawa, Canada

## License

This project is for academic and non-commercial use.  
Feel free to fork or contribute — attribution appreciated.
