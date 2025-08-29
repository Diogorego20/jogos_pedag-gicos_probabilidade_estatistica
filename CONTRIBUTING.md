# 🤝 Guia de Contribuição

Obrigado por seu interesse em contribuir com o projeto "Validação Estatística de Dado Cúbico Impresso em 3D"! Este documento fornece diretrizes para contribuições efetivas.

## 📋 Como Contribuir

### 1. Reportar Problemas

Se você encontrou um bug ou tem uma sugestão:

1. Verifique se já existe uma issue similar
2. Crie uma nova issue com:
   - Título descritivo
   - Descrição detalhada do problema
   - Passos para reproduzir (se aplicável)
   - Ambiente (versão do R, sistema operacional, etc.)

### 2. Sugerir Melhorias

Para sugestões de novas funcionalidades:

1. Abra uma issue com o label "enhancement"
2. Descreva claramente a funcionalidade proposta
3. Explique como ela beneficiaria o projeto educacional
4. Forneça exemplos de uso, se possível

### 3. Contribuir com Código

#### Pré-requisitos

- R (versão ≥ 4.0)
- Git configurado
- Conhecimento básico de estatística
- Familiaridade com impressão 3D (opcional)

#### Processo de Contribuição

1. **Fork do Repositório**
   ```bash
   # Clone seu fork
   git clone https://github.com/SEU_USUARIO/projetos_educacionais.git
   cd projetos_educacionais/projeto_dado_educacional
   ```

2. **Criar Branch**
   ```bash
   git checkout -b feature/nome-da-funcionalidade
   # ou
   git checkout -b fix/nome-do-bug
   ```

3. **Fazer Alterações**
   - Mantenha o código limpo e bem documentado
   - Adicione comentários explicativos
   - Siga as convenções de nomenclatura existentes

4. **Testar**
   ```bash
   # Execute os testes
   Rscript src/simulacao_dado_simples.R
   
   # Verifique se não há erros
   # Confirme que os resultados são consistentes
   ```

5. **Commit**
   ```bash
   git add .
   git commit -m "feat: adiciona nova funcionalidade X"
   # ou
   git commit -m "fix: corrige problema Y"
   ```

6. **Push e Pull Request**
   ```bash
   git push origin feature/nome-da-funcionalidade
   ```
   
   Então abra um Pull Request no GitHub.

## 📝 Padrões de Código

### R

- Use nomes de variáveis descritivos em português
- Adicione comentários para lógica complexa
- Mantenha funções com responsabilidade única
- Use indentação de 2 espaços

```r
# Exemplo de função bem documentada
calcular_chi_quadrado <- function(freq_observadas, freq_esperadas) {
  # Calcula a estatística qui-quadrado
  # Args:
  #   freq_observadas: vetor com frequências observadas
  #   freq_esperadas: vetor com frequências esperadas
  # Returns:
  #   valor da estatística qui-quadrado
  
  chi2 <- sum((freq_observadas - freq_esperadas)^2 / freq_esperadas)
  return(chi2)
}
```

### Documentação

- Use Markdown para documentação
- Inclua exemplos práticos
- Mantenha linguagem clara e educativa
- Adicione referências científicas quando apropriado

## 🎯 Áreas de Contribuição

### Prioritárias

1. **Validação Experimental**
   - Testes com dados físicos reais
   - Comparação com dados comerciais
   - Análise de durabilidade

2. **Melhorias Estatísticas**
   - Implementação de outros testes
   - Análise de poder estatístico
   - Métodos de correção múltipla

3. **Funcionalidades Educacionais**
   - Materiais didáticos adicionais
   - Exercícios práticos
   - Visualizações interativas

### Secundárias

1. **Otimização Técnica**
   - Melhoria de performance do código R
   - Paralelização de simulações
   - Interface gráfica

2. **Extensões**
   - Outros tipos de dados (d4, d8, d12, d20)
   - Diferentes materiais de impressão
   - Análise de outros padrões de preenchimento

