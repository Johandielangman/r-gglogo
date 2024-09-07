# ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~
#      /\_/\
#     ( o.o )
#      > ^ <
#
# Author: Johan Hanekom
# Date: September 2024
#
# ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~

# ============= // LOAD BASIC PACKAGES // =============

invisible(lapply(c(
    "ggplot2",
    "png"
),library, c=TRUE))

source(file.path(getwd(), "01_gglogo.R"))

LOGO_PATH <- file.path(getwd(), "resources", "logo.png")
OUTPUT_DIR <- file.path(getwd(), "output")

# ============= // EXAMPLES // =============

# ===> Line
ggplot(mpg, aes(x = displ, y = hwy, colour = class)) +
  geom_line() +
  theme_minimal() +
  theme(
    plot.background = element_rect(fill = "white"),
  ) +
  gglogo(
    logo_path = LOGO_PATH,
    x_npc = 0.85,
    y_npc = 0.9,
    scale = 2.5
  )
ggsave(file.path(OUTPUT_DIR, "line.png"))

# ====> Scatter
ggplot(mpg, aes(x = displ, y = trans)) +
  geom_point() +
  theme_minimal() +
  theme(
    plot.background = element_rect(fill = "white"),
  ) +
  gglogo(
    logo_path = LOGO_PATH,
    x_npc = 0.85,
    y_npc = 0.1,
    scale = 2.5
  )
ggsave(file.path(OUTPUT_DIR, "scatter_01.png"))

ggplot(mpg, aes(x = displ, y = hwy, colour = class)) +
  geom_point() +
  theme_minimal() +
  theme(
    plot.background = element_rect(fill = "white"),
  ) +
  gglogo(
    logo_path = LOGO_PATH,
    x_npc = 0.85,
    y_npc = 0.85,
    scale = 2.5
  )
ggsave(file.path(OUTPUT_DIR, "scatter_02.png"))

# =====> Barplot
ggplot(mpg, aes(x = class)) +
  geom_bar() +
  theme_minimal() +
  theme(
    plot.background = element_rect(fill = "white"),
  ) +
  gglogo(
    logo_path = LOGO_PATH,
    x_npc = 0.3,
    y_npc = 0.9,
    scale = 2.5
  )
ggsave(file.path(OUTPUT_DIR, "bar.png"))

# =====> Histogram
ggplot(mpg, aes(x = hwy)) +
  geom_histogram(binwidth = 1) +
  theme_minimal() +
  theme(
    plot.background = element_rect(fill = "white"),
  ) +
  gglogo(
    logo_path = LOGO_PATH,
    x_npc = 0.8,
    y_npc = 0.8,
    scale = 2.5
  )
ggsave(file.path(OUTPUT_DIR, "hist.png"))

# =====> Col
ggplot(mpg, aes(x = class, y = hwy, fill = class)) +
  geom_col() +
  theme_minimal() +
  theme(
    plot.background = element_rect(fill = "white"),
  ) +
  gglogo(
    logo_path = LOGO_PATH,
    x_npc = 0.8,
    y_npc = 0.9,
    scale = 2.5
  )
ggsave(file.path(OUTPUT_DIR, "col.png"))

# =====> Boxplot
ggplot(mpg, aes(x = class, y = hwy, fill = class)) +
  geom_boxplot() +
  theme_minimal() +
  theme(
    plot.background = element_rect(fill = "white"),
  ) +
  gglogo(
    logo_path = LOGO_PATH,
    x_npc = 0.5,
    y_npc = 0.8,
    scale = 2.5
  )
ggsave(file.path(OUTPUT_DIR, "box.png"))



# =====> Time series
mpg$date <- seq(as.Date("2020-01-01"), by = "month", length.out = nrow(mpg))

ggplot(mpg, aes(x = date, y = hwy, colour = class)) +
  geom_line() +
  theme_minimal() +
  theme(
    plot.background = element_rect(fill = "white"),
  ) +
  gglogo(
    logo_path = LOGO_PATH,
    x_npc = 0.2,
    y_npc = 0.8,
    scale = 2.5
  )
ggsave(file.path(OUTPUT_DIR, "time.png"))

