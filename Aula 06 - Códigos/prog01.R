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

# Visualizar a matriz de distâncias
dst <- data.matrix(matriz_distancia)
dim <- ncol(dst)
image(1:dim, 1:dim, dst, axes = FALSE, xlab="", ylab="")
axis(1, 1:dim, mtcars[1:dim,1], cex.axis = 0.5, las=3)
axis(2, 1:dim, mtcars[1:dim,1], cex.axis = 0.5, las=1)
text(expand.grid(1:dim, 1:dim), sprintf("%0.1f", dst), cex=0.6)
#----------------------------------------------------------------

