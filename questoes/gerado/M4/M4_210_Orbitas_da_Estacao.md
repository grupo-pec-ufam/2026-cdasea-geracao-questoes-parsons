**Título:** M4 Orbitas da Estacao

**Enunciado:**

Uma estação espacial dá voltas ao redor da Terra, e a cada volta completa o controle da missão anota o número da órbita, começando em 1. O programa deve mostrar o número de cada órbita, uma por linha, de 1 até o total de órbitas informado.

Entrada:
1. total de órbitas completadas (inteiro, maior que zero).

Saída:
1. números das órbitas, um por linha (inteiro).

**Solução de referência:**

```python
orbitas = int(input("orbitas: "))
contador = 0
while contador < orbitas:
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
