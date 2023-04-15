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
## seleciona primeira linha e primeira coluna (data.frame)
#------------------------------------------------------------------------
alunos[1, 1, drop = FALSE]
#------------------------------------------------------------------------
## seleciona linha 3, colunas "nome" e "coeficienteRendimento"
#------------------------------------------------------------------------
alunos[3 , c("nome", "coeficienteRendimento")]
