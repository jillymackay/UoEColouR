# UoEColouR
A package of University of Edinburgh branded colours



Edinburgh brand colours taken from our [Sharepoint](https://uoe.sharepoint.com/sites/Brand/SitePages/Colours.aspx). I encourage any users to thoroughly read and understand brand guidance prior to utilising Edinburgh colours.


With thanks to [Simon J's post on writing your own ggplot palette](https://drsimonj.svbtle.com/creating-corporate-colour-palettes-for-ggplot2).



## Examples

`library(ggplot2)`

You can browse a list of the Edinburgh colours with their approximate names (I have added a precursor to all names to indicate the first palette it belongs to)

`ed_colours`

You can browse the palettes with

`ed_palettes`


Colours can be called specifically with `uoe_colour()`

```
ggplot(aes(x = hwy, y = cty), data = mpg) +
  geom_point(colour = uoe_colour("university red"),
             size =2)
```

However, it is best to call them with the `scale_uoe` option.

```

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


```
