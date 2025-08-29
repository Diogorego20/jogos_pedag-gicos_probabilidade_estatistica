# 🚀 Guia de Instalação e Uso

Este guia fornece instruções detalhadas para configurar e usar o projeto "Validação Estatística de Dado Cúbico Impresso em 3D".

## 📋 Pré-requisitos

### Software Necessário

1. **R (versão ≥ 4.0)**
   - Download: https://cran.r-project.org/
   - Verificar instalação: `R --version`

2. **Git**
   - Download: https://git-scm.com/
   - Verificar instalação: `git --version`

3. **Editor de Texto** (opcional)
   - RStudio: https://rstudio.com/
   - VS Code: https://code.visualstudio.com/

### Hardware (para impressão 3D)

1. **Impressora 3D**
   - Compatível com filamento PETG
   - Volume mínimo: 200mm × 200mm × 200mm
   - Exemplo: Creality Ender 3 Plus

2. **Filamento PETG**
   - Cor: Preferencialmente preta ou escura
   - Quantidade: ~600g para um dado
   - Qualidade: Genérica é suficiente

## 📥 Instalação

### 1. Clonar o Repositório

```bash
# Clone o repositório principal
git clone https://github.com/Diogorego20/projetos_educacionais.git

# Navegue para o projeto específico
cd projetos_educacionais/projeto_dado_educacional
```

### 2. Verificar Estrutura

```bash
# Listar arquivos do projeto
ls -la

# Estrutura esperada:
# ├── README.md
# ├── LICENSE
# ├── CONTRIBUTING.md
# ├── INSTALACAO.md
# ├── .gitignore
# ├── docs/
# ├── src/
# ├── images/
# ├── results/
# └── data/
```

### 3. Configurar R

```r
# Abrir R ou RStudio
R

# Verificar versão
version

# Instalar pacotes (se necessário)
# Nota: O script principal usa apenas R base
# Pacotes opcionais para análises avançadas:
install.packages(c("ggplot2", "dplyr", "knitr"))
```

## 🎯 Uso Básico

### 1. Executar Simulação Principal

```bash
# No terminal, dentro do diretório do projeto
Rscript src/simulacao_dado_simples.R
```

**Saída esperada:**
```
=== SIMULAÇÃO DE VALIDAÇÃO ESTATÍSTICA DE DADO CÚBICO ===

RESULTADOS DO TESTE QUI-QUADRADO:
================================
Número de lançamentos: 600
Estatística χ²: 1.3600
Graus de liberdade: 5
Valor crítico (α=0.05): 11.0705
P-valor: 0.928638
Decisão: Não rejeitar H0: Dado é justo

[... mais resultados ...]
```

### 2. Visualizar Resultados

Os gráficos são salvos automaticamente em:
- `images/grafico_frequencias_base.png`
- `images/grafico_multiplos_dados.png`

### 3. Analisar Dados

Os resultados CSV são salvos em:
- `results/resultados_frequencias.csv`
- `results/resultados_sensibilidade.csv`
- `results/resultados_multiplos_dados.csv`

## 🔧 Uso Avançado

### 1. Modificar Parâmetros

Edite o arquivo `src/simulacao_dado_simples.R`:

```r
# Alterar número de lançamentos
n_lancamentos <- 1000  # Padrão: 600

# Alterar nível de significância
alpha <- 0.01  # Padrão: 0.05

# Alterar seed para reprodutibilidade
set.seed(123)  # Padrão: 42
```

### 2. Análise de Dados Reais

Para analisar dados de lançamentos físicos:

```r
# Criar arquivo de dados
dados_reais <- c(1, 3, 6, 2, 4, 5, 1, 2, ...)  # Seus dados

# Calcular frequências
freq_obs <- table(factor(dados_reais, levels = 1:6))

# Executar teste
resultado <- teste_qui_quadrado(as.numeric(freq_obs), length(dados_reais))
print(resultado)
```

### 3. Personalizar Visualizações

```r
# Carregar dados
dados <- read.csv("results/resultados_frequencias.csv")

# Criar gráfico personalizado
barplot(dados$Observado, 
        names.arg = dados$Face,
        main = "Meus Resultados",
        col = "steelblue")
```

## 🎲 Impressão 3D

### 1. Preparar Modelo

O projeto não inclui o arquivo STL, mas você pode:

1. **Criar no Tinkercad:**
   - Cubo 150mm × 150mm × 150mm
   - Bordas arredondadas (raio 2mm)
   - Pontos (pips) como esferas rebaixadas

2. **Baixar modelo pronto:**
   - Thingiverse: buscar "large educational dice"
   - MyMiniFactory: "teaching dice"

### 2. Configurar Slicer

