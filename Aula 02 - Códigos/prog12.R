#----------------------------------------------------------------------
#Desenvolvedor: Sérgio Assunção Monteiro, DSc
#Github: https://github.com/sergiomonteiro76
#linkedin: https://www.linkedin.com/in/sergio-assun%C3%A7%C3%A3o-monteiro-b781897b/
#lattes: http://lattes.cnpq.br/9489191035734025
#----------------------------------------------------------------------
cat("\014") #limpar console ou pressionar Ctrl+L
#----------------------------------------------------------------------
#gerar sequência
#----------------------------------------------------------------------
x <- 1:5
print(x)
View(x)
#----------------------------------------------------------------------
#chamar função "Soma Acumulada"
#----------------------------------------------------------------------
somatorio <- sum(x)
print(somatorio)
View(somatorio)
#----------------------------------------------------------------------
#chamar função "Soma Acumulada"
#----------------------------------------------------------------------
somaAcumulada <- cumsum(x)
print(somaAcumulada)
View(somaAcumulada)

