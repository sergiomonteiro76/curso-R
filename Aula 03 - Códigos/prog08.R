#----------------------------------------------------------------------
#Desenvolvedor: Sérgio Assunção Monteiro, DSc
#Github: https://github.com/sergiomonteiro76
#linkedin: https://www.linkedin.com/in/sergio-assun%C3%A7%C3%A3o-monteiro-b781897b/
#lattes: http://lattes.cnpq.br/9489191035734025
#----------------------------------------------------------------------
cat("\014") #limpar console ou pressionar Ctrl+L


## Criar data frame com dados NA
df <- data.frame(x = c(NA, 2, 3),
                 y = c(10, 20, NA),
                 z = c(NA, -2, -30))
df$x[is.na(df$x)] <- 0
df$y[is.na(df$y)] <- 0
df$z[is.na(df$z)] <- 0
print(df)
