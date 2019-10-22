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




data("mtcars")
###Regressao linear Multipla
modelo1 = lm(mpg ~ hp + wt , data=mtcars)
modelo2 = lm(mpg ~ hp + wt + disp, data=mtcars)
modelo_geral = lm(mpg ~ cyl + disp + hp + drat + wt + qsec + vs + am + gear + carb , data=mtcars)

summary(modelo1)
summary(modelo2)
summary(modelo_geral)

#The Prediction
#For testing purposes the model predicts the MPG for Valiant:
df <- data.frame(cyl = 6, disp = 225, hp = 105, drat = 2.76, wt = 3.460, qsec = 20.22, vs = 1, am = 0, gear = 3, carb = 1)
predict(modelo_geral, df)
# The actual MPG for this car is 18.1


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




