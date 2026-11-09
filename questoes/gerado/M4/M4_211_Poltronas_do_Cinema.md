**Título:** M4 Poltronas do Cinema

**Enunciado:**

Em um cinema, as poltronas são numeradas de 1 até o total de poltronas da sala. As poltronas com número maior que um número de corte ficam na área do fundo da sala. O programa deve mostrar quantas poltronas ficam na área do fundo.

Entrada:
1. total de poltronas da sala (inteiro, maior que zero).
2. número de corte (inteiro, zero ou mais).

Saída:
1. quantidade de poltronas na área do fundo (inteiro).

**Solução de referência:**

```python
limite = int(input("limite: "))
corte = int(input("corte: "))
contador = 0
i = 1
while i <= limite:
    if i > corte:
        contador = contador + 1
    i = i + 1
print(contador)
```

**Casos de teste públicos:**

Entrada:
```text
50
30
```
Saída:
```text
20
```

Entrada:
```text
10
10
```
Saída:
```text
0
```

Entrada:
```text
10
0
```
Saída:
```text
10
```

**Casos de teste privados:**

Entrada:
```text
100
75
```
Saída:
```text
25
```

Entrada:
```text
20
19
```
Saída:
```text
1
```

Entrada:
```text
30
5
```
Saída:
```text
25
```
