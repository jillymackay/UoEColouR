README
================
Jill MacKay
2023-07-20

# UoEColouR

A package of University of Edinburgh branded colours

Edinburgh brand colours taken from our
[Sharepoint](https://uoe.sharepoint.com/sites/Brand/SitePages/Colours.aspx).
I encourage any users to thoroughly read and understand brand guidance
prior to utilising Edinburgh colours. Namely, utilise these colours with
great care, especially as ramping colours by specifying more than a
palette’s length is probably in violation of said guidelines. However,
if you are producing internal reports for Edinburgh, you may find this
package useful.

With thanks to [Simon J’s post on writing your own ggplot
palette](https://drsimonj.svbtle.com/creating-corporate-colour-palettes-for-ggplot2)
and [@jkaupp’s nord package](https://github.com/jkaupp/nord) for a lot
of inspiration.

I’ve also [blogged about this - because I refuse to have to remember how
to do any of it
later](https://jillymackay.com/post/ggplot2-palettes-tutorial/).

## Install

``` r
devtools::install_github("jillymackay/UoEColouR")
```

## Examples

``` r
library(UoEColouR)
library(ggplot2)
```

The Edinburgh palettes are:

``` r
uoe_show_palette("core")
```

![](README_files/figure-gfm/unnamed-chunk-3-1.png)<!-- -->

``` r
uoe_show_palette("bright")
```

![](README_files/figure-gfm/unnamed-chunk-3-2.png)<!-- -->

``` r
uoe_show_palette("bright-two-tone")
```

![](README_files/figure-gfm/unnamed-chunk-3-3.png)<!-- -->

``` r
uoe_show_palette("muted")
```

![](README_files/figure-gfm/unnamed-chunk-3-4.png)<!-- -->

``` r
uoe_show_palette("muted-two-tone")
```

![](README_files/figure-gfm/unnamed-chunk-3-5.png)<!-- -->

``` r
uoe_show_palette("digital")
```

![](README_files/figure-gfm/unnamed-chunk-3-6.png)<!-- -->

``` r
uoe_show_palette("recruit-ug")
```

![](README_files/figure-gfm/unnamed-chunk-3-7.png)<!-- -->

``` r
uoe_show_palette("recruit-pg")
```

![](README_files/figure-gfm/unnamed-chunk-3-8.png)<!-- -->

``` r
uoe_show_palette("recruit-ug-core")
```

![](README_files/figure-gfm/unnamed-chunk-3-9.png)<!-- -->

``` r
uoe_show_palette("recruit-pg-core")
```

![](README_files/figure-gfm/unnamed-chunk-3-10.png)<!-- -->

Palettes can be utilised like so:

``` r
image(volcano, col = ed_col("bright", 20))
```

![](README_files/figure-gfm/unnamed-chunk-4-1.png)<!-- -->

And then you can use the `scale_uoe` function with `ggplot2`:

``` r
ggplot(aes(x = hwy, y = cty, colour = manufacturer ), data = mpg) +
  geom_point() +
  scale_colour_uoe()
```

![](README_files/figure-gfm/unnamed-chunk-5-1.png)<!-- -->

``` r
ggplot(aes(x = hwy, y = cty, colour = manufacturer ), data = mpg) +
  geom_point() +
  scale_colour_uoe(palette = "muted")
```

![](README_files/figure-gfm/unnamed-chunk-5-2.png)<!-- -->

``` r
ggplot(aes(x = manufacturer, fill = manufacturer), data = mpg) +
  geom_bar() +
  scale_fill_uoe()
```

![](README_files/figure-gfm/unnamed-chunk-5-3.png)<!-- -->

``` r
ggplot(aes(x = manufacturer, fill = manufacturer), data = mpg) +
  geom_bar() +
  scale_fill_uoe(palette = "muted")
```

![](README_files/figure-gfm/unnamed-chunk-5-4.png)<!-- -->
