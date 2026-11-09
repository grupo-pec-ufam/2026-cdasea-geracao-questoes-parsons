**Título:** M4 Coletas no Igarape

**Enunciado:**

Uma bióloga coleta água em um igarapé a cada certo número de dias, durante um período de observação. Os dias são numerados de 1 até o total de dias observados, e há coleta nos dias cujo número é múltiplo do intervalo escolhido (um número é múltiplo do intervalo quando a divisão dele pelo intervalo tem resto zero). O programa deve mostrar quantas coletas serão feitas.

Entrada:
1. total de dias observados (inteiro, maior que zero).
2. intervalo entre coletas, em dias (inteiro, maior que zero).

Saída:
1. quantidade de coletas (inteiro).

**Solução de referência:**

```python
dias = int(input("dias: "))
intervalo = int(input("intervalo: "))
coletas = 0
i = 1
while i <= dias:
    if i % intervalo == 0:
        coletas = coletas + 1
    i = i + 1
print(coletas)
```

**Casos de teste públicos:**

Entrada:
```text
30
7
```
Saída:
```text
4
```

Entrada:
```text
28
7
```
Saída:
```text
4
```

Entrada:
```text
6
7
```
Saída:
```text
0
```

**Casos de teste privados:**

Entrada:
```text
365
7
```
Saída:
```text
52
```

Entrada:
```text
90
15
```
Saída:
```text
6
```

Entrada:
```text
10
1
```
Saída:
```text
10
```
