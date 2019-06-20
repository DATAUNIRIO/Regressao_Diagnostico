#===============================================================================
# Name   : Regressao_linear_ploting
# Author : Steven
# Objetivo : Ajustar, plotar e adicionar os modelos polinomiais ao gráfico
#===============================================================================

# http://www.metodosquantitativos.com/apps/Apppontosinterativos/

#----------------------------------------------
# Dados e diagrama de dispersão
#----------------------------------------------
set.seed(15062016)
X<-rnorm(100, sd=10)
#X<-rnorm(100, sd=100)
Y <- -X + rnorm(100, sd=13)
# Diagrama de dispersão
plot(X, Y,pch=19)
abline(a = 1, b = 2, col = "skyblue")
abline(a = 1, b = -2, col = "blue")
abline(a = 1, b = 0, col = "green")
z <- lm(Y ~ X)
abline(z, col = "red")
# Exi


#----------------------------------------------------------------------------------------

source('https://raw.githubusercontent.com/DATAUNIRIO/Base_de_dados/master/Scripts/11_construcao_da_base_de_dados_carros.R')

fit <- lm(Kmporlitro ~ HP, data = CARROS)  # Fit the model
summary(fit)  # Report the results

#----------------------------------------------------------------------------------------



###Regressao linear Multipla
modelo1 = lm(mpg ~ hp + wt , data=CARROS)
modelo2 = lm(mpg ~ hp + wt + disp, data=CARROS)
modelo_geral = lm(mpg ~ cyl + disp + hp + drat + wt + qsec + vs + am + gear + carb , data=CARROS)

summary(modelo1)
summary(modelo2)
summary(modelo_geral)

### Sele??o de modelo (vari?veis) STEPWISE
library(MASS)
step <- stepAIC(modelo_geral, direction="both") # quanto menor o AIC mais parcimonioso ? o modelo
step$anova # display results 



###ANOVA
m1 <- aov(CARROS$Kmporlitro ~ as.factor(CARROS$NumdeValvulas))
summary(m1)
layout(matrix(c(1,2,3,4),2,2)) # optional layout
plot(m1) # diagnostic plots
TukeyHSD(m1)
plot(TukeyHSD(m1)) # where fit comes from aov() 




