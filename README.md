# 🎲 Projeto: Validação Estatística de Dado Cúbico Impresso em 3D

![Logo do Projeto](https://private-us-east-1.manuscdn.com/sessionFile/6vCNQOf4XoyQHejAwtFpsA/sandbox/fUvvaJLBb1NbmC5uZ33BL3-images_1756455202190_na1fn_L2hvbWUvdWJ1bnR1L3Byb2pldG9fZGFkb19lZHVjYWNpb25hbC9pbWFnZXMvbG9nb19wcm9qZXRvX2VkdWNhY2lvbmFs.png?Policy=eyJTdGF0ZW1lbnQiOlt7IlJlc291cmNlIjoiaHR0cHM6Ly9wcml2YXRlLXVzLWVhc3QtMS5tYW51c2Nkbi5jb20vc2Vzc2lvbkZpbGUvNnZDTlFPZjRYb3lRSGVqQXd0RnBzQS9zYW5kYm94L2ZVdnZhSkxCYjFOYm1DNXVaMzNCTDMtaW1hZ2VzXzE3NTY0NTUyMDIxOTBfbmExZm5fTDJodmJXVXZkV0oxYm5SMUwzQnliMnBsZEc5ZlpHRmtiMTlsWkhWallXTnBiMjVoYkM5cGJXRm5aWE12Ykc5bmIxOXdjbTlxWlhSdlgyVmtkV05oWTJsdmJtRnMucG5nIiwiQ29uZGl0aW9uIjp7IkRhdGVMZXNzVGhhbiI6eyJBV1M6RXBvY2hUaW1lIjoxNzk4NzYxNjAwfX19XX0_&Key-Pair-Id=K2HSFNDJXOU9YS&Signature=UzQUsSO3joOtWmdAG-WgSZPkgJSiBmy~T9zLyFmf8FKtGyZoALbkgd5EP2HFvM0NCQEwnH1zJwN7eNIWSDkBiwXQicy1OO3Ix1LIdzMS~i1hOnRz4g3LF5UeVTeaAtSMxYjGGHX6h4gJBnysU7KrErHX9oOyq~C2zG9oeAdD-QkNUk6rEMjZYO-T4-G9sNiee3gJm36ryDUWBj4ARZK7CJHH6~12YHrg6RqiVdkE3i7VYm9NBGCOhfc00TMWIFxHlF7Winzx0AL5jr5gQ~Q82lXpg9ITMLpNOZQNBMj9788Mqo~7NonwAvcX6kuQHk8juLrRuN-ymUS0W9LCBFDzxw__)

## 📋 Sobre o Projeto

Este projeto educacional demonstra a fabricação e validação estatística de um dado cúbico de 150mm³ usando impressão 3D com filamento PETG. O objetivo é criar uma ferramenta didática para ensinar conceitos de probabilidade e inferência estatística, validando cientificamente a aleatoriedade do dado através do teste qui-quadrado.

**Desenvolvido por:** Diogo Da Silva Rego - Estudante de Estatística  
**Projeto Educacional:** [@estatisticacomjogos](https://www.instagram.com/estatisticacomjogos/)  
**Repositório:** [projetos_educacionais](https://github.com/Diogorego20/projetos_educacionais.git)

## 🎯 Objetivos

- **Educacional:** Demonstrar conceitos de probabilidade e estatística através de um objeto físico
- **Técnico:** Validar a aleatoriedade de dados impressos em 3D usando métodos estatísticos rigorosos
- **Científico:** Aplicar o teste qui-quadrado para inferência sobre equiprobabilidade das faces

## 🔬 Metodologia Científica

### Fabricação do Dado

- **Material:** PETG (Polietileno Tereftalato Glicol)
- **Dimensões:** 150mm × 150mm × 150mm
- **Preenchimento:** 10% com padrão Gyroid
- **Temperatura de impressão:** 240°C (bico) / 80°C (mesa)
- **Bordas:** Arredondadas para reduzir desgaste

### Validação Estatística

- **Método:** Teste Qui-Quadrado de Qualidade do Ajuste
- **Hipóteses:**
  - H₀: p₁ = p₂ = p₃ = p₄ = p₅ = p₆ = 1/6 (dado justo)
  - H₁: Pelo menos uma probabilidade ≠ 1/6 (dado viciado)
- **Critério:** α = 0.05, χ²crítico = 11.0705 (5 g.l.)
- **Amostra recomendada:** ≥ 600 lançamentos

## 📊 Resultados Principais

### Teste de Validação

```
Número de lançamentos: 600
Estatística χ²: 1.3600
P-valor: 0.928638
Decisão: ✅ Dado aprovado (não há evidência de vício)
```

### Distribuição de Frequências

| Face | Observado | Esperado | Diferença | Contribuição χ² |
|------|-----------|----------|-----------|-----------------|
| 1    | 106       | 100      | +6        | 0.36           |
| 2    | 102       | 100      | +2        | 0.04           |
| 3    | 96        | 100      | -4        | 0.16           |
| 4    | 92        | 100      | -8        | 0.64           |
| 5    | 100       | 100      | 0         | 0.00           |
| 6    | 104       | 100      | +4        | 0.16           |

## 🗂️ Estrutura do Projeto

```
projeto_dado_educacional/
├── README.md                    # Este arquivo
├── docs/                        # Documentação técnica
│   ├── analise_tecnica_dado.md  # Análise das imagens 3D
│   └── pesquisa_cientifica.md   # Fundamentação científica
├── src/                         # Código fonte
│   └── simulacao_dado_simples.R # Script R para validação
├── images/                      # Imagens e diagramas
│   ├── diagrama_processo_validacao.png
│   ├── diagrama_estrutura_interna.png
│   ├── ilustracao_teste_chi2.png
│   ├── ilustracao_impressao_3d.png
│   ├── grafico_frequencias_base.png
│   └── grafico_multiplos_dados.png
├── results/                     # Resultados das análises
│   ├── resultados_frequencias.csv
│   ├── resultados_sensibilidade.csv
│   └── resultados_multiplos_dados.csv
└── data/                        # Dados experimentais
```

## 🚀 Como Usar

### Pré-requisitos

- R (versão ≥ 4.0)
- Impressora 3D compatível com PETG
- Conhecimentos básicos de estatística

### Executando a Simulação

```bash
# Clone o repositório
git clone https://github.com/Diogorego20/projetos_educacionais.git

# Navegue para o projeto
cd projetos_educacionais/projeto_dado_educacional

# Execute a simulação em R
Rscript src/simulacao_dado_simples.R
```

### Interpretando os Resultados

1. **P-valor > 0.05:** Dado aprovado (não há evidência de vício)
2. **P-valor ≤ 0.05:** Dado reprovado (evidência de vício)
3. **Contribuições χ²:** Faces com valores altos podem indicar tendências

## 📈 Visualizações

### Processo de Validação
![Diagrama do Processo](https://private-us-east-1.manuscdn.com/sessionFile/6vCNQOf4XoyQHejAwtFpsA/sandbox/fUvvaJLBb1NbmC5uZ33BL3-images_1756455202191_na1fn_L2hvbWUvdWJ1bnR1L3Byb2pldG9fZGFkb19lZHVjYWNpb25hbC9pbWFnZXMvZGlhZ3JhbWFfcHJvY2Vzc29fdmFsaWRhY2Fv.png?Policy=eyJTdGF0ZW1lbnQiOlt7IlJlc291cmNlIjoiaHR0cHM6Ly9wcml2YXRlLXVzLWVhc3QtMS5tYW51c2Nkbi5jb20vc2Vzc2lvbkZpbGUvNnZDTlFPZjRYb3lRSGVqQXd0RnBzQS9zYW5kYm94L2ZVdnZhSkxCYjFOYm1DNXVaMzNCTDMtaW1hZ2VzXzE3NTY0NTUyMDIxOTFfbmExZm5fTDJodmJXVXZkV0oxYm5SMUwzQnliMnBsZEc5ZlpHRmtiMTlsWkhWallXTnBiMjVoYkM5cGJXRm5aWE12WkdsaFozSmhiV0ZmY0hKdlkyVnpjMjlmZG1Gc2FXUmhZMkZ2LnBuZyIsIkNvbmRpdGlvbiI6eyJEYXRlTGVzc1RoYW4iOnsiQVdTOkVwb2NoVGltZSI6MTc5ODc2MTYwMH19fV19&Key-Pair-Id=K2HSFNDJXOU9YS&Signature=gLZ7TKJaAXXIhjIIt4Zn7-AVz95rCjjhp8VOwM5xsb~revEy8fPThR2~VTL1VTDAes3SwFgT5cS~48ekpfsFdozOtwhS3JpeT3ynOC0BSyjfpvs8F6nQr6Lk5KSdg9ZyX5Xg12hYGy16DFX1xlnFIaH0czmADVaYyQwpBdkjwQo6nPWB4dGsoiIcwPLS9w1Nm~X5F2VkZbFxhbsCbaZfppkOR0tu2Ic2AFQGtsUJoQY1~kjXteBXrozlADJ0J9TnctdxQGFfGlK6pYMsT5aSqXMlGB~9A0DjjbUEJALA7F8Q~1hogmKTtmpM7mBLmGCkTfTRsL4weiKVIKb90NYriw__)

### Estrutura Interna
![Estrutura Interna](https://private-us-east-1.manuscdn.com/sessionFile/6vCNQOf4XoyQHejAwtFpsA/sandbox/fUvvaJLBb1NbmC5uZ33BL3-images_1756455202192_na1fn_L2hvbWUvdWJ1bnR1L3Byb2pldG9fZGFkb19lZHVjYWNpb25hbC9pbWFnZXMvZGlhZ3JhbWFfZXN0cnV0dXJhX2ludGVybmE.png?Policy=eyJTdGF0ZW1lbnQiOlt7IlJlc291cmNlIjoiaHR0cHM6Ly9wcml2YXRlLXVzLWVhc3QtMS5tYW51c2Nkbi5jb20vc2Vzc2lvbkZpbGUvNnZDTlFPZjRYb3lRSGVqQXd0RnBzQS9zYW5kYm94L2ZVdnZhSkxCYjFOYm1DNXVaMzNCTDMtaW1hZ2VzXzE3NTY0NTUyMDIxOTJfbmExZm5fTDJodmJXVXZkV0oxYm5SMUwzQnliMnBsZEc5ZlpHRmtiMTlsWkhWallXTnBiMjVoYkM5cGJXRm5aWE12WkdsaFozSmhiV0ZmWlhOMGNuVjBkWEpoWDJsdWRHVnlibUUucG5nIiwiQ29uZGl0aW9uIjp7IkRhdGVMZXNzVGhhbiI6eyJBV1M6RXBvY2hUaW1lIjoxNzk4NzYxNjAwfX19XX0_&Key-Pair-Id=K2HSFNDJXOU9YS&Signature=IljSq~K5rHKEYVJ4tJazk3pQBgmszi7F16iUBZBX2o3RmfIUh5sZvPfs-XXnPXfSJTG7OcufSaSD1osnn9DTzZemdTGbrzB-cHKEOxzMzrgEZIz1I2LVEEnUMApkZP5kO1-6SlDE0YBhl2o-sCJ6jeOF8I5OTlvtavxCLoS7bNZx3oOtGaKUuNLkGnysYkxD0ucDTyEkYXhrhyNsswAHvggI82q0Qhv56ICrkcWbZRItOZnnzDWo5KeYXDfkGmHyP8Nb7vrj1G16~asNf40mmRaNTMbcm2CJBks3gfZvUfvvVueUQeZkuHhdFs43f0ngeKVZLqcNV7DuZ2JCa7-TuQ__)

### Teste Qui-Quadrado
![Teste Chi-Square](https://private-us-east-1.manuscdn.com/sessionFile/6vCNQOf4XoyQHejAwtFpsA/sandbox/fUvvaJLBb1NbmC5uZ33BL3-images_1756455202193_na1fn_L2hvbWUvdWJ1bnR1L3Byb2pldG9fZGFkb19lZHVjYWNpb25hbC9pbWFnZXMvaWx1c3RyYWNhb190ZXN0ZV9jaGky.png?Policy=eyJTdGF0ZW1lbnQiOlt7IlJlc291cmNlIjoiaHR0cHM6Ly9wcml2YXRlLXVzLWVhc3QtMS5tYW51c2Nkbi5jb20vc2Vzc2lvbkZpbGUvNnZDTlFPZjRYb3lRSGVqQXd0RnBzQS9zYW5kYm94L2ZVdnZhSkxCYjFOYm1DNXVaMzNCTDMtaW1hZ2VzXzE3NTY0NTUyMDIxOTNfbmExZm5fTDJodmJXVXZkV0oxYm5SMUwzQnliMnBsZEc5ZlpHRmtiMTlsWkhWallXTnBiMjVoYkM5cGJXRm5aWE12YVd4MWMzUnlZV05oYjE5MFpYTjBaVjlqYUdreS5wbmciLCJDb25kaXRpb24iOnsiRGF0ZUxlc3NUaGFuIjp7IkFXUzpFcG9jaFRpbWUiOjE3OTg3NjE2MDB9fX1dfQ__&Key-Pair-Id=K2HSFNDJXOU9YS&Signature=ZWNIyX285FpXAlQK88kN5B6PhUDdh357iIT0MiGUkdqQpoJG1v4AgzElVQPPJg68BNeHi9LoAtvDtJ0ow3927Rbtj-ODdyvwRRfwvP9Sn-fbM3L0S1RqXQo1~9nYe13iFFACfFwrbiri3u8oXU7OLyan6owTjjndloMUMQvPmh8ELI95hnXgizscfN6IJt~sPrpFJOAiIXR~iuUsduMe84APhpm~vMVRc6eOnzpohcFRI73-I3QjsU4QfEHgsLMJFWkIRIAxLG7KVX2YLWM1s6e0mKcDeovOWcPPOL8524k-3XSPl5oDtpybWz-odM7SviSrp4y8ozbTUK5LQkWj-w__)

### Impressão 3D
![Impressão 3D](https://private-us-east-1.manuscdn.com/sessionFile/6vCNQOf4XoyQHejAwtFpsA/sandbox/fUvvaJLBb1NbmC5uZ33BL3-images_1756455202193_na1fn_L2hvbWUvdWJ1bnR1L3Byb2pldG9fZGFkb19lZHVjYWNpb25hbC9pbWFnZXMvaWx1c3RyYWNhb19pbXByZXNzYW9fM2Q.png?Policy=eyJTdGF0ZW1lbnQiOlt7IlJlc291cmNlIjoiaHR0cHM6Ly9wcml2YXRlLXVzLWVhc3QtMS5tYW51c2Nkbi5jb20vc2Vzc2lvbkZpbGUvNnZDTlFPZjRYb3lRSGVqQXd0RnBzQS9zYW5kYm94L2ZVdnZhSkxCYjFOYm1DNXVaMzNCTDMtaW1hZ2VzXzE3NTY0NTUyMDIxOTNfbmExZm5fTDJodmJXVXZkV0oxYm5SMUwzQnliMnBsZEc5ZlpHRmtiMTlsWkhWallXTnBiMjVoYkM5cGJXRm5aWE12YVd4MWMzUnlZV05oYjE5cGJYQnlaWE56WVc5Zk0yUS5wbmciLCJDb25kaXRpb24iOnsiRGF0ZUxlc3NUaGFuIjp7IkFXUzpFcG9jaFRpbWUiOjE3OTg3NjE2MDB9fX1dfQ__&Key-Pair-Id=K2HSFNDJXOU9YS&Signature=exJHdPOxKFQ4u~C1qvkjT1ADWd3LxBZBkuEGtYmI-X3a19wiRQ8Hu7UNOm47mvlPI9A1AoS4rF7oQQGFLeW7~dN8kyvmcHlUKsLoD3E8uAYEkDS8JMTyj~sN8EkuFnNwxBBUdaO47Sp58R1d8a0UoRLbJolqAOsxitb37e5Q64VdlcLKEEjXnIYA106CtwJ2wGrxO-TQXKOLxx6LEz9975AeaDAkWZw0vQyESPbKK~KsR7Dbu9yYG3~RJRftKYzDasGHyxhCoHz~PZMiw0aaygX2id7acVL-uDwRAfbMTwI6S2MO3aTfrIxYJZh0pzajG6EzVe5VUrRhduJoOeyH-w__)

## 🔬 Fundamentação Científica

### Propriedades do PETG

- **Resistência à tração:** 50-53 MPa
- **Módulo de elasticidade:** 14.53-19.06 GPa
- **Temperatura de transição vítrea:** ~80°C
- **Vantagens:** Alta durabilidade, resistência química, facilidade de impressão

### Padrão Gyroid

- **Características:** Superfície mínima triperiódica
- **Vantagens:** Distribuição uniforme de massa, resistência multidirecional
- **Aplicação:** Garante centro de massa coincidente com centro geométrico

### Teste Qui-Quadrado

- **Estatística:** χ² = Σ[(Observado - Esperado)²/Esperado]
- **Distribuição:** χ² ~ χ²(5) sob H₀
- **Poder:** Aumenta com o tamanho da amostra
- **Limitações:** Requer frequências esperadas ≥ 5

## 📚 Aplicações Educacionais

### Em Sala de Aula

1. **Conceitos de Probabilidade**
   - Equiprobabilidade
   - Lei dos Grandes Números
   - Convergência de frequências

2. **Inferência Estatística**
   - Teste de hipóteses
   - Distribuição qui-quadrado
   - P-valor e significância

3. **Tecnologia e Matemática**
   - Impressão 3D
   - Modelagem geométrica
   - Análise de dados

### Atividades Sugeridas

- **Coleta de dados:** Estudantes realizam lançamentos e registram resultados
- **Análise estatística:** Aplicação do teste qui-quadrado aos dados coletados
- **Comparação:** Diferentes métodos de lançamento (manual vs. automatizado)
- **Discussão:** Interpretação dos resultados e implicações práticas

## 🤝 Contribuições

Contribuições são bem-vindas! Por favor:

1. Faça um fork do projeto
2. Crie uma branch para sua feature (`git checkout -b feature/AmazingFeature`)
3. Commit suas mudanças (`git commit -m 'Add some AmazingFeature'`)
4. Push para a branch (`git push origin feature/AmazingFeature`)
5. Abra um Pull Request

## 📄 Licença

Este projeto está sob a licença MIT. Veja o arquivo `LICENSE` para mais detalhes.

## 📞 Contato

**Diogo Da Silva Rego**
- Instagram: [@estatisticacomjogos](https://www.instagram.com/estatisticacomjogos/)
- GitHub: [Diogorego20](https://github.com/Diogorego20)
- Projeto: [projetos_educacionais](https://github.com/Diogorego20/projetos_educacionais.git)

## 🙏 Agradecimentos

- Comunidade de impressão 3D pela doação do material
- Professores e estudantes que contribuíram com feedback
- Projeto educacional "Estatística com Jogos"

---

**⭐ Se este projeto foi útil para você, considere dar uma estrela no repositório!**

