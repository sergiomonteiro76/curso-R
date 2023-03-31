#----------------------------------------------------------------------
#Desenvolvedor: Sérgio Assunção Monteiro, DSc
#Github: https://github.com/sergiomonteiro76
#linkedin: https://www.linkedin.com/in/sergio-assun%C3%A7%C3%A3o-monteiro-b781897b/
#lattes: http://lattes.cnpq.br/9489191035734025
#----------------------------------------------------------------------
cat("\014") #limpar console ou pressionar Ctrl+L
num <- rnorm(1000, mean=10, sd=5)
#média dos elementos do vetor
media <- mean(num)
message("média: ", media)

#desvio-padrão dos elementos do vetor
desvio_padrao <-  sd(num)
message(" desvio_padrao : ", desvio_padrao)

