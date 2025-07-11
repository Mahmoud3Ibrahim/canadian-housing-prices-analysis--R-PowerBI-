# 01_fetch_data.R
library(tidyverse)

df <- read_csv("data/housing_raw.csv")
glimpse(df)

write_csv(df, "data/processed/housing_clean_base.csv")

