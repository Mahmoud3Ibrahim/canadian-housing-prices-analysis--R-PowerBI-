# Load required libraries
library(tidyverse)
library(lubridate)

# Read cleaned housing data
df <- read_csv("data/processed/housing_clean_final.csv")

# Define target cities and province
target_cities <- c("Ottawa", "Toronto", "Vancouver", "Calgary", "Edmonton", "Montréal", "Manitoba")

# Filter for total housing index and selected locations
filtered_df <- df %>%
  filter(Type == "Total (house and land)") %>%
  filter(str_detect(Geography, paste(target_cities, collapse = "|")))

# Define custom colors for each location (to improve visual clarity)
custom_colors <- c(
  "Calgary, Alberta" = "#e41a1c",        # Red
  "Manitoba" = "#984ea3",                # Purple
  "Ottawa-Gatineau, Ontario part, Ontario/Quebec" = "#4daf4a", # Light Green
  "Toronto, Ontario" = "#377eb8",        # Dark Blue
  "Edmonton, Alberta" = "#ff7f00",       # Orange
  "Montréal, Quebec" = "#a65628",        # Brown
  "Ottawa-Gatineau, Quebec part, Ontario/Quebec" = "#f781bf",  # Pink
  "Vancouver, British Columbia" = "#999999"                   # Dark Gray
)

# Create time series line plot for housing index
ggplot(filtered_df, aes(x = Date, y = Value, color = Geography)) +
  geom_line(size = 1.1) +
  labs(
    title = "Housing Price Index Over Time (Total - House and Land)",
    subtitle = "Selected Canadian Cities and Manitoba",
    x = "Year",
    y = "Index (2016 = 100)",
    color = "City / Province"
  ) +
  scale_color_manual(values = custom_colors) +
  theme_minimal() +
  theme(legend.position = "bottom")

# Optional: Save the plot to file
ggsave("output/charts/cities_trend.png", width = 10, height = 6)
