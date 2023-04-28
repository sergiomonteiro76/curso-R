#----------------------------------------------------------------------
#Desenvolvedor: Sérgio Assunção Monteiro, DSc
#Github: https://github.com/sergiomonteiro76
#linkedin: https://www.linkedin.com/in/sergio-assun%C3%A7%C3%A3o-monteiro-b781897b/
#lattes: http://lattes.cnpq.br/9489191035734025
#----------------------------------------------------------------------
cat("\014") #limpar console ou pressionar Ctrl+L
#----------------------------------------------------------------------
# Criar dados para o gráfico
A <- c(17, 32, 8, 53, 1)

# Gráfico de Barras - horizontal
barplot(A, 
        horiz = TRUE, 
        xlab = "eixo X",
        ylab = "eixo Y", 
        col = "darkmagenta", 
        border = "pink", 
        main ="Gráfico de Barras")

