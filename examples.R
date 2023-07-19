

library(ggplot2)


# Colours can be selected with uoe_colour by their name

ggplot(aes(x = hwy, y = cty), data = mpg) +
  geom_point(colour = uoe_colour("university red"),
             size =2)


# You can use scale_colour_uoe

ggplot(aes(x = hwy, y = cty, colour = manufacturer ), data = mpg) +
  geom_point() +
  scale_colour_uoe()


ggplot(aes(x = hwy, y = cty, colour = manufacturer ), data = mpg) +
  geom_point() +
  scale_colour_uoe(palette = "muted")


ggplot(aes(x = manufacturer, fill = manufacturer), data = mpg) +
  geom_bar() +
  scale_fill_uoe()


ggplot(aes(x = manufacturer, fill = manufacturer), data = mpg) +
  geom_bar() +
  scale_fill_uoe(palette = "muted")
