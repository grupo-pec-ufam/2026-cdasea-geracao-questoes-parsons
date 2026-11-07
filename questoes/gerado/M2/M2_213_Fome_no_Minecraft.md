**Título:** M2 Fome no Minecraft

**Enunciado:**

No Minecraft, a barra de fome do jogador vai de 0 a 20. Quando ela chega a 6 ou menos, o jogador não consegue mais correr. O programa deve mostrar COMER somente se o nível de fome for 6 ou menos. Em qualquer caso, o programa deve mostrar também o nível de fome lido.

Entrada:
1. nível atual da barra de fome (inteiro, entre 0 e 20).

Saída:
1. aviso para o jogador comer, mostrado apenas quando necessário.
2. nível atual da barra de fome (inteiro).

**Solução de referência:**

```python
fome = int(input("fome: "))
if fome <= 6:
    print("COMER")
print(fome)
```

**Casos de teste públicos:**

Entrada:
```text
6
```
Saída:
```text
COMER
6
```

Entrada:
```text
7
```
Saída:
```text
7
```

Entrada:
```text
0
```
Saída:
```text
COMER
0
```

**Casos de teste privados:**

Entrada:
```text
20
```
Saída:
```text
20
```

Entrada:
```text
3
```
Saída:
```text
COMER
3
```

Entrada:
```text
15
```
Saída:
```text
15
```
