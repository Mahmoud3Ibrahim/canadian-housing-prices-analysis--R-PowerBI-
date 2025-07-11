filtered_df %>%
  filter(Geography %in% c("Ottawa-Gatineau, Ontario part, Ontario/Quebec", "Toronto, Ontario")) %>%
  ggplot(aes(x = Date, y = Value, color = Geography)) +
  geom_line(size = 1.2) +
  labs(
    title = "Ottawa vs Toronto: Housing Price Index (2016–2024)",
    x = "Year",
    y = "Index (2016 = 100)"
  ) +
  theme_minimal()