**PrusaSlicer/Cura:**
```
Material: PETG
Temperatura bico: 250°C
Temperatura mesa: 80°C
Velocidade: 40 mm/s
Altura camada: 0.2mm
Preenchimento: 10% Gyroid
Paredes: 3 perímetros
Suportes: Não necessário
```

### 3. Processo de Impressão

1. **Pré-aquecimento:** 10 minutos
2. **Primeira camada:** Verificar aderência
3. **Monitoramento:** Verificar a cada 2 horas
4. **Tempo total:** ~47 horas
5. **Pós-processamento:** Remoção cuidadosa

## 📊 Coleta de Dados Experimentais

### 1. Protocolo de Lançamento

```
Preparação:
- Mesa lisa e nivelada
- Altura de lançamento: 30cm
- Área de coleta: 50cm × 50cm
- Iluminação adequada

Procedimento:
1. Segurar o dado com rotação aleatória
2. Lançar de 30cm de altura
3. Aguardar parada completa
4. Registrar resultado imediatamente
5. Aguardar 5 segundos antes do próximo lançamento

Critérios de Invalidação:
- Dado cai fora da área
- Dado fica inclinado
- Interferência externa
```

### 2. Planilha de Coleta

```csv
Lancamento,Resultado,Tempo,Observacoes
1,3,10:15:30,
2,1,10:15:35,
3,6,10:15:40,
...
```

### 3. Análise dos Dados

```r
# Carregar dados coletados
dados <- read.csv("meus_dados.csv")

# Executar análise completa
source("src/simulacao_dado_simples.R")
resultado <- teste_qui_quadrado(table(dados$Resultado), nrow(dados))
```

## 🎓 Uso Educacional

### 1. Plano de Aula Básico

**Duração:** 90 minutos

**Objetivos:**
- Compreender conceitos de probabilidade
- Aplicar teste qui-quadrado
- Interpretar resultados estatísticos

**Atividades:**
1. **Introdução (15 min):** Conceitos teóricos
2. **Coleta (30 min):** Lançamentos em grupos
3. **Análise (30 min):** Aplicação do teste
4. **Discussão (15 min):** Interpretação dos resultados

### 2. Exercícios Sugeridos

1. **Básico:** Comparar frequências observadas vs esperadas
2. **Intermediário:** Calcular estatística qui-quadrado manualmente
3. **Avançado:** Analisar efeito do tamanho da amostra

### 3. Avaliação

**Critérios:**
- Coleta correta de dados (25%)
- Aplicação do teste (35%)
- Interpretação dos resultados (25%)
- Participação e discussão (15%)

## 🔍 Solução de Problemas

### Problemas Comuns

1. **Erro: "Rscript não encontrado"**
   ```bash
   # Verificar instalação do R
   which R
   
   # Adicionar ao PATH (Linux/Mac)
   export PATH=$PATH:/usr/local/bin
   ```

2. **Erro: "Pacote não encontrado"**
   ```r
   # Instalar pacotes necessários
   install.packages("nome_do_pacote")
   ```

3. **Gráficos não aparecem**
   ```r
   # Verificar dispositivo gráfico
   dev.list()
   
   # Salvar explicitamente
   png("meu_grafico.png")
   plot(dados)
   dev.off()
   ```

### Problemas de Impressão 3D

1. **Warping/Empenamento**
   - Aumentar temperatura da mesa
   - Usar brim ou raft
   - Verificar nivelamento

2. **Má aderência entre camadas**
   - Aumentar temperatura do bico
   - Reduzir velocidade de impressão
   - Verificar calibração do extrusor

3. **Stringing (fios)**
   - Ajustar retração (4-6mm)
   - Reduzir temperatura do bico
   - Aumentar velocidade de deslocamento

## 📞 Suporte

### Canais de Suporte

1. **GitHub Issues:** Para problemas técnicos
   - https://github.com/Diogorego20/projetos_educacionais/issues

2. **Instagram:** Para dúvidas gerais
   - [@estatisticacomjogos](https://www.instagram.com/estatisticacomjogos/)

3. **Documentação:** Para referência
   - `docs/metodologia_completa.md`

### Informações para Suporte

Ao solicitar ajuda, inclua:

1. **Sistema operacional** e versão
2. **Versão do R** (`R --version`)
3. **Mensagem de erro** completa
4. **Código** que causou o problema
5. **Dados de entrada** (se aplicável)

## 🔄 Atualizações

### Verificar Atualizações

```bash
# Atualizar repositório local
git pull origin main

# Verificar mudanças
git log --oneline -10
```

### Histórico de Versões

- **v1.0.0:** Versão inicial com simulação básica
- **v1.1.0:** Adição de análises de sensibilidade
- **v1.2.0:** Melhorias nas visualizações

---

**🎲 Boa sorte com seu projeto educacional!**

Para mais informações, consulte a documentação completa em `docs/` ou entre em contato através dos canais de suporte.

