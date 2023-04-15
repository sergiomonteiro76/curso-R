#----------------------------------------------------------------------
#Desenvolvedor: Sérgio Assunção Monteiro, DSc
#Github: https://github.com/sergiomonteiro76
#linkedin: https://www.linkedin.com/in/sergio-assun%C3%A7%C3%A3o-monteiro-b781897b/
#lattes: http://lattes.cnpq.br/9489191035734025
#----------------------------------------------------------------------
#Carrega a biblioteca "readr"
library(readxl)
cat("\014") #limpar console ou pressionar Ctrl+L
#Abre tanto arquivos xls como xlsx
tabela <- read_excel("c:\\dados\\dados.xlsx")

vendas <- tabela[[2]]
#média dos elementos do vetor
media <- mean(vendas)
message("média: ", media)

#desvio-padrão dos elementos do vetor
desvio_padrao <-  sd(vendas)
message(" desvio_padrao : ", desvio_padrao)

