#penguins |>
#  filter(species == "Adelie") |>
#  ggplot(aes(x = body_mass_g, y = bill_length_mm)) +
#  geom_point() +
#  geom_smooth(method = "lm")+
#  labs(x = "Body mass g", y = "bill length mm", title = "Gentoo")
#
#---
#
data("penguins")
names(penguins)

library(tidyverse)

filter_spp = function(data, species) {
  data |>
    filter(species == {{species}}) |>
    ggplot(aes(x = body_mass, y = bill_len)) +
    geom_point(colour = "forestgreen") +
    geom_smooth(method = "lm") +
    labs(x = "Body mass g", y = "Bill length mm", title = {{species}})
}

filter_spp(penguins, "Adelie")
filter_spp(penguins, "Chinstrap")
filter_spp(penguins, "Gentoo")
