#----------------------------------------------------------------------
#Desenvolvedor: Sérgio Assunção Monteiro, DSc
#Github: https://github.com/sergiomonteiro76
#linkedin: https://www.linkedin.com/in/sergio-assun%C3%A7%C3%A3o-monteiro-b781897b/
#lattes: http://lattes.cnpq.br/9489191035734025
#----------------------------------------------------------------------
cat("\014") #limpar console ou pressionar Ctrl+L
#----------------------------------------------------------------------
#----------------------------------------------------------
# Agrupamento Hierárquico
#----------------------------------------------------------
# Instalando os Pacotes
install.packages("dplyr")
install.packages(qgraph)
#----------------------------------------------------------
# Carregando os Pacotes
library(dplyr)
library(qgraph)
#----------------------------------------------------------

# Resumo do Datset mtcars
head(mtcars)
nrow(mtcars)
ncol(mtcars)
#----------------------------------------------------------
#
#----------------------------------------------------------
# Obter a matriz de distâncias
matriz_distancia <- dist(mtcars, method = 'euclidean')
class(matriz_distancia)
str(matriz_distancia)
#----------------------------------------------------------------
#----------------------------------------------------------------
# Obtendo o Agrupamento Hierárquico
#----------------------------------------------------------------
set.seed(240) 
agrupamentoHierarquico <- hclust(matriz_distancia, method = "average")
agrupamentoHierarquico
#----------------------------------------------------------------
# Visualizar Dendrograma
#----------------------------------------------------------------
plot(agrupamentoHierarquico)
# Inserindo Corte na Altura da Árvore
abline(h = 110, col = "red")
#----------------------------------------------------------------
