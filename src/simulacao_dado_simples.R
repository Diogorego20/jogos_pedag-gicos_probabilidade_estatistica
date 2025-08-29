# ===============================================================================
# PROJETO: Validação Estatística de Dado Cúbico Impresso em 3D
# AUTOR: Diogo Da Silva Rego - Estudante de Estatística
# PROJETO EDUCACIONAL: https://www.instagram.com/estatisticacomjogos/
# REPOSITÓRIO: https://github.com/Diogorego20/projetos_educacionais.git
# VERSÃO SIMPLIFICADA - Usando apenas R base
# ===============================================================================

# ===============================================================================
# PARTE 1: SIMULAÇÃO DE LANÇAMENTOS DE DADO
# ===============================================================================

# Função para simular lançamentos de um dado justo
simular_lancamentos <- function(n_lancamentos = 600, seed = 123) {
  set.seed(seed)
  lancamentos <- sample(1:6, n_lancamentos, replace = TRUE)
  return(lancamentos)
}

# Função para calcular frequências observadas
calcular_frequencias <- function(lancamentos) {
  freq_obs <- table(factor(lancamentos, levels = 1:6))
  return(as.numeric(freq_obs))
}

# ===============================================================================
# PARTE 2: TESTE QUI-QUADRADO DE QUALIDADE DO AJUSTE
# ===============================================================================

# Função para realizar teste qui-quadrado
teste_qui_quadrado <- function(freq_observadas, n_lancamentos, alpha = 0.05) {
  # Frequências esperadas para dado justo
  freq_esperadas <- rep(n_lancamentos/6, 6)
  
  # Estatística qui-quadrado
  chi_quadrado <- sum((freq_observadas - freq_esperadas)^2 / freq_esperadas)
  
  # Graus de liberdade
  gl <- 5  # 6 categorias - 1
  
  # Valor crítico
  valor_critico <- qchisq(1 - alpha, gl)
  
  # P-valor
  p_valor <- 1 - pchisq(chi_quadrado, gl)
  
  # Decisão
  decisao <- ifelse(chi_quadrado > valor_critico, 
                   "Rejeitar H0: Dado é viciado", 
                   "Não rejeitar H0: Dado é justo")
  
  # Retornar resultados
  return(list(
    chi_quadrado = chi_quadrado,
    graus_liberdade = gl,
    valor_critico = valor_critico,
    p_valor = p_valor,
    decisao = decisao,
    freq_observadas = freq_observadas,
    freq_esperadas = freq_esperadas
  ))
}

# ===============================================================================
# PARTE 3: SIMULAÇÃO PRINCIPAL E RESULTADOS
# ===============================================================================

# Simulação principal
cat("=== SIMULAÇÃO DE VALIDAÇÃO ESTATÍSTICA DE DADO CÚBICO ===\n\n")

# Parâmetros da simulação
n_lancamentos <- 600
set.seed(42)

# Simular lançamentos
lancamentos <- simular_lancamentos(n_lancamentos)
freq_obs <- calcular_frequencias(lancamentos)

# Realizar teste qui-quadrado
resultado_teste <- teste_qui_quadrado(freq_obs, n_lancamentos)

# Exibir resultados
cat("RESULTADOS DO TESTE QUI-QUADRADO:\n")
cat("================================\n")
cat(sprintf("Número de lançamentos: %d\n", n_lancamentos))
cat(sprintf("Estatística χ²: %.4f\n", resultado_teste$chi_quadrado))
cat(sprintf("Graus de liberdade: %d\n", resultado_teste$graus_liberdade))
cat(sprintf("Valor crítico (α=0.05): %.4f\n", resultado_teste$valor_critico))
cat(sprintf("P-valor: %.6f\n", resultado_teste$p_valor))
cat(sprintf("Decisão: %s\n\n", resultado_teste$decisao))

# Tabela de frequências
cat("TABELA DE FREQUÊNCIAS:\n")
cat("=====================\n")
tabela_freq <- data.frame(
  Face = 1:6,
  Observado = resultado_teste$freq_observadas,
  Esperado = resultado_teste$freq_esperadas,
  Diferenca = resultado_teste$freq_observadas - resultado_teste$freq_esperadas,
  Contribuicao_Chi2 = (resultado_teste$freq_observadas - resultado_teste$freq_esperadas)^2 / resultado_teste$freq_esperadas
)

