#----------------------------------------------------------------------
#Desenvolvedor: Sérgio Assunção Monteiro, DSc
#Github: https://github.com/sergiomonteiro76
#linkedin: https://www.linkedin.com/in/sergio-assun%C3%A7%C3%A3o-monteiro-b781897b/
#lattes: http://lattes.cnpq.br/9489191035734025
#----------------------------------------------------------------------
cat("\014") #limpar console ou pressionar Ctrl+L

genero <- c("Masculino", "Feminino", "Feminino", "Feminino", "Masculino", "Feminino", "Masculino", "Masculino")
fator_genero <- as.factor(genero)
cat("O Fator Gênero é:\n")
print(fator_genero)