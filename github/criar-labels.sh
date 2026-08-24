#!/usr/bin/env bash
#
# Cria os rótulos padronizados em um repositório do GitHub.
#
# Pré-requisitos:
#   - GitHub CLI instalado (https://cli.github.com)
#   - Autenticado: rode  gh auth login  uma vez
#
# Uso:
#   ./criar-labels.sh OWNER/REPOSITORIO
#   Ex.: ./criar-labels.sh meu-grupo/projeto-rag-exercicios
#
# O parâmetro --force atualiza o rótulo se ele já existir.

set -euo pipefail

REPO="${1:-}"
if [[ -z "$REPO" ]]; then
  echo "Uso: $0 OWNER/REPOSITORIO"
  exit 1
fi

criar() {
  local nome="$1" cor="$2" desc="$3"
  gh label create "$nome" --repo "$REPO" --color "$cor" --description "$desc" --force
}

# Tipo de tarefa
criar "tarefa"                "1d76db" "Tarefa geral do projeto"
criar "experimento"          "8250df" "Rodar/analisar um experimento"
criar "dados"                "0e8a16" "Coleta, limpeza ou tratamento de dados"
criar "leitura"              "5319e7" "Ler artigo, tomar notas, revisar literatura"
criar "escrita"              "fbca04" "Redacao de texto (relatorio, artigo, resumo)"
criar "codigo"               "006b75" "Desenvolvimento ou refatoracao de codigo"
criar "bug"                  "d73a4a" "Algo que nao esta funcionando"
criar "duvida"               "d876e3" "Pergunta a esclarecer"

# Prioridade
criar "prioridade: alta"     "b60205" "Fazer primeiro"
criar "prioridade: media"    "e99695" "Importante, sem urgencia"
criar "prioridade: baixa"    "f9d0c4" "Pode esperar"

# Situacao
criar "travado"              "000000" "Parado esperando algo externo"
criar "aguardando orientador" "666666" "Aguardando feedback ou decisao do orientador"
criar "em revisao"           "c5def5" "Concluido, aguardando revisao"

echo "Rotulos criados/atualizados em $REPO"
