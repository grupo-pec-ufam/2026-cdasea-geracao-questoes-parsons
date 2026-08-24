# {{TÍTULO DO PROJETO}}

> Substitua todos os campos entre `{{ }}` e apague esta linha e as instruções em itálico antes de publicar.

**Aluno(a):** {{Nome do bolsista}}
**Orientador:** Leandro Silva Galvão de Carvalho (IComp/UFAM)
**Modalidade:** {{PIBIC / PIBITI / TCC / voluntário}}
**Período:** {{mês/ano de início}} a {{mês/ano de término}}
**Status:** {{planejamento / em andamento / redação / concluído}}

## Resumo

*Uma parágrafo curto descrevendo o problema e o objetivo geral. Escreva para alguém de fora do projeto entender em trinta segundos.*

{{Resumo aqui.}}

## Pergunta(s) de pesquisa

- **PP1:** {{...}}
- **PP2:** {{...}}

## Objetivos

- **Geral:** {{...}}
- **Específicos:**
  - {{...}}
  - {{...}}

## Estrutura do repositório

```
.
├── data/            Dados do projeto (ver data/README.md antes de commitar nada)
│   ├── raw/         Dados brutos, nunca editados à mão
│   └── processed/   Dados tratados, gerados por scripts
├── scripts/         Scripts de coleta, tratamento e análise
├── notebooks/       Notebooks exploratórios (numerados: 01-..., 02-...)
├── docs/            Documentação, diário de pesquisa e atas de reunião
│   ├── logbook.md              Diário de pesquisa (atualização contínua)
│   ├── atualizacao-semanal-modelo.md
│   └── reunioes/               Uma ata por reunião (AAAA-MM-DD.md)
├── results/         Saídas finais
│   ├── figures/     Figuras para o artigo
│   └── tables/      Tabelas para o artigo
└── README.md        Este arquivo
```

## Como reproduzir

*Descreva como preparar o ambiente e rodar o projeto do zero.*

```bash
# Exemplo (ajuste ao seu projeto)
python -m venv .venv
source .venv/bin/activate      # Linux/Mac
# .venv\Scripts\activate       # Windows
pip install -r requirements.txt
```

Passos principais:

1. {{Rodar `scripts/01_coleta.py` para ...}}
2. {{Rodar `scripts/02_analise.py` para ...}}

## Dados

*Resuma a origem dos dados, o volume e restrições de uso. Detalhes em `data/README.md`.*

{{Ex.: logs de interação do CodeBench referentes a ... / microdados do Censo da Educação Superior (INEP), anos 2013 a 2024.}}

## Produtos esperados

- [ ] {{Relatório parcial PIBIC}}
- [ ] {{Resumo/artigo para ...}}
- [ ] {{Apresentação no Congresso de IC}}

## Referências principais

*A bibliografia completa fica na biblioteca de grupo do Zotero. Liste aqui só as três ou quatro obras centrais.*

- {{Autor (ano). Título.}}
