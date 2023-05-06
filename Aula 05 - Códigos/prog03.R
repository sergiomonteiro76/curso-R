#----------------------------------------------------------------------
#Desenvolvedor: Sérgio Assunção Monteiro, DSc
#Github: https://github.com/sergiomonteiro76
#linkedin: https://www.linkedin.com/in/sergio-assun%C3%A7%C3%A3o-monteiro-b781897b/
#lattes: http://lattes.cnpq.br/9489191035734025
#----------------------------------------------------------------------
cat("\014") #limpar console ou pressionar Ctrl+L
#----------------------------------------------------------------------
#Regressão Linear
#----------------------------------------------------------------------
library(tidyverse)
library(ggpubr)
theme_set(theme_pubr())
rm(list = ls())

#Lembrar da aula 05
# Carregar dados
data(mtcars)
# Imprimir as 5 primeiras linhas
head(mtcars, 5)
# Obter mais informações sobre o conjunto de dados
?mtcars
# Obter os metadados
nrow(mtcars)
ncol(mtcars)
names(mtcars)


#imprimir dados
ggplot(mtcars, aes(x = wt, y = mpg)) +
  geom_point() +
  stat_smooth()
