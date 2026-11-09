**Título:** M4 Placar do Pac-Man

**Enunciado:**

No Pac-Man, o placar pode chegar a números muito grandes. O programa deve contar quantos algarismos tem o placar informado (por exemplo, 250 tem 3 algarismos).

Entrada:
1. placar do jogador (inteiro, maior que zero).

Saída:
1. quantidade de algarismos do placar (inteiro).

**Solução de referência:**

```python
placar = int(input("placar: "))
quantidade = 0
while placar > 0:
    placar = placar // 10
    quantidade = quantidade + 1
print(quantidade)
```

**Casos de teste públicos:**

Entrada:
```text
5
```
Saída:
```text
1
```

Entrada:
```text
10
```
Saída:
```text
2
```

Entrada:
```text
999
```
Saída:
```text
3
```

**Casos de teste privados:**

Entrada:
```text
100000
```
Saída:
```text
6
```

Entrada:
```text
12345
```
Saída:
```text
5
```

Entrada:
```text
7
```
Saída:
```text
1
```
