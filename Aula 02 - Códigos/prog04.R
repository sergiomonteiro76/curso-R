#----------------------------------------------------------------------
#Desenvolvedor: Sérgio Assunção Monteiro, DSc
#Github: https://github.com/sergiomonteiro76
#linkedin: https://www.linkedin.com/in/sergio-assun%C3%A7%C3%A3o-monteiro-b781897b/
#lattes: http://lattes.cnpq.br/9489191035734025
#----------------------------------------------------------------------
cat("\014") #limpar console ou pressionar Ctrl+L
#Passo 1: instalar pacote 
install.packages("readxl")

#Passo 2: usar o pacote 
library(readxl)

#Abre tanto arquivos xls como xlsx
tabela <- read_excel("c:\\dados\\dados.xlsx")

#Imprimir dados da tabela
print(tabela)
print(tabela[2])
