
# Pesquisa Científica: PETG e Teste Qui-Quadrado

## Propriedades Mecânicas do PETG

### Dados Científicos Coletados

**Fonte:** Evaluation of mechanical properties of 3D printed PETG and Polyamide (6) polymers - ScienceDirect [1]

**Parâmetros Ótimos de Impressão para PETG:**
- Temperatura do bico: 250°C
- Temperatura da mesa: 80°C
- Densidade de preenchimento: 90%
- Velocidade de impressão: 40 mm/s
- Altura da camada: 0.2 mm

**Propriedades Mecânicas Reportadas:**
- Módulo de elasticidade (compressão): 14.53 GPa, 16.38 GPa, e 19.06 GPa
- Comportamento tensão-deformação: região linear distinta indicando deformação elástica
- Resposta frágil com falha final em 5% de deformação
- Ausência de deformação plástica devido aos parâmetros de impressão otimizados

**Características Microestruturais:**
- Análise SEM revela mínimos defeitos superficiais
- Boa adesão entre camadas
- Qualidade de construção superior
- Resistência estrutural contra forças de impacto

### Propriedades Adicionais do PETG (Literatura Complementar)

**Resistência Mecânica:**
- Resistência à tração (direção XY): 31.9 ± 1.1 MPa [2]
- Resistência à tração (direção Z): 13.4 ± 2.0 MPa [2]
- Módulo de tração (direção XY): 1.472 MPa [2]
- Resistência à tração: 50-53 MPa [3,4]
- Alongamento na ruptura: 15% [3]

**Vantagens do PETG sobre PLA:**
- Maior resistência ao impacto
- Maior flexibilidade
- Maior resistência à temperatura
- Durabilidade superior geral [5]

**Características Químicas:**
- Termoplástico transparente miscível
- Propriedades de tração fortes
- Alta ductilidade
- Resistência favorável ao calor e ataques químicos [6]

## Referências

[1] https://www.sciencedirect.com/science/article/pii/S2667022424000355
[2] https://juggerbot3d.com/petg-filament-review/
[3] https://bigrep.com/filaments/petg/
[4] https://www.iemai3d.com/wp-content/uploads/2021/03/PETG_TDS_EN.pdf
[5] https://ultimaker.com/learn/petg-vs-pla-vs-abs-3d-printing-strength-comparison/
[6] https://www.sciencedirect.com/science/article/pii/S2666138123000592



## Teste Qui-Quadrado para Validação de Dados

### Dados Científicos do Artigo "Dice Testing with the Running Chi-Square Statistic"

**Fonte:** Campbell, C. Warren & Wimsatt, Hunter A. "Dice Testing with the Running Chi-Square Distribution" (2022) [7]

**Resumo do Estudo:**
Os dados não são justos por natureza. Produzir um dado geometricamente preciso e uniforme não é possível. Os dados de cassino chegam o mais próximo possível de dados perfeitamente aleatórios porque são usinados com precisão de algumas décimos de milésimo de polegada, e a massa usada para os pontos (pips) tem a mesma densidade do corpo plástico.

**Características dos Dados Poliédricos:**
- Dados poliédricos usados em jogos como Dungeons and Dragons são mais difíceis de fabricar com alta tolerância
- Alguns dados são mais justos que outros
- Dados de 20 lados (D20s) são muito difíceis de fabricar com precisão
- A distribuição qui-quadrado em execução (Campbell e Dolan 2019, 2020) foi a ferramenta escolhida para esses testes

**Metodologia de Teste:**
- O teste qui-quadrado possui várias características matemáticas interessantes
- Um dado injusto terá um termo constante e uma tendência linear adicionada à estatística qui-quadrado em execução
- Quanto mais íngreme a inclinação da tendência, mais injusto é o dado
- 30 dados foram rolados pelo menos 3000 vezes cada em um dispositivo automatizado de rolagem de dados
- Alguns dos mesmos dados foram rolados 5000 vezes manualmente em uma torre de dados

**Resultados Principais:**
- Os resultados indicam que o método de rolagem influencia fortemente o resultado
- Dados não podem ser fabricados com precisão absoluta, então dados não são justos
- Campbell e Dolan (2019) rolaram vários dados 3000 vezes e compararam os resultados com testes float de alguns dos mesmos dados
- Concluíram que, embora os testes float possam indicar que o dado não está balanceado, o teste float que flutua são não correlacionados com os lados do dado que aparecem mais frequentemente quando fisicamente rolados

**Implicações Estatísticas:**
- Consequentemente, eles acreditam que os testes float são muito limitados
- No entanto, há muitos vídeos no YouTube sobre testes float de dados
- Um teste tem quase um milhão de visualizações (Fisher, 2015a)
- Alguns estudos testando a justiça dos dados com o teste qui-quadrado têm poder estatístico insuficiente para determinar estatisticamente a justiça ou não

**Exemplo de Aplicação:**
- Um exemplo rolou cinco dados de 20 lados (D20s) 100 vezes à mão
- Outro 100 vezes com uma torre de dados
- Chegaram a conclusões diferentes sobre a justiça dos dados e a utilidade da torre de dados para causar dados injustos serem justos (Fisher 2015b)

**Validação Científica:**
- Campbell e Dolan (2020) também mostraram que há algum valor em medir a dispersão de diâmetros para dados
- Estes mostram correlações estatisticamente significativas positivas entre a faixa de diâmetros para um dado e o valor χ² obtido quando testado para justiça
- Os dois artigos de Campbell e Dolan também mostram a futilidade de testar a justiça dos dados usando apenas algumas centenas de rolagens
- Eles dão vários exemplos de dados que testaram que pareciam altamente injustos após 3000 rolagens, mas finalmente testaram justos após 5000 rolagens

### Fundamentos Teóricos do Teste Qui-Quadrado

**Hipóteses:**
- H₀: O dado é justo (p₁ = p₂ = p₃ = p₄ = p₅ = p₆ = 1/6)
- H₁: O dado não é justo (pelo menos uma probabilidade ≠ 1/6)

**Estatística do Teste:**
χ² = Σ[(Observado - Esperado)²/Esperado]

**Distribuição:**
- Sob H₀, a estatística segue distribuição qui-quadrado com 5 graus de liberdade
- Graus de liberdade = número de categorias - 1 = 6 - 1 = 5

**Critério de Decisão:**
- Se χ² > χ²₀.₀₅,₅ = 11.07, rejeita-se H₀ (dado é injusto)
- Se χ² ≤ 11.07, não se rejeita H₀ (não há evidência de que o dado seja injusto)

## Referências Adicionais

[7] https://digitalcommons.wku.edu/cgi/viewcontent.cgi?article=1006&context=seas_faculty_pubs

