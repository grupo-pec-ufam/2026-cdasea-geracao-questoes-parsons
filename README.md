# 2026-cdasea-geracao-questoes-parsons

Repositório do projeto de iniciação científica voltado à elaboração de **questões no formato Parsons** (Parsons Problems) para o **CodeBench**, com apoio de LLMs. Aqui ficam os prompts usados na geração, as questões produzidas e a documentação de boas práticas do grupo.

## Estrutura do repositório

```
2026-cdasea-geracao-questoes-parsons/
├── docs/
│   ├── boas_praticas/
│   │   ├── roteiro_parsons_codebench_consolidado.md
│   │   └── topicosCodeBench.md
│   └── prompts/
│       └── prompt_parsons_condicionais.md
├── questoes/
│   ├── gerado/
│   │   └── condicionais/
│   │       ├── XXX_encinciado.md
│   │       └── instrucoes_questoes_nao_processadas.md
│   └── processado/
│       └── condicionais/
│           ├── XXX_enunciado.md
│           └── instrucoes_questoes_processadas.md
└── README.md
```

- **`docs/boas_praticas/`** — guias e roteiros consolidados sobre como elaborar as questões e usar o CodeBench.
- **`docs/prompts/`** — prompts utilizados para gerar as questões com LLMs, organizados por tópico.
- **`questoes/gerado/`** — questões recém-geradas, ainda não revisadas. Cada tópico (ex.: `condicionais`) tem sua própria subpasta.
- **`questoes/processado/`** — questões já revisadas e prontas para uso. `000_modelo.md` é o modelo/template a ser seguido ao processar uma questão.

> As pastas de tópico atuais são `condicionais`; novos tópicos devem seguir o mesmo padrão dentro de `questoes/gerado/` e `questoes/processado/`.

## Como clonar o repositório

### Opção 1 — Pelo VS Code (recomendado para quem está começando)

1. Instalar o [VS Code](https://code.visualstudio.com/).
2. (Opcional, facilita o login) Instalar a extensão **GitHub Pull Requests and Issues** pela aba de Extensões (`Ctrl+Shift+X`).
3. Abrir a Paleta de Comandos (`Ctrl+Shift+P`) e escolher **"Git: Clone"**.
4. Selecionar **"Clone from GitHub"**, fazer login autorizando pelo navegador (só é pedido na primeira vez).
5. Escolher o repositório **`2026-cdasea-geracao-questoes-parsons`** na lista.
6. Escolher a pasta local onde salvar e clicar em **"Open"** quando terminar.

### Opção 2 — Pelo terminal

```bash
git clone https://github.com/grupo-pec-ufam/2026-cdasea-geracao-questoes-parsons
```

## Comandos básicos do dia a dia

| Comando | O que faz |
|---|---|
| `git pull` | Traz para o seu computador as atualizações que outras pessoas já enviaram. |
| `git status` | Mostra quais arquivos você alterou desde o último commit. |
| `git add .` | Prepara (stage) todas as alterações para entrarem no próximo commit. |
| `git commit -m "mensagem"` | Registra um commit local com uma mensagem descrevendo a mudança. |
| `git push` | Envia os commits locais para o GitHub. |

Pelo VS Code, os mesmos passos são feitos no painel **Source Control** (`Ctrl+Shift+G`): o botão **Pull/Sync** traz atualizações, o **+** ao lado do arquivo faz o stage, a caixa de texto + ✔ registra o commit, e o botão de nuvem envia (push).

## Fluxo recomendado ao editar uma questão

1. **Pull** — sempre trazer as atualizações antes de começar a editar.
2. Editar o arquivo `.md` correspondente (em `questoes/gerado/` ou `questoes/processado/`, conforme o caso).
3. Salvar o arquivo.
4. **Stage** das alterações.
5. **Commit** com uma mensagem curta e clara (ex.: `Adiciona questão 016 sobre laços condicionais`).
6. **Push** para enviar ao repositório.

## Boas práticas

- Commits pequenos e frequentes, com mensagens que expliquem *o que* mudou.
- Antes de editar um arquivo, avisar no grupo se outra pessoa também pode estar mexendo nele, para evitar conflitos.
- Seguir o padrão de nomenclatura já usado nas pastas (numeração + nome descritivo, como em `015_classificacao_hopper.md`) e usar `000_modelo.md` como referência ao processar novas questões.