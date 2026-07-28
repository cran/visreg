## -----------------------------------------------------------------------------
#| include: false
library(visreg)
library(ggplot2)
theme_set(theme_minimal())
knitr::opts_chunk$set(fig.asp = 1 / 1.618)


## -----------------------------------------------------------------------------
fit <- lm(Ozone ~ Solar.R + Wind + Temp, data = airquality)


## -----------------------------------------------------------------------------
visreg(fit, "Wind")


## -----------------------------------------------------------------------------
airquality$Heat <- cut(airquality$Temp, 3, labels = c("Cool", "Mild", "Hot"))
fit <- lm(Ozone ~ Solar.R + Wind * Heat, data = airquality)


## -----------------------------------------------------------------------------
#| fig-width: 9
#| fig-asp: 0.444444
#| out.width: 100%
visreg(fit, "Wind", by = "Heat")


## -----------------------------------------------------------------------------
visreg(fit, "Wind", by = "Heat", overlay = TRUE)


## -----------------------------------------------------------------------------
fit <- lm(Ozone ~ poly(Wind, 2) * poly(Temp, 2), data = airquality)
visreg2d(fit, "Wind", "Temp")

