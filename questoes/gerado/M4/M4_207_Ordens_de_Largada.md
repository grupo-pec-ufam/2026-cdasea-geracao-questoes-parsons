**Título:** M4 Ordens de Largada

**Enunciado:**

Em uma corrida de Fórmula 1, os pilotos podem largar em várias ordens diferentes. Com n pilotos, o número de ordens possíveis é o fatorial de n, isto é, o produto de todos os números inteiros de 1 até n (o fatorial de 0 vale 1). O programa deve mostrar quantas ordens de largada existem.

Fórmula: `fatorial = 1 * 2 * 3 * ... * n`

Entrada:
1. quantidade de pilotos (inteiro, de 0 a 12).

Saída:
1. quantidade de ordens de largada possíveis (inteiro).

**Solução de referência:**

```python
pilotos = int(input("pilotos: "))
fatorial = 1
i = 1
while i <= pilotos:
    fatorial = fatorial * i
    i = i + 1
print(fatorial)
```

**Casos de teste públicos:**

Entrada:
```text
1
```
Saída:
```text
1
```

Entrada:
```text
5
```
Saída:
```text
120
```

Entrada:
```text
6
```
Saída:
```text
720
```

**Casos de teste privados:**

Entrada:
```text
10
```
Saída:
```text
3628800
```

Entrada:
```text
0
```
Saída:
```text
1
```

Entrada:
```text
8
```
Saída:
```text
40320
```
