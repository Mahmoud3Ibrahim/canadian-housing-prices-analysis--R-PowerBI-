ggplot(growth_data, aes(x = reorder(Geography, Percent_Growth), y = Percent_Growth)) +
  geom_col(fill = "#2a9df4") +
  coord_flip() +
  labs(
    title = "Housing Price Growth (2016–2024)",
    subtitle = "Ranked by % Growth - Total (House and Land)",
    x = "City / Province",
    y = "Percent Growth"
  ) +
  geom_text(aes(label = paste0(Percent_Growth, "%")), hjust = -0.1, size = 3) +
  theme_minimal() +
  theme(
    plot.title = element_text(face = "bold", size = 14),
    axis.text.y = element_text(size = 9)
  ) +
  ylim(0, max(growth_data$Percent_Growth) * 1.1)

