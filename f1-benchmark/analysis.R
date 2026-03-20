library(tidyverse)

# ── Load synthetic F1 season data ──────────────────────────────────────────
f1 <- read_csv("data.csv")

# ── Summarise driver & team points ─────────────────────────────────────────
summary_df <- f1 |>
  group_by(driver, team, elite_team) |>
  summarise(
    driver_pts = sum(points),
    .groups = "drop"
  )

# Add team-level points
team_pts <- f1 |>
  group_by(team) |>
  summarise(team_pts = sum(points), .groups = "drop")

summary_df <- summary_df |>
  left_join(team_pts, by = "team")

# ── Bivariate scatter with density contours ────────────────────────────────
p <- ggplot(summary_df, aes(x = driver_pts, y = team_pts, color = elite_team)) +
  geom_density_2d(alpha = 0.4, linewidth = 0.5) +
  geom_point(size = 4, alpha = 0.85) +
  scale_color_manual(
    values = c("TRUE" = "#E2231B", "FALSE" = "#0591F8"),
    labels = c("TRUE" = "Elite (Top 4)", "FALSE" = "Non-elite")
  ) +
  labs(
    title = "F1 Driver Points vs Team Points (2025 Season)",
    subtitle = "Elite teams form a distinct high-performance cluster",
    x = "Driver Points",
    y = "Team Points",
    color = "Team Status"
  ) +
  theme_minimal(base_size = 14) +
  theme(
    plot.background = element_rect(fill = "#FAFAFA", color = NA),
    panel.background = element_rect(fill = "#FAFAFA", color = NA),
    plot.title = element_text(face = "bold", size = 16),
    plot.subtitle = element_text(color = "#666666", size = 12),
    legend.position = "bottom",
    panel.grid.minor = element_blank()
  )

# ── Save ───────────────────────────────────────────────────────────────────
ggsave(
  "../../public/f1-benchmark-plot.png",
  plot = p,
  width = 10.8,
  height = 8,
  dpi = 100
)

cat("Plot saved to public/f1-benchmark-plot.png\n")
