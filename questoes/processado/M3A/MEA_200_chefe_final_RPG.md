**1. Título:** `Chefe Final do RPG`

**2. Enunciado:**

Em uma batalha contra o chefe final de um jogo de RPG, um herói recebe um ataque poderoso e, caso sobreviva, ainda precisa de energia mágica suficiente para desferir o golpe especial que decide o combate.

Escreva um programa que leia a vida do herói, o dano do ataque do chefe, a mana disponível e o custo do golpe especial, e informe o resultado do confronto.

A vida restante do herói após o ataque é calculada por:

`vida_restante = vida - dano`

O programa deve primeiro verificar se o herói sobreviveu ao ataque. Caso tenha sobrevivido, deve verificar se possui mana suficiente para realizar o golpe especial.

1. Se a vida restante for maior que zero e a mana for suficiente para o golpe especial, imprima `Vitória com golpe especial.`.
2. Se a vida restante for maior que zero, mas a mana não for suficiente, imprima `Sobrevivência sem mana suficiente.`.
3. Se a vida restante não for maior que zero, imprima `Jogador derrotado.`.

**Entrada:**

1. Vida do herói antes do ataque.
2. Dano causado pelo ataque do chefe.
3. Mana disponível do herói.
4. Custo de mana do golpe especial.

**Saída:**

1. Situação do jogador.


**3. Solução de referência:**

```python
vida = int(input("Vida: "))

dano = int(input("Dano chefe: "))

mana = int(input("Mana: "))

custo = int(input("Custo golpe: "))

vida_restante = vida - dano

if vida_restante > 0:

    if mana >= custo:

        print("Vitória com golpe especial.")

    else:

        print("Sobrevivência sem mana suficiente.")

else:

    print("Jogador derrotado.")
```

**4. Casos de teste:**

**Públicos:**

Entrada:

```text
50
30
10
10
```

Saída:

```text
Vitória com golpe especial.
```

Entrada:

```text
50
30
5
10
```

Saída:

```text
Sobrevivência sem mana suficiente.
```

Entrada:

```text
30
30
5
10
```

Saída:

```text
Jogador derrotado.
```

**Privados:**

Entrada:

```text
20
50
100
1
```

Saída:

```text
Jogador derrotado.
```

Entrada:

```text
31
30
20
20
```

Saída:

```text
Vitória com golpe especial.
```

Entrada:

```text
100
10
9
10
```

Saída:

```text
Sobrevivência sem mana suficiente.
```

