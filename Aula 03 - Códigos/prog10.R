#----------------------------------------------------------------------
#Desenvolvedor: Sérgio Assunção Monteiro, DSc
#Github: https://github.com/sergiomonteiro76
#linkedin: https://www.linkedin.com/in/sergio-assun%C3%A7%C3%A3o-monteiro-b781897b/
#lattes: http://lattes.cnpq.br/9489191035734025
#----------------------------------------------------------------------
cat("\014") #limpar console ou pressionar Ctrl+L

dados <- data.frame(renda = c(50, 10, 20),
                    indice_chave = c("b", "c", "a"),
                    stringsAsFactors = FALSE)

#Manipulando dados. Usando o “.”
. <- dados
. <- .[order(.$indice_chave), , drop = FALSE]
.$renda_acumulada_ordenada <- cumsum(.$renda)
.$fracao_renda <-.$renda_acumulada_ordenada/sum(.$renda)
resultado <- .
print(resultado)
