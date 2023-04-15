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
#------------------------------------------------------------------
#Acessar dados
#------------------------------------------------------------------
vendas <- tabela[[2]]
#vendas <- tabela$vendas    #forma mais segura de acessar os dados
#------------------------------------------------------------------
#Visualizar histograma
#------------------------------------------------------------------
library(ggplot2)
hist(vendas)
#------------------------------------------------------------------
#Resumo dos Dados   #Introdução à Análise Exploratória de Dados 
#------------------------------------------------------------------
summary(tabela)

summary(tabela[, 2:3])

