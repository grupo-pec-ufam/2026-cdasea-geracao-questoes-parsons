# Como trabalhamos neste projeto

Este documento explica o processo de trabalho. Leia uma vez no início e volte a ele quando tiver dúvida sobre "onde registro isso".

## 1. Tarefas viram issues

Toda tarefa é uma **issue** no GitHub, não uma mensagem solta no WhatsApp nem um item na sua cabeça. Uma issue bem escrita tem:

- um título curto que começa com um verbo (ex.: "Implementar extração de logs do CodeBench");
- uma descrição com o que precisa ser feito e como saberemos que terminou;
- um rótulo (label) indicando o tipo (ver `github/labels.md`);
- um responsável (assignee) e, quando fizer sentido, um prazo.

## 2. O quadro Kanban mostra o andamento

As issues aparecem no **quadro do projeto** (GitHub Projects), organizadas em colunas:

| Coluna         | Significado                                              |
|----------------|---------------------------------------------------------|
| Backlog        | Ideias e tarefas futuras, ainda não priorizadas         |
| Esta semana    | O que foi combinado para a semana atual                 |
| Em andamento   | O que você está fazendo agora (idealmente 1 ou 2 itens) |
| Travado        | Parado esperando algo (dado, resposta, decisão)         |
| Em revisão     | Feito, aguardando o orientador olhar                     |
| Concluído      | Encerrado                                                |

Regra simples: mova o cartão assim que o estado mudar. O quadro só é útil se refletir a realidade.

## 3. Cadência semanal

- **Reunião de grupo (semanal, curta):** cada um fala o que fez, o que travou e o que fará.
- **Atualização escrita (assíncrona, antes da reunião):** preencha o modelo em `docs/atualizacao-semanal-modelo.md` e cole como comentário na issue principal da semana ou no canal combinado. Isso deixa a reunião mais rápida e cria um registro.

## 4. Diário de pesquisa (logbook)

Registre em `docs/logbook.md` as decisões, os caminhos que não deram certo e o porquê. Não precisa ser bonito, precisa ser honesto e datado. É o que salva a reprodutibilidade e vira matéria-prima para a metodologia do artigo depois.

## 5. Código e dados

- Código, scripts e notebooks vão para o repositório.
- Dados brutos e arquivos grandes **não** vão para o Git (ver `.gitignore` e `data/README.md`).
- Commits pequenos e frequentes, com mensagem no imperativo ("Adiciona limpeza de outliers"), são melhores do que um commit gigante no fim da semana.

## 6. "Travado" não é vergonha

Se algo travou por mais de um ou dois dias, mova o cartão para **Travado** e escreva na issue o que está faltando. Travar em silêncio é o que atrasa projetos; travar de forma visível é o que permite eu ajudar.
