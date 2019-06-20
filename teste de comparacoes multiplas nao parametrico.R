
install.packages('nparcomp')
library(nparcomp)
a<-nparcomp(Horas_estudo~ Turma, data=stress, asy.method = "mult.t",
            type = "Tukey",alternative = "two.sided", 
            plot.simci = TRUE, info = FALSE)
summary(a)