## 🔬 Contribuições Científicas

### Pesquisa

Se você é pesquisador e deseja contribuir:

1. **Estudos Experimentais**
   - Validação com dados físicos
   - Análise de diferentes parâmetros de impressão
   - Estudos de durabilidade

2. **Metodologia**
   - Novos métodos de validação
   - Análises estatísticas avançadas
   - Comparações com outros métodos

3. **Publicações**
   - Artigos científicos baseados no projeto
   - Apresentações em conferências
   - Materiais educacionais revisados por pares

### Formato de Contribuição Científica

```markdown
## Título do Estudo

**Autor(es):** Nome(s) e afiliação(ões)
**Data:** DD/MM/AAAA

### Resumo
Breve descrição do estudo (máximo 200 palavras)

### Metodologia
Descrição detalhada dos métodos utilizados

### Resultados
Apresentação clara dos resultados obtidos

### Conclusões
Implicações dos resultados para o projeto

### Referências
Lista de referências científicas
```

## 📚 Contribuições Educacionais

### Materiais Didáticos

1. **Planos de Aula**
   - Objetivos de aprendizagem claros
   - Atividades práticas
   - Avaliações sugeridas

2. **Exercícios**
   - Diferentes níveis de dificuldade
   - Soluções detalhadas
   - Conexões com currículo

3. **Recursos Visuais**
   - Infográficos educativos
   - Vídeos explicativos
   - Animações interativas

### Formato de Plano de Aula

```markdown
# Plano de Aula: [Título]

## Informações Gerais
- **Duração:** X minutos
- **Nível:** Ensino Médio/Superior
- **Pré-requisitos:** Lista de conhecimentos necessários

## Objetivos de Aprendizagem
- Objetivo 1
- Objetivo 2
- Objetivo 3

## Materiais Necessários
- Lista de materiais

## Desenvolvimento
### Introdução (X min)
### Desenvolvimento (X min)
### Conclusão (X min)

## Avaliação
Critérios e métodos de avaliação

## Recursos Adicionais
Links e referências complementares
```

## 🐛 Reportar Bugs

### Informações Necessárias

Ao reportar um bug, inclua:

1. **Ambiente**
   - Versão do R
   - Sistema operacional
   - Versões de pacotes relevantes

2. **Reprodução**
   - Código que causa o erro
   - Dados de entrada (se aplicável)
   - Mensagem de erro completa

3. **Comportamento Esperado**
   - O que deveria acontecer
   - Referências ou justificativas

### Exemplo de Report de Bug

```markdown
## Descrição do Bug
Breve descrição do problema

## Ambiente
- R versão: 4.1.2
- SO: Ubuntu 22.04
- Pacotes: ggplot2 3.3.5

## Reprodução
```r
# Código que causa o erro
resultado <- funcao_problematica(dados)
```

## Erro Observado
```
Error in funcao_problematica: mensagem de erro
```

## Comportamento Esperado
Descrição do que deveria acontecer

## Informações Adicionais
Qualquer contexto adicional relevante
```

## 📞 Contato

Para dúvidas sobre contribuições:

- **GitHub Issues:** Para discussões técnicas
- **Instagram:** [@estatisticacomjogos](https://www.instagram.com/estatisticacomjogos/) para questões gerais
- **Email:** Através do perfil do GitHub

## 🙏 Reconhecimento

Todos os contribuidores serão reconhecidos:

1. **README.md:** Lista de contribuidores
2. **Releases:** Menção em notas de versão
3. **Documentação:** Créditos em materiais derivados

### Tipos de Contribuição Reconhecidas

- 💻 Código
- 📖 Documentação
- 🎨 Design
- 🔬 Pesquisa
- 📚 Educação
- 🐛 Bugs reportados
- 💡 Ideias e sugestões

---

**Obrigado por contribuir com a educação estatística!** 🎲📊

Sua contribuição ajuda a tornar o ensino de probabilidade e estatística mais acessível e efetivo para estudantes em todo o mundo.

