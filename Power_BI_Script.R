library(tidyverse)
library(lubridate)

df <- read_csv("data/processed/housing_clean_final.csv")

df_pbi <- df %>%
  filter(Type == "Total (house and land)") %>%
  mutate(Year = year(Date)) %>%
  group_by(Geography, Year) %>%
  summarize(Avg_Value = mean(Value, na.rm = TRUE), .groups = "drop")

write_csv(df_pbi, "/output/summary_tables/housing_for_powerbi.csv")
