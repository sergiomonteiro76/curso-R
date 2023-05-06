#----------------------------------------------------------------------
#Desenvolvedor: Sérgio Assunção Monteiro, DSc
#Github: https://github.com/sergiomonteiro76
#linkedin: https://www.linkedin.com/in/sergio-assun%C3%A7%C3%A3o-monteiro-b781897b/
#lattes: http://lattes.cnpq.br/9489191035734025
#----------------------------------------------------------------------
cat("\014") #limpar console ou pressionar Ctrl+L
#----------------------------------------------------------------------
#Regressão Linear Múltipla
#----------------------------------------------------------------------
install.packages("scatterplot3d") # Install
#----------------------------------------------------------------------
library(tidyverse)
library("scatterplot3d") # load


# variaveis dependentes/preditoras
x1 <- c(10, 15, 13, 18, 14, 15, 15, 16, 21, 13)

x2 <- c(13, 10, 17, 20, 14, 12, 13, 6, 12, 13)

# vetor saida/resposta
y <- c(3, 5, 7, 9, 13, 15, 17, 19, 21, 23)


dados <- data.frame(fresposta = y,vindep1 = x1,vindep2 = x2)


# Aplicar a função de regressão linear
fregressaoMultipla <- lm(fresposta~vindep1+vindep2,data=dados)

#y=termo_independente + vindep1*x1 + vindep2*x2

coef(fregressaoMultipla)

# Fazer a predição 
a <- data.frame(vindep1=25, vindep2=25)
resultado <-  predict(fregressaoMultipla,a)
print(resultado)

# Visualização 3D
grafico<- scatterplot3d(dados,
                        main="3D Scatter Plot",
                        xlab = "resposta",
                        ylab = "indep 1",
                        zlab = "indep 2",
                        type = "h", color = "blue",
                        angle=55, pch = 16)

grafico$plane3d(fregressaoMultipla)

