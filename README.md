![banner](docs/banner.png)

![R](https://img.shields.io/badge/r-%23276DC3.svg?style=for-the-badge&logo=r&logoColor=white)

# 📊 GGlogo

## ❓ How to use it

The [`gglogo`](/01_gglogo.R) can be used on any layer:

```R
LOGO_PATH <- file.path(getwd(), "resources", "logo.png")
ggplot(mpg, aes(x = displ, y = hwy, colour = class)) +
  geom_line() +
  gglogo(
    logo_path = LOGO_PATH,
    x_npc = 0.85,
    y_npc = 0.9,
    scale = 2.5
  )
```

With the following arguments:
- `logo_path`: The path to the logo image.
- `x_npc`: The x-axis position of the logo in normalized parent coordinates (see [grid::unit](https://stat.ethz.ch/R-manual/R-devel/library/grid/html/unit.html)). An x_npc of 0.5 means the logo will be centered on the x-axis.
- `y_npc`: The y-axis position of the logo in normalized parent coordinates (see [grid::unit](https://stat.ethz.ch/R-manual/R-devel/library/grid/html/unit.html)). An y_npc of 0.5 means the logo will be centered on the y-axis.
- `scale`: The scale is used to determine the size. The width is calculated as `width <- unit(0.1 * scale, "npc")`. The `0.1` is just a factor to make sure the logo is not too big. The height is calculated using the original aspect ratio of the image.

Copy the [`gglogo`](/01_gglogo.R) function to your script! Or copy the file and source it:

```R
source("01_gglogo.R")
```


## 🚀 Examples

Here are some [examples](/99_example.R):

### 📊 `geom_line`

```R
gglogo(
    logo_path = LOGO_PATH,
    x_npc = 0.85,
    y_npc = 0.9,
    scale = 2.5
)
```

![geom_line](/output/line.png)

### 📊 `geom_point` (continuous data)

```R
gglogo(
    logo_path = LOGO_PATH,
    x_npc = 0.85,
    y_npc = 0.1,
    scale = 2.5
)
```

![geom_point_1](/output/scatter_01.png)

### 📊 `geom_point` (discrete data)

```R
gglogo(
    logo_path = LOGO_PATH,
    x_npc = 0.85,
    y_npc = 0.85,
    scale = 2.5
)
```

![geom_point_2](/output/scatter_02.png)

### 📊 `geom_bar`

```R
gglogo(
    logo_path = LOGO_PATH,
    x_npc = 0.3,
    y_npc = 0.9,
    scale = 2.5
)
```

![geom_bar](/output/bar.png)

### 📊 `geom_histogram`

```R
gglogo(
    logo_path = LOGO_PATH,
    x_npc = 0.8,
    y_npc = 0.8,
    scale = 2.5
)
```

![geom_histogram](/output/hist.png)

### 📊 `geom_col`

```R
gglogo(
    logo_path = LOGO_PATH,
    x_npc = 0.8,
    y_npc = 0.9,
    scale = 2.5
)
```

![geom_col](/output/col.png)

### 📊 `geom_boxplot`

```R
gglogo(
    logo_path = LOGO_PATH,
    x_npc = 0.5,
    y_npc = 0.8,
    scale = 2.5
)
```

![geom_boxplot](/output/box.png)

### 📊 `geom_line` (time series)

```R
gglogo(
    logo_path = LOGO_PATH,
    x_npc = 0.2,
    y_npc = 0.8,
    scale = 2.5
)
```

![geom_line_2](/output/time.png)

## 📝 License

This project is [Apache](http://www.apache.org/licenses/LICENSE-2.0) licensed.

## 🙏 Acknowledgements

- [stefan](https://stackoverflow.com/users/12993861/stefan) on [stackoverflow](https://stackoverflow.com/a/69699524/4585384)

---

Made with ❤️ by [Johandielangman](https://github.com/Johandielangman)

[![BuyMeACoffee](https://img.shields.io/badge/Buy_Me_A_Coffee-FFDD00?style=for-the-badge&logo=buy-me-a-coffee&logoColor=black)](https://buymeacoffee.com/johanlangman)