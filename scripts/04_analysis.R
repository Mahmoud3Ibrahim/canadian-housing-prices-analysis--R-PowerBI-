# 04_growth_analysis.R

library(tidyverse)
library(lubridate)

# Load cleaned housing data
df <- read_csv("data/processed/housing_clean_final.csv")

# Final list of key cities/provinces based on actual Geography names
target_cities <- c(
  "Calgary, Alberta",
  "Edmonton, Alberta",
  "Halifax, Nova Scotia",
  "Hamilton, Ontario",
  "Kitchener–Cambridge–Waterloo, Ontario",
  "London, Ontario",
  "Montréal, Quebec",
  "Ottawa-Gatineau, Ontario part, Ontario/Quebec",
  "Ottawa-Gatineau, Quebec part, Ontario/Quebec",
  "Quebec, Quebec",
  "Regina, Saskatchewan",
  "Saskatoon, Saskatchewan",
  "St. John's, Newfoundland and Labrador",
  "Toronto, Ontario",
  "Vancouver, British Columbia",
  "Victoria, British Columbia",
  "Winnipeg, Manitoba",
  "Windsor, Ontario"
)

# Filter for total price index and selected cities
filtered_df <- df %>%
  filter(Type == "Total (house and land)") %>%
  filter(Geography %in% target_cities)

# Get average values for 2016 and 2024 per city
growth_data <- filtered_df %>%
  filter(year(Date) %in% c(2016, 2024)) %>%
  group_by(Geography, year = year(Date)) %>%
  summarize(AvgValue = mean(Value, na.rm = TRUE), .groups = "drop") %>%
  pivot_wider(names_from = year, values_from = AvgValue, names_prefix = "Y") %>%
  mutate(
    Absolute_Growth = Y2024 - Y2016,
    Percent_Growth = round(((Y2024 - Y2016) / Y2016) * 100, 2)
  ) %>%
  arrange(desc(Percent_Growth))

# Preview results
print(growth_data)

# Save to CSV
write_csv(growth_data, "output/summary_tables/growth_2016_2024_expanded.csv")
