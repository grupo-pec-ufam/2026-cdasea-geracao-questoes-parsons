
**1. Título:** `M3A Duelo de Cartas Lendárias`

**2. Enunciado:**

Em um torneio de duelos de cartas colecionáveis, um duelista enfrenta um adversário cujo ataque pode encerrar a partida de imediato. Caso o duelista resista, ele ainda precisa de cristais de energia suficientes para invocar a carta lendária que sela a vitória.

Escreva um programa que leia os pontos de vida do duelista, o dano do ataque do adversário, os cristais de energia disponíveis e o custo da carta lendária, e informe o resultado do duelo.

O programa deve primeiro verificar se o dano do ataque é suficiente para eliminar o duelista. Caso ele resista, deve verificar se possui cristais suficientes para invocar a carta lendária.

**Entrada:**

1. Pontos de vida do duelista.
2. Dano do ataque do adversário.
3. Cristais de energia disponíveis.
4. Custo da carta lendária.

**Saída:**

1. Se o dano do ataque for maior ou igual aos pontos de vida do duelista, imprima `Duelista eliminado do torneio.`.
2. Se o duelista resistir e os cristais forem suficientes para a carta lendária, imprima `Duelista invoca carta lendária.`.
3. Se o duelista resistir, mas os cristais não forem suficientes, imprima `Duelista resiste sem cristais.`.

**3. Solução de referência:**

```python
pontos_vida = int(input("Pontos vida: "))

dano_ataque = int(input("Dano ataque: "))

cristais = int(input("Cristais: "))

custo_carta = int(input("Custo carta: "))

if dano_ataque >= pontos_vida:

    print("Duelista eliminado do torneio.")

else:

    if cristais >= custo_carta:

        print("Duelista invoca carta lendária.")

    else:

        print("Duelista resiste sem cristais.")
```

**4. Casos de teste:**

**Públicos:**

Entrada:

```text
100
99
10
10
```

Saída:

```text
Duelista invoca carta lendária.
```

Entrada:

```text
100
99
5
10
```

Saída:

```text
Duelista resiste sem cristais.
```

Entrada:

```text
100
100
5
10
```

Saída:

```text
Duelista eliminado do torneio.
```

**Privados:**

Entrada:

```text
100
150
5
10
```

Saída:

```text
Duelista eliminado do torneio.
```

Entrada:

```text
100
98
20
20
```

Saída:

```text
Duelista invoca carta lendária.
```

Entrada:

```text
100
98
9
10
```

Saída:

```text
Duelista resiste sem cristais.
```
