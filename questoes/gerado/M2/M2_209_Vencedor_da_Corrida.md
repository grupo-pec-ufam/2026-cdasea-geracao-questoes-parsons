**Título:** M2 Vencedor da Corrida

**Enunciado:**

No campeonato de Mario Kart, ganha a taça o piloto que somou mais pontos. O programa deve mostrar o nome do piloto que tem mais pontos. Os pontos dos dois pilotos nunca são iguais.

Entrada:
1. nome do primeiro piloto, em uma só palavra (string).
2. pontos do primeiro piloto (inteiro).
3. nome do segundo piloto, em uma só palavra (string).
4. pontos do segundo piloto (inteiro).

Saída:
1. nome do piloto com mais pontos.

**Solução de referência:**

```python
piloto1 = input("piloto 1: ")
pontos1 = int(input("pontos 1: "))
piloto2 = input("piloto 2: ")
pontos2 = int(input("pontos 2: "))
if pontos1 > pontos2:
    print(piloto1)
else:
    print(piloto2)
```

**Casos de teste públicos:**

Entrada:
```text
Mario
80
Luigi
75
```
Saída:
```text
Mario
```

Entrada:
```text
Peach
60
Bowser
90
```
Saída:
```text
Bowser
```

Entrada:
```text
Toad
51
Yoshi
50
```
Saída:
```text
Toad
```

**Casos de teste privados:**

Entrada:
```text
Toad
50
Yoshi
51
```
Saída:
```text
Yoshi
```

Entrada:
```text
Daisy
120
Wario
99
```
Saída:
```text
Daisy
```

Entrada:
```text
Rosalina
33
Koopa
34
```
Saída:
```text
Koopa
```
