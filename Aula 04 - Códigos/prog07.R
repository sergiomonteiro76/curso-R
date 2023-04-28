#Desenvolvedor: Sérgio Assunção Monteiro, DSc
#Github: https://github.com/sergiomonteiro76
#linkedin: https://www.linkedin.com/in/sergio-assun%C3%A7%C3%A3o-monteiro-b781897b/
#lattes: http://lattes.cnpq.br/9489191035734025
#----------------------------------------------------------------------
cat("\014") #limpar console ou pressionar Ctrl+L
#----------------------------------------------------------------------
# Criar dados para o gráfico
A <- c(17, 2, 8, 13, 1, 22)
B <- c("Jan", "Fev", "Mar", "Abr", "Mai", "Jun")

# Gráfico de Barras
barplot(A, 
        names.arg = B, 
        xlab ="Mês",
        ylab ="Livros Lidos", 
        col ="green",
        main ="Gráfico de Barras")
