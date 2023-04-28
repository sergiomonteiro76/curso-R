#----------------------------------------------------------------------
#Desenvolvedor: Sérgio Assunção Monteiro, DSc
#Github: https://github.com/sergiomonteiro76
#linkedin: https://www.linkedin.com/in/sergio-assun%C3%A7%C3%A3o-monteiro-b781897b/
#lattes: http://lattes.cnpq.br/9489191035734025
#----------------------------------------------------------------------
cat("\014") #limpar console ou pressionar Ctrl+L

idade <- c(44, 25, 30, 36, 37)
sexo <- c("Masculino", "Feminino","Feminino","Feminino", "Masculino")
fator_sexo <- as.factor(sexo)
df <- data.frame(idade, fator_sexo)
df
##-------------------------------------------------------
install.packages("tibble")
##-------------------------------------------------------
library(tibble)
tb <- tibble(df)
print(tb)
##-------------------------------------------------------
y1 <- tibble(idade, fator_sexo)
print(y1)
##-------------------------------------------------------
y2 <- tibble(idade, sexo)
print(y2)
##-------------------------------------------------------

