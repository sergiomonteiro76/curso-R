#----------------------------------------------------------------------
#Desenvolvedor: Sérgio Assunção Monteiro, DSc
#Github: https://github.com/sergiomonteiro76
#linkedin: https://www.linkedin.com/in/sergio-assun%C3%A7%C3%A3o-monteiro-b781897b/
#lattes: http://lattes.cnpq.br/9489191035734025
#----------------------------------------------------------------------
cat("\014") #limpar console ou pressionar Ctrl+L
#----------------------------------------------------------------------
# Instalando Pacotes
install.packages(c("ClusterR", "cluster"))
#-----------------------------------------------------------
# Carregando Pacotes
library(ClusterR)
library(cluster)
#-----------------------------------------------------------
# K-Means
#-----------------------------------------------------------
# Carregando Dados
data(iris)

#Imprimir a Estrutura de Dados
str(iris)


# Removendo os rótulos de Espécies dos dados originais
head(iris)
iris_1 <- iris[, -5]
head(iris_1)


# Executando o K-Means
set.seed(240) 
kmeans.re <- kmeans(iris_1, centers = 3, nstart = 20)
kmeans.re

# Identificação dos Grupos
kmeans.re$cluster

# Matriz de Confusão
cm <- table(iris$Species, kmeans.re$cluster)
cm

# Visualização dos Grupos
plot(iris_1[c("Sepal.Length", "Sepal.Width")],
     col = kmeans.re$cluster,
     main = "K-means com 3 clusters")

## Imprimindo os Centróides
kmeans.re$centers
kmeans.re$centers[, c("Sepal.Length", "Sepal.Width")]

## Visualizando os Grupos
y_kmeans <- kmeans.re$cluster
clusplot(iris_1[, c("Sepal.Length", "Sepal.Width")],
         y_kmeans,
         lines = 0,
         shade = TRUE,
         color = TRUE,
         labels = 2,
         plotchar = FALSE,
         span = TRUE,
         main = paste("Grupos da Base de Dados Iris"),
         xlab = 'Sepal.Length',
         ylab = 'Sepal.Width')
