# Kit inicial para gestão de projetos de pesquisa de alunos

Este kit reúne modelos e configurações para você organizar os artefatos dos alunos, tornar as tarefas visíveis aos bolsistas e acompanhar a execução dos projetos de iniciação científica. Tudo foi pensado para o fluxo GitHub (repositório + Projects), com hábitos leves de trabalho por cima.

## O que tem aqui

```
kit-inicial-pesquisa/
├── README-do-kit.md          <- este arquivo
├── template-projeto/         <- copie esta pasta para cada novo projeto
│   ├── README.md                 modelo de descrição do projeto
│   ├── .gitignore                ignora dados e segredos
│   ├── FLUXO-DE-TRABALHO.md       como trabalhamos (Kanban + cadência)
│   ├── data/
│   │   └── README.md             organização dos dados + privacidade/ética
│   ├── scripts/
│   ├── notebooks/
│   ├── docs/
│   │   ├── logbook.md            diário de pesquisa
│   │   ├── atualizacao-semanal-modelo.md
│   │   └── reunioes/
│   │       └── MODELO-ata.md
│   └── results/
│       ├── figures/
│       └── tables/
└── github/
    ├── labels.md             rótulos padronizados (tabela legível)
    ├── criar-labels.sh       script para criar os rótulos via GitHub CLI
    └── quadro-kanban.md      como montar o quadro no GitHub Projects
```

## Passo a passo para começar (com um projeto piloto)

1. **Crie a organização** do grupo no GitHub e peça a conta educacional (GitHub Education).
2. **Crie um repositório** para o primeiro projeto e copie para dentro dele todo o conteúdo de `template-projeto/`.
3. **Preencha o `README.md`** do projeto (campos entre `{{ }}`).
4. **Crie os rótulos** com `github/criar-labels.sh OWNER/REPO` (ou manualmente, ver `github/labels.md`).
5. **Monte o quadro** no GitHub Projects seguindo `github/quadro-kanban.md`.
6. **Cadastre as primeiras tarefas** como issues e distribua entre os bolsistas.
7. **Rode a cadência semanal** por duas ou três semanas antes de replicar para os outros projetos.

## Filosofia em uma frase

Um único hub como fonte de verdade, tarefas visíveis como issues em um quadro, e um diário de pesquisa honesto por aluno. O resto é consequência.

## Complementos (adote quando o básico estiver rodando)

- **DVC** para versionar dados e modelos sem inchar o Git.
- **Zotero** (biblioteca de grupo) para a bibliografia compartilhada, útil sobretudo nas revisões sistemáticas.
- **Overleaf** sincronizado com o GitHub para os manuscritos em LaTeX.
