#----------------------------------------------------------------------
#Desenvolvedor: Sérgio Assunção Monteiro, DSc
#Github: https://github.com/sergiomonteiro76
#linkedin: https://www.linkedin.com/in/sergio-assun%C3%A7%C3%A3o-monteiro-b781897b/
#lattes: http://lattes.cnpq.br/9489191035734025
#----------------------------------------------------------------------
cat("\014") #limpar console ou pressionar Ctrl+L
#----------------------------------------------------------------------
## Dar nomes específicos aos rótulos do gráfico com "text"
# Criar dados para o gráficos.
vetor <- c(19, 23, 11, 5, 16, 21, 
       32, 14, 19, 27, 39, 120, 40, 70, 90)

# Criar o histograma.
m<-hist(vetor, 
        xlab = "Largura", 
        ylab ="Frequência",
        col = "darkmagenta", 
        border = "pink", 
        breaks = 5)

# Dar nomes para os rótulos
text(m$mids, 
     m$counts, 
     labels = m$counts, 
     adj = c(0.5, -0.5))	
