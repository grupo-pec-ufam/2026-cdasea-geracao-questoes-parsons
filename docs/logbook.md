# Diário de pesquisa (logbook)

Registre aqui, em ordem cronológica (mais recente no topo), o que você fez, o que decidiu e o que descobriu. Inclua os becos sem saída: saber o que **não** funcionou é tão valioso quanto o que funcionou. Cada entrada leva uma data.

Formato de cada entrada:

```
## AAAA-MM-DD

**O que fiz:**
-

**Decisões e por quê:**
-

**O que não funcionou (e o que aprendi):**
-

**Dúvidas / próximos passos:**
-
```

---

## 2026-01-15  (exemplo, pode apagar)

**O que fiz:**
- Extraí os logs de submissão de três turmas e montei um script inicial de limpeza em `scripts/01_limpeza.py`.

**Decisões e por quê:**
- Optei por descartar submissões com timestamp nulo (cerca de 2% dos registros) porque não dá para reconstruir a ordem das tentativas sem o horário. Documentado no cabeçalho do script.

**O que não funcionou (e o que aprendi):**
- Tentei carregar o arquivo inteiro em memória com pandas e estourou. Passei a ler em blocos (chunksize). Lição: sempre checar o tamanho do arquivo antes de carregar.

**Dúvidas / próximos passos:**
- Confirmar com o orientador se submissões duplicadas no mesmo segundo contam como uma tentativa ou duas.
