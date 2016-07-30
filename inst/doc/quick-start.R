## ------------------------------------------------------------------------
fit <- lm(Ozone ~ Solar.R + Wind + Temp,data=airquality)

## ----opts.label='fig'----------------------------------------------------
visreg(fit, "Wind")

## ------------------------------------------------------------------------
airquality$Heat <- cut(airquality$Temp, 3, labels=c("Cool","Mild","Hot"))
fit.in1 <- lm(Ozone~ Solar.R + Wind*Heat,data=airquality)

## ----fig.height=4, fig.width=8, out.width='\\linewidth', fig.align='center'----
visreg(fit.in1, "Wind", by="Heat")

## ----opts.label='fig'----------------------------------------------------
visreg(fit.in1, "Wind", by="Heat", overlay=TRUE)

## ----opts.label='fig'----------------------------------------------------
visreg2d(fit.in1, "Wind", "Heat")

