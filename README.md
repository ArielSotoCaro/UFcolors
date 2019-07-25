# UFcolors
 R package to manage UF institutional colors into ggplot. Based on: 
 [Link](https://drsimonj.svbtle.com/creating-corporate-colour-palettes-for-ggplot2)
 
 # To install:
 
`library(devtools)`
`install_github("ArielSotoCaro/UFcolors")`

# List of palettes
- primary
- muted
- nice
- neutral
- bright

# Some examples

## Identifying all the colors and its respective codes:
`UF_colors()`

## Code for a specific color
`UF_colors("orange")` 

## Creating a 10 color levels using primary palette
`UF_pal("primary")(10)`

## 3 examples in the ggplot context
```
ggplot(iris, aes(Sepal.Width, Sepal.Length, color = Species)) +
  geom_point(size = 4) +
  scale_color_UF('nice')
```
```  
ggplot(iris, aes(Sepal.Width, Sepal.Length, color = Sepal.Length)) +
  geom_point(size = 4, alpha = .6) +
  scale_color_UF(discrete = FALSE, palette = "muted")
```  
```
ggplot(mpg, aes(manufacturer, fill = manufacturer)) +
  geom_bar() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
  scale_fill_UF(palette = "muted", guide = "none")
```
