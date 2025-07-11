library(tidyverse)
library(lubridate)

# Read the cleaned file from the correct path
df <- read_csv("D:/College/projects/canadian-housing-prices-analysis--R-PowerBI-/data/processed/housing_clean_final.csv")

# Prepare data for Power BI
df_pbi <- df %>%
  filter(Type == "Total (house and land)") %>%
  mutate(Year = year(Date)) %>%
  group_by(Geography, Year) %>%
  summarize(Avg_Value = round(mean(Value, na.rm = TRUE), 2), .groups = "drop")

# Save the new CSV file
write_csv(df_pbi, "D:/College/projects/canadian-housing-prices-analysis--R-PowerBI-/data/processed/housing_for_powerbi.csv")
