#Desenvolvedor: Sérgio Assunção Monteiro, DSc
#Github: https://github.com/sergiomonteiro76
#linkedin: https://www.linkedin.com/in/sergio-assun%C3%A7%C3%A3o-monteiro-b781897b/
#lattes: http://lattes.cnpq.br/9489191035734025
#----------------------------------------------------------------------
cat("\014") #limpar console ou pressionar Ctrl+L
#----------------------------------------------------------------------
cores = c("green", "orange", "brown")
meses <- c("Mar", "Abr", "Mai", "Jun", "Jul")
regioes <- c("SE", "NE", "N")

# Criar a matriz de valores
v <- matrix(c(2, 9, 3, 11, 9, 
              4, 8, 7, 3, 12, 
              5, 2, 8, 10, 11),
            nrow = 3, 
            ncol = 5, 
            byrow = TRUE)

# Criar gráfico de barras
barplot(v, 
        main = "Total de Vendas", 
        names.arg = meses,
        xlab = "Mês", 
        ylab = "Venda", 
        col = cores)

#  Acrescentar legenda no gráfico
legend("topleft", 
       regioes, 
       cex = 0.7, 
       fill = cores)
