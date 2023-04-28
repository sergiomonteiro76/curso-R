#----------------------------------------------------------------------
#Desenvolvedor: Sérgio Assunção Monteiro, DSc
#Github: https://github.com/sergiomonteiro76
#linkedin: https://www.linkedin.com/in/sergio-assun%C3%A7%C3%A3o-monteiro-b781897b/
#lattes: http://lattes.cnpq.br/9489191035734025
#----------------------------------------------------------------------
cat("\014") #limpar console ou pressionar Ctrl+L

#dados de entrada
exemplo_vetor <- c(10, 20, 30)
exemplo_lista <- list(a = 10, b = 20, c = 30)

#acessar dados por vetores booleandos
exemplo_vetor[c(FALSE, TRUE, TRUE)]
## [1] 20 30
exemplo_lista[c(FALSE, TRUE, TRUE)]
## $b
## [1] 20
##
## $c
## [1] 30
