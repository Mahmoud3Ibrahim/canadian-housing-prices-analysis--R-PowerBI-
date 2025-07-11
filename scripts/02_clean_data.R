# 02_clean_data.R

library(tidyverse)
library(lubridate)

# Load the base data
df <- read_csv("data/processed/housing_clean_base.csv")

# Clean it
clean_df <- df %>%
  select(
    Date = REF_DATE,
    Geography = GEO,
    Type = `New housing price indexes`,
    Value = VALUE
  ) %>%
  filter(!is.na(Value)) %>%
  mutate(
    Date = ym(Date),
    Type = as.factor(Type),
    Geography = as.factor(Geography)
  )

# Quick peek
glimpse(clean_df)

# Save cleaned version
write_csv(clean_df, "data/processed/housing_clean_final.csv")
