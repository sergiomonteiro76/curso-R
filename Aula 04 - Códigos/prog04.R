#----------------------------------------------------------------------
#Desenvolvedor: Sérgio Assunção Monteiro, DSc
#Github: https://github.com/sergiomonteiro76
#linkedin: https://www.linkedin.com/in/sergio-assun%C3%A7%C3%A3o-monteiro-b781897b/
#lattes: http://lattes.cnpq.br/9489191035734025
#----------------------------------------------------------------------
cat("\014") #limpar console ou pressionar Ctrl+L
#----------------------------------------------------------------------
# Criar dados para o gráficos.
vetor <- c(19, 23, 11, 5, 16, 21, 
       32, 14, 19, 27, 39, 120, 
       40, 70, 90)

# Criar o histograma.
m<-hist(vetor, 
        xlab = "Largura", 
        ylab ="Ocorrências", 
        xlim = c(10, 100),
        col = "darkmagenta", 
        border = "pink", 
        breaks = 10, 
        freq = TRUE)   

