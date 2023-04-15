#----------------------------------------------------------------------
#Desenvolvedor: Sérgio Assunção Monteiro, DSc
#Github: https://github.com/sergiomonteiro76
#linkedin: https://www.linkedin.com/in/sergio-assun%C3%A7%C3%A3o-monteiro-b781897b/
#lattes: http://lattes.cnpq.br/9489191035734025
#----------------------------------------------------------------------
cat("\014") #limpar console ou pressionar Ctrl+L

#Geração de dados
alunos <- data.frame(nome = c("nome01", "nome02", "nome03"),
                     bilingue = c("S", "N", "S"),
                     coeficienteRendimento = c(9, 8, 8),
                     stringsAsFactors = FALSE)
#------------------------------------------------------------------------
## aumento de coeficienteRendimento para o 10
#------------------------------------------------------------------------
alunos[1, "coeficienteRendimento"] <- 10

#------------------------------------------------------------------------
## ver os dados do dataframe
#------------------------------------------------------------------------
View(alunos)
#------------------------------------------------------------------------
## Seleciona coluna nome
#------------------------------------------------------------------------
alunos[1]            #Forma 01

alunos[[1]]          #Forma 02

alunos$nome          #Forma 03

alunos[["nome"]]     #Forma 04

