# Configuración común de gráficos para las diapositivas (ggplot2)
# Uso en cada .qmd:  source("../_common.R")

suppressPackageStartupMessages({
  library(ggplot2)
  library(dplyr)
  library(tidyr)
})

# Paleta categórica (orden fijo; los 3 primeros validados para daltonismo)
col_serie <- c("#2a78d6", "#eb6834", "#1baf7a")

# Rampa secuencial azul (claro → oscuro) para bandas de agua
col_agua <- c("#dbe9f9", "#9cc3ef", "#4f93e0", "#1f5fae")

# Tintas de texto y referencias
col_texto <- "#0b0b0b"
col_texto2 <- "#52514e"
col_ref <- "#8a8984"

theme_curso <- function(base_size = 18) {
  theme_minimal(base_size = base_size) +
    theme(
      plot.background = element_rect(fill = "white", colour = NA),
      panel.grid.minor = element_blank(),
      panel.grid.major = element_line(colour = "#e6e5e1", linewidth = 0.4),
      axis.title = element_text(colour = col_texto2),
      axis.text = element_text(colour = col_texto2),
      plot.title = element_text(colour = col_texto, face = "bold"),
      plot.subtitle = element_text(colour = col_texto2),
      plot.caption = element_text(colour = col_texto2, size = rel(0.7)),
      legend.position = "top",
      legend.title = element_blank(),
      legend.text = element_text(colour = col_texto2),
      strip.text = element_text(colour = col_texto, face = "bold", hjust = 0)
    )
}

theme_set(theme_curso())
