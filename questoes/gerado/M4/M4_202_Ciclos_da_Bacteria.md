**Título:** M4 Ciclos da Bacteria

**Enunciado:**

Em um laboratório de biologia, uma bactéria se divide em duas a cada ciclo, e o biólogo anota o número de cada ciclo, começando em 1. O programa deve mostrar o número de cada ciclo, um por linha, em ordem crescente, de 1 até o total de ciclos informado.

Entrada:
1. total de ciclos observados (inteiro, maior que zero).

Saída:
1. números dos ciclos, um por linha (inteiro).

**Solução de referência:**

```python
ciclos = int(input("ciclos: "))
contador = 0
while contador < ciclos:
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
3
```
Saída:
```text
1
2
3
```

Entrada:
```text
5
```
Saída:
```text
1
2
3
4
5
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
7
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
```

Entrada:
```text
10
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
```
