**Título:** M2 Ano de Jogos

**Enunciado:**

Os Jogos Olímpicos de Verão acontecem de 4 em 4 anos, sempre em anos divisíveis por 4 (como 2024 e 2028). O programa deve informar TEMJOGOS se o ano lido for divisível por 4, e SEMJOGOS caso contrário.

Entrada:
1. ano a ser consultado (inteiro).

Saída:
1. informação sobre a realização dos Jogos no ano.

**Solução de referência:**

```python
ano = int(input("ano: "))
if ano % 4 == 0:
    print("TEMJOGOS")
else:
    print("SEMJOGOS")
```

**Casos de teste públicos:**

Entrada:
```text
2024
```
Saída:
```text
TEMJOGOS
```

Entrada:
```text
2025
```
Saída:
```text
SEMJOGOS
```

Entrada:
```text
2028
```
Saída:
```text
TEMJOGOS
```

**Casos de teste privados:**

Entrada:
```text
2026
```
Saída:
```text
SEMJOGOS
```

Entrada:
```text
2000
```
Saída:
```text
TEMJOGOS
```

Entrada:
```text
2030
```
Saída:
```text
SEMJOGOS
```
