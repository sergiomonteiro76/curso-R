#----------------------------------------------------------------------
#Desenvolvedor: Sérgio Assunção Monteiro, DSc
#Github: https://github.com/sergiomonteiro76
#linkedin: https://www.linkedin.com/in/sergio-assun%C3%A7%C3%A3o-monteiro-b781897b/
#lattes: http://lattes.cnpq.br/9489191035734025
#----------------------------------------------------------------------
cat("\014") #limpar console ou pressionar Ctrl+L
#formas equivalentes de gerar sequência
x <- seq_len(25) 
print(x)
y <- 1:25
print(y)
#somar os valores de x acumulativamente
x <- cumsum(x)
print(x)
#imprimir x no gráfico de barras
barplot(x)
