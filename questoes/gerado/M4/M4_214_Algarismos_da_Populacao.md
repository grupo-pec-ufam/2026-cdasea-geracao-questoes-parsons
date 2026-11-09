**Título:** M4 Algarismos da Populacao

**Enunciado:**

Um instituto de pesquisa precisa saber quantos algarismos tem o número de habitantes de uma cidade (por exemplo, 1500 tem 4 algarismos). O programa deve mostrar essa quantidade.

Entrada:
1. número de habitantes da cidade (inteiro, maior que zero).

Saída:
1. quantidade de algarismos do número de habitantes (inteiro).

**Solução de referência:**

```python
habitantes = int(input("habitantes: "))
algarismos = 0
while habitantes > 0:
    habitantes = habitantes // 10
    algarismos = algarismos + 1
print(algarismos)
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
42
```
Saída:
```text
2
```

Entrada:
```text
1000
```
Saída:
```text
4
```

**Casos de teste privados:**

Entrada:
```text
2063689
```
Saída:
```text
7
```

Entrada:
```text
99999
```
Saída:
```text
5
```

Entrada:
```text
8
```
Saída:
```text
1
```
