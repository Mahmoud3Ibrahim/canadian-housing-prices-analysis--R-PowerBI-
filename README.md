# Canadian Housing Prices Analysis (2016–2024)

This project analyzes the New Housing Price Index across major Canadian cities and provinces using public data from Statistics Canada.

## Key Insight

Ottawa — not Toronto or Vancouver — had the highest housing price increase from 2016 to 2024.  
Prices in Ottawa grew by over X%, surpassing all other major cities.

## Data Source

- Source: Statistics Canada – Table 18-10-0205-01
- Type: Monthly Housing Price Index
- Period: 2016–2024
- Base: 2016 = 100

## Methodology

- Loaded raw data from CSV
- Cleaned and filtered only Total (house and land) prices
- Focused on key cities:
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
  - Others...
- Calculated percentage growth between 2016 and 2024
- Visualized:
  - Time series line charts
  - Bar charts for growth comparison
  - Normalized index trends

## Project Structure

canadian-housing-prices-analysis/
├── data/                         # Raw & processed data  
├── scripts/                      # R scripts for cleaning, analysis & plotting  
├── output/  
│   ├── charts/                   # Plots as PNGs  
│   └── summary_tables/           # Growth summary tables  
├── README.md  
└── housing_project.Rproj  

## Sample Visualizations

Bar chart: housing_growth_barchart_2016_2024.png  
Line chart: cities_trend.png

## Tools Used

- tidyverse
- lubridate
- ggplot2
- dplyr
- readr

## Contact

Built by Mahmoud Ibrahim  
Ottawa, Canada  
GitHub: https://github.com/YOUR_USERNAME  
LinkedIn: https://www.linkedin.com/in/YOUR_LINK
