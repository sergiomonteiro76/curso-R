#----------------------------------------------------------------------
#Desenvolvedor: Sérgio Assunção Monteiro, DSc
#Github: https://github.com/sergiomonteiro76
#linkedin: https://www.linkedin.com/in/sergio-assun%C3%A7%C3%A3o-monteiro-b781897b/
#lattes: http://lattes.cnpq.br/9489191035734025
#----------------------------------------------------------------------
cat("\014") #limpar console ou pressionar Ctrl+L
#----------------------------------------------------------------------
#Códigos (Slide 19)- Regressão Polinomial
#-----------------------------------------
install.packages("caret") # Install  
#-----------------------------------------  
library(tidyverse)
library(ggpubr)
theme_set(theme_pubr())

# Carregar dados
data(mtcars)

#Cálculo da Regressão Linear
modelo <- lm(mpg ~ poly(wt, 2, raw = TRUE), data = mtcars)
modelo

#Visualizar dados sem a Regressão Polinomial
ggplot(mtcars, aes(wt, mpg)) +
  labs(title = 'Exemplo de Visualização dos Dados',
       y = 'Milhas por galão',
       x = 'Peso do carro')+
  geom_point() +
  stat_smooth()

#Visualizar dados com a Regressão Polinomial
ggplot(mtcars, aes(wt, mpg)) +
  labs(title = 'Exemplo de Visualização dos Dados',
       y = 'Milhas por galão',
       x = 'Peso do carro')+
  geom_point() +
  stat_smooth(method = lm, formula = y ~ poly(x, 2, raw = TRUE))


#Visualizar coeficientes
coef(modelo)

#predizer valores
novos_dados <-seq(2, 4, 0.5)
preds = predict(modelo, 
                newdata = list(wt = novos_dados))
preds

#Desempenho do Modelo
medidasValidacao<- data.frame(
  RSS <- c(crossprod(modelo$residuals)),
  MSE <- RSS / length(modelo$residuals),
  RMSE <- sqrt(MSE)
)

#Visualizar dados
medidasValidacao$RSS

#Ou visualizar dados
glimpse(medidasValidacao)

#Resumo do modelo
summary(modelo)
