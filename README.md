# UFcolors R-package
 R package to manage the University of Florida (UF) institutional colors into ggplot. Based on: 
 [Link](https://drsimonj.svbtle.com/creating-corporate-colour-palettes-for-ggplot2).
 Colors from [Here](http://identity.ufl.edu/color/) and [Here](https://www.eng.ufl.edu/marcom/resources/branding-style-guide/uf-engineering-color-guide/#prettyPhoto).
 
 # To install:
``` 
library(devtools)
install_github("ArielSotoCaro/UFcolors")
```

# List of palettes
- primary: ![#FA4616](https://placehold.it/15/FA4616/000000?text=+)  ![#0021A5](https://placehold.it/15/0021A5/000000?text=+) 
- muted: ![#E28F41](https://placehold.it/15/E28F41/000000?text=+) ![#6C9AC3](https://placehold.it/15/6C9AC3/000000?text=+) 
- nice: ![#E18F41](https://placehold.it/15/E18F41/000000?text=+) ![#326698](https://placehold.it/15/326698/000000?text=+) ![#6C99C2](https://placehold.it/15/6C99C2/000000?text=+) ![#A1DCED](https://placehold.it/15/A1DCED/000000?text=+) ![#BBBDC0](https://placehold.it/15/BBBDC0/000000?text=+)
- neutral: ![#CFB691](https://placehold.it/15/CFB691/000000?text=+) ![#CFDBCB](https://placehold.it/15/CFDBCB/000000?text=+) ![#FFEFCF](https://placehold.it/15/FFEFCF/000000?text=+) ![#B1B3B6](https://placehold.it/15/B1B3B6/000000?text=+)
- bright: ![#5E8E3F](https://placehold.it/15/5E8E3F/000000?text=+) ![#593674](https://placehold.it/15/593674/000000?text=+) ![#FCAF17](https://placehold.it/15/FCAF17/000000?text=+) ![#D7182A](https://placehold.it/15/D7182A/000000?text=+)

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
