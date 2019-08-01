library(hexSticker)
library(tidyverse)
set.seed(212)
n <- 28
d <- tibble(
  x1 = runif(n),
  x2 = rbinom(n, 3, 0.5),
  y = x1 ^ 4 + rnorm(n)
)

p <- ggplot(d, aes(x = x1, y = y, color = x2)) + 
  geom_point() + 
  geom_smooth(method = "loess", formula = y ~ x, color = "#F96714") + 
  theme_void() + 
  theme_transparent() + 
  theme(legend.position = "none")
sticker(p,
        package = "STA 212", 
        p_size = 8,
        s_x = 1,
        s_y = .75,
        s_width = 1.75,
        s_height = 0.75,
        filename = "favicon.png",
        h_color = "#F96714",
        h_fill = "white",
        p_color = "#F96714")
