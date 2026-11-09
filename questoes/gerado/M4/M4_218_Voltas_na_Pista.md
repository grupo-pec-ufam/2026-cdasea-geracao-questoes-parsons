**Título:** M4 Voltas na Pista

**Enunciado:**

Uma corredora treina na pista da UFAM e anota o número de cada volta completada, começando em 1. O programa deve mostrar o número de cada volta, uma por linha, de 1 até o total de voltas do treino.

Entrada:
1. total de voltas do treino (inteiro, maior que zero).

Saída:
1. números das voltas, um por linha (inteiro).

**Solução de referência:**

```python
voltas = int(input("voltas: "))
contador = 0
while contador < voltas:
    contador = contador + 1
    print(contador)
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
4
```
Saída:
```text
1
2
3
4
```

Entrada:
```text
6
```
Saída:
```text
1
2
3
4
5
6
```

**Casos de teste privados:**

Entrada:
```text
2
```
Saída:
```text
1
2
```

Entrada:
```text
9
```
Saída:
```text
1
2
3
4
5
6
7
8
9
```

Entrada:
```text
12
```
Saída:
```text
1
2
3
4
5
6
7
8
9
10
11
12
```
