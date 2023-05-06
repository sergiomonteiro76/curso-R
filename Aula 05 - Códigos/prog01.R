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
install.packages("ggpubr")
install.packages("tidyverse")

library(tidyverse)
library(ggpubr)
theme_set(theme_pubr())

#Limpar ambiente de desenvolvimento
rm(list = ls())

# variaveis dependentes/preditoras
x <- c(10, 15, 13, 18, 14, 15, 15, 16, 21, 13)

# vetor saida/resposta
y <- c(3, 5, 7, 9, 13, 15, 17, 19, 21, 23)


dados <- data.frame(fresposta = y,
                    vindependente = x)


# Aplicar a função de regressão linear
fregressaoLinear <- lm(fresposta~vindependente,data = dados)

# Predição para x = 25.
a <- data.frame(vindependente = 25)
resultado <-  predict(fregressaoLinear,a)
print(resultado)


#Imprimir Regressão Linear
ggplot(dados, aes(vindependente, fresposta)) +
  labs(title = 'Exemplo Regressão Linear',
       y = 'Função',
       x = 'independentes')+
  geom_point(colour = "red", size = 3) +
  stat_smooth(method = lm)

