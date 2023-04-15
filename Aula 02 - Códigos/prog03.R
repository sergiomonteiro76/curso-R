#----------------------------------------------------------------------
#Desenvolvedor: Sérgio Assunção Monteiro, DSc
#Github: https://github.com/sergiomonteiro76
#linkedin: https://www.linkedin.com/in/sergio-assun%C3%A7%C3%A3o-monteiro-b781897b/
#lattes: http://lattes.cnpq.br/9489191035734025
#----------------------------------------------------------------------
#Carrega a biblioteca "readr"
library(readr)
cat("\014") #limpar console ou pressionar Ctrl+L
#--------------------------------------------------------------------------
#Lê arquivos csv separados por “,”
#--------------------------------------------------------------------------
dados <- read_csv("c:\\Dados\\Dados-virgula.csv", n_max = 10)
#--------------------------------------------------------------------------
#Escrever arquivo csv separados por “,”
#--------------------------------------------------------------------------
write_csv(dados,"c:\\Dados\\Resultado.csv")
#--------------------------------------------------------------------------
#Escrever arquivo csv separados por “;”
#--------------------------------------------------------------------------
write_csv2(dados,"c:\\Dados\\Resultado-ponto-virgula.csv")
