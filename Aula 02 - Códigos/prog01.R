#----------------------------------------------------------------------
#Desenvolvedor: Sérgio Assunção Monteiro, DSc
#Github: https://github.com/sergiomonteiro76
#linkedin: https://www.linkedin.com/in/sergio-assun%C3%A7%C3%A3o-monteiro-b781897b/
#lattes: http://lattes.cnpq.br/9489191035734025
#----------------------------------------------------------------------
if(!require(tidyverse)){
  install.packages("tidyverse");
  require(tidyverse)
}
#Carrega a biblioteca "readr"
library(readr)
cat("\014") #limpar console ou pressionar Ctrl+L
#Lê arquivos csv separados por “,”
dados <- read_csv("c:\\Dados\\Dados-virgula.csv", n_max = 10)
#Imprimir dados da tabelachr
print(dados)
print(dados[2])