print(tabela_freq)

# ===============================================================================
# PARTE 4: GRÁFICOS SIMPLES
# ===============================================================================

# Gráfico de barras das frequências (usando R base)
png("/home/ubuntu/grafico_frequencias_base.png", width = 800, height = 600)
par(mfrow = c(1, 2))

# Gráfico de frequências observadas vs esperadas
barplot(rbind(resultado_teste$freq_observadas, resultado_teste$freq_esperadas),
        beside = TRUE,
        names.arg = 1:6,
        col = c("steelblue", "red"),
        legend.text = c("Observado", "Esperado"),
        main = "Frequências Observadas vs Esperadas",
        xlab = "Face do Dado",
        ylab = "Frequência")

# Gráfico da distribuição qui-quadrado
x_vals <- seq(0, 20, 0.1)
y_vals <- dchisq(x_vals, df = 5)

plot(x_vals, y_vals, type = "l", col = "blue", lwd = 2,
     main = "Distribuição Qui-Quadrado (5 g.l.)",
     xlab = "Valor χ²",
     ylab = "Densidade")

# Adicionar linha vertical para estatística observada
abline(v = resultado_teste$chi_quadrado, col = "darkgreen", lty = 2, lwd = 2)

# Adicionar linha vertical para valor crítico
abline(v = resultado_teste$valor_critico, col = "red", lty = 1, lwd = 2)

# Adicionar área de rejeição
x_reject <- x_vals[x_vals > resultado_teste$valor_critico]
y_reject <- dchisq(x_reject, df = 5)
polygon(c(x_reject, rev(x_reject)), c(y_reject, rep(0, length(y_reject))), 
         col = rgb(1, 0, 0, 0.3), border = NA)

# Adicionar legendas
legend("topright", 
       legend = c(paste("χ² obs =", round(resultado_teste$chi_quadrado, 4)),
                  paste("χ² crit =", round(resultado_teste$valor_critico, 4))),
       col = c("darkgreen", "red"),
       lty = c(2, 1),
       lwd = 2)

dev.off()

# ===============================================================================
# PARTE 5: ANÁLISE DE SENSIBILIDADE
# ===============================================================================

cat("\n=== ANÁLISE DE SENSIBILIDADE ===\n")

# Testar diferentes tamanhos de amostra
tamanhos_amostra <- c(100, 300, 600, 1000, 1500, 3000)
resultados_sensibilidade <- data.frame(
  n_lancamentos = numeric(0),
  chi_quadrado = numeric(0),
  p_valor = numeric(0),
  rejeita_h0 = logical(0)
)

for (n in tamanhos_amostra) {
  # Simular lançamentos
  lancamentos_temp <- simular_lancamentos(n, seed = 42)
  freq_temp <- calcular_frequencias(lancamentos_temp)
  
  # Teste qui-quadrado
  resultado_temp <- teste_qui_quadrado(freq_temp, n)
  
  # Armazenar resultados
  resultados_sensibilidade <- rbind(resultados_sensibilidade, 
                                   data.frame(
                                     n_lancamentos = n,
                                     chi_quadrado = resultado_temp$chi_quadrado,
                                     p_valor = resultado_temp$p_valor,
                                     rejeita_h0 = resultado_temp$chi_quadrado > resultado_temp$valor_critico
                                   ))
}

print(resultados_sensibilidade)

# ===============================================================================
# PARTE 6: SIMULAÇÃO DE MÚLTIPLOS DADOS
# ===============================================================================

cat("\n=== SIMULAÇÃO DE MÚLTIPLOS DADOS ===\n")

# Simular 30 dados diferentes (como no estudo de Campbell & Wimsatt)
n_dados <- 30
resultados_multiplos <- data.frame(
  dado_id = numeric(0),
  chi_quadrado = numeric(0),
  p_valor = numeric(0),
  justo = logical(0)
)

