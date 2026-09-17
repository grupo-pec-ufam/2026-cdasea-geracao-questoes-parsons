
**1. Título:** `M3A Desafio do Martelo de Thor`

**2. Enunciado:**

Em uma lenda nórdica, um martelo mágico só pode ser erguido por quem tiver força suficiente para movê-lo. Mesmo assim, o encantamento do martelo também avalia se quem o ergue é considerado digno.

Escreva um programa que leia a força do desafiante, o peso do martelo e se o desafiante é considerado digno, e informe o resultado da tentativa.

1. Se a força for maior ou igual ao peso do martelo e o desafiante for digno, imprima `Guerreiro ergue o martelo.`.
2. Se a força for suficiente, mas o desafiante não for digno, imprima `Guerreiro não é digno.`.
3. Se a força não for suficiente, imprima `Martelo não se move.`.


**Entrada:**

1. Força do desafiante.
2. Peso do martelo.
3. Valor inteiro que indica se o desafiante é digno (`1` para sim e `0` para não).

**Saída:**

1. Resultado do desafio.

**3. Solução de referência:**

```python
forca = int(input("Força: "))
peso_martelo = int(input("Peso martelo: "))
digno = int(input("Digno: "))
if forca >= peso_martelo:
    if digno == 1:
        print("Guerreiro ergue o martelo.")
    else:
        print("Guerreiro não é digno.")
else:
    print("Martelo não se move.")
```

**4. Casos de teste:**

**Públicos:**

Entrada:

```text
10
10
1
```

Saída:

```text
Guerreiro ergue o martelo.
```

Entrada:

```text
10
10
0
```

Saída:

```text
Guerreiro não é digno.
```

Entrada:

```text
9
10
1
```

Saída:

```text
Martelo não se move.
```

**Privados:**

Entrada:

```text
1
100
1
```

Saída:

```text
Martelo não se move.
```

Entrada:

```text
50
10
1
```

Saída:

```text
Guerreiro ergue o martelo.
```

Entrada:

```text
50
10
0
```

Saída:

```text
Guerreiro não é digno.
```

