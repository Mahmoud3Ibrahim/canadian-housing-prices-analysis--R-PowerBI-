# 03_analysis.R

library(tidyverse)
library(lubridate)

# Load cleaned data
df <- read_csv("data/processed/housing_clean_final.csv")

# Trend over time (for all of Canada, Total only)
canada_total <- df %>%
  filter(Geography == "Canada", Type == "Total (house and land)") %>%
  arrange(Date)

# Plot trend
ggplot(canada_total, aes(x = Date, y = Value)) +
  geom_line(color = "steelblue", size = 1.2) +
  labs(title = "New Housing Price Index - Canada (Total)",
       x = "Year",
       y = "Index (2016=100)") +
  theme_minimal()
