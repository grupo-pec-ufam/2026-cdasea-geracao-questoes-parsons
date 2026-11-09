**Título:** M3E Acesso ao Laboratorio

**Enunciado:**

No laboratório de química da UFAM, só entra quem estiver com crachá e usando o equipamento de proteção (EPI). O programa deve informar LIBERADO se a pessoa tiver crachá e estiver usando o EPI, SEMCRACHA se ela não tiver crachá (esteja ou não com o EPI), e SEMEPI se ela tiver crachá mas não estiver usando o EPI.

Entrada:
1. situação do crachá (inteiro; 1 significa que tem crachá e qualquer outro valor significa que não tem).
2. situação do EPI (inteiro; 1 significa que está usando e qualquer outro valor significa que não está).

Saída:
1. situação do acesso ao laboratório.

**Solução de referência:**

```python
cracha = int(input("cracha: "))
epi = int(input("epi: "))
if cracha == 1 and epi == 1:
    print("LIBERADO")
elif not (cracha == 1):
    print("SEMCRACHA")
else:
    print("SEMEPI")
```

**Casos de teste públicos:**

Entrada:
```text
1
1
```
Saída:
```text
LIBERADO
```

Entrada:
```text
1
0
```
Saída:
```text
SEMEPI
```

Entrada:
```text
0
1
```
Saída:
```text
SEMCRACHA
```

**Casos de teste privados:**

Entrada:
```text
0
0
```
Saída:
```text
SEMCRACHA
```

Entrada:
```text
2
1
```
Saída:
```text
SEMCRACHA
```

Entrada:
```text
1
5
```
Saída:
```text
SEMEPI
```
