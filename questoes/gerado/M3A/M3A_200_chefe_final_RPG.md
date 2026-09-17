
### 1. Chefe Final do RPG

**Enunciado:**

Em uma batalha contra o chefe final de um jogo de RPG, um herói recebe um ataque poderoso e, caso sobreviva, ainda precisa de energia mágica suficiente para desferir o golpe especial que decide o combate.

Escreva um programa que leia a vida do herói, o dano do ataque do chefe, a mana disponível e o custo do golpe especial, e informe o resultado do confronto.

A vida restante do herói após o ataque é dada por \( vidaRestante = vida - dano \).

**Entrada 1:** a vida do herói antes do ataque.
**Entrada 2:** o dano causado pelo ataque do chefe.
**Entrada 3:** a mana disponível do herói.
**Entrada 4:** o custo de mana do golpe especial.

**Saída:** se a vida restante for maior que zero e a mana for suficiente para o golpe especial, imprima `Vitória com golpe especial.`; se a vida restante for maior que zero mas a mana não for suficiente, imprima `Sobrevivência sem mana suficiente.`; se a vida restante não for maior que zero, imprima `Jogador derrotado.`

Tópico: Condicional aninhada (if dentro de if).

**Solução de referência:**

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

**Casos de teste:**

Públicos:

1. Ramo verdadeiro/verdadeiro, borda `mana == custo`
Entrada:
```
50
30
10
10
```
Saída:
```
Vitória com golpe especial.
```

2. Ramo verdadeiro/falso (mana insuficiente)
Entrada:
```
50
30
5
10
```
Saída:
```
Sobrevivência sem mana suficiente.
```

3. Ramo falso, borda `vidaRestante == 0`
Entrada:
```
30
30
5
10
```
Saída:
```
Jogador derrotado.
```

Privados:

4. Ramo falso, vida restante negativa
Entrada:
```
20
50
100
1
```
Saída:
```
Jogador derrotado.
```

5. Ramo verdadeiro, borda `vidaRestante == 1`, mana suficiente
Entrada:
```
31
30
20
20
```
Saída:
```
Vitória com golpe especial.
```

6. Ramo verdadeiro, mana insuficiente, borda `mana == custo - 1`
Entrada:
```
100
10
9
10
```
Saída:
```
Sobrevivência sem mana suficiente.
```