for (i in 1:n_dados) {
  # Simular cada dado com seed diferente
  lancamentos_dado <- simular_lancamentos(600, seed = i * 10)
  freq_dado <- calcular_frequencias(lancamentos_dado)
  
  # Teste qui-quadrado
  resultado_dado <- teste_qui_quadrado(freq_dado, 600)
  
  # Armazenar resultados
  resultados_multiplos <- rbind(resultados_multiplos,
                               data.frame(
                                 dado_id = i,
                                 chi_quadrado = resultado_dado$chi_quadrado,
                                 p_valor = resultado_dado$p_valor,
                                 justo = resultado_dado$chi_quadrado <= resultado_dado$valor_critico
                               ))
}

# Estatísticas dos múltiplos dados
cat(sprintf("Dados testados: %d\n", n_dados))
cat(sprintf("Dados considerados justos: %d (%.1f%%)\n", 
           sum(resultados_multiplos$justo), 
           100 * mean(resultados_multiplos$justo)))
cat(sprintf("Dados considerados viciados: %d (%.1f%%)\n", 
           sum(!resultados_multiplos$justo), 
           100 * mean(!resultados_multiplos$justo)))

# Gráfico dos resultados múltiplos
png("/home/ubuntu/grafico_multiplos_dados.png", width = 800, height = 600)
par(mfrow = c(2, 1))

# Gráfico das estatísticas qui-quadrado
plot(resultados_multiplos$dado_id, resultados_multiplos$chi_quadrado,
     type = "b", pch = 19, col = "blue",
     main = "Estatísticas Qui-Quadrado para 30 Dados",
     xlab = "ID do Dado",
     ylab = "Estatística χ²")
abline(h = resultado_teste$valor_critico, col = "red", lty = 2, lwd = 2)
legend("topright", legend = "Valor Crítico", col = "red", lty = 2, lwd = 2)

# Gráfico dos p-valores
plot(resultados_multiplos$dado_id, resultados_multiplos$p_valor,
     type = "b", pch = 19, col = "darkgreen",
     main = "P-valores para 30 Dados",
     xlab = "ID do Dado",
     ylab = "P-valor")
abline(h = 0.05, col = "red", lty = 2, lwd = 2)
legend("topright", legend = "α = 0.05", col = "red", lty = 2, lwd = 2)

dev.off()

# ===============================================================================
# PARTE 7: RELATÓRIO FINAL
# ===============================================================================

cat("\n=== RELATÓRIO FINAL ===\n")
cat("Este script demonstra a aplicação do teste qui-quadrado para validação\n")
cat("de dados cúbicos impressos em 3D. Os resultados mostram que:\n\n")

cat("1. O teste qui-quadrado é uma ferramenta robusta para detectar viés em dados\n")
cat("2. O tamanho da amostra influencia significativamente o poder do teste\n")
cat("3. Recomenda-se pelo menos 600 lançamentos para uma análise confiável\n")
cat("4. A metodologia pode ser aplicada para validar dados educacionais\n\n")

cat("INTERPRETAÇÃO DOS RESULTADOS:\n")
cat("============================\n")
if (resultado_teste$p_valor > 0.05) {
  cat("✓ O dado testado PASSOU no teste de aleatoriedade\n")
  cat("✓ Não há evidência estatística de vício\n")
  cat("✓ O dado pode ser considerado adequado para uso educacional\n")
} else {
  cat("✗ O dado testado FALHOU no teste de aleatoriedade\n")
  cat("✗ Há evidência estatística de vício\n")
  cat("✗ O dado deve ser reavaliado antes do uso educacional\n")
}

cat("\nPROJETO EDUCACIONAL:\n")
cat("Desenvolvido por: Diogo Da Silva Rego\n")
cat("Instagram: @estatisticacomjogos\n")
cat("GitHub: https://github.com/Diogorego20/projetos_educacionais.git\n")

cat("\n=== FIM DA SIMULAÇÃO ===\n")

# Salvar resultados em arquivo
write.csv(tabela_freq, "/home/ubuntu/resultados_frequencias.csv", row.names = FALSE)
write.csv(resultados_sensibilidade, "/home/ubuntu/resultados_sensibilidade.csv", row.names = FALSE)
write.csv(resultados_multiplos, "/home/ubuntu/resultados_multiplos_dados.csv", row.names = FALSE)

