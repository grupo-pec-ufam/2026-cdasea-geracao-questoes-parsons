**Título:** M1 Troca de Posicao

**Enunciado:**

Em uma mesa de jogo de tabuleiro, dois personagens da mitologia ou dos games ocupam a primeira e a segunda posição. Antes de começar a partida, os dois decidem trocar de lugar entre si. O programa deve mostrar quem ficou na primeira posição e, depois, quem ficou na segunda posição, após a troca.

Entrada:
1. nome do personagem que está na primeira posição (string).
2. nome do personagem que está na segunda posição (string).

Saída:
1. nome do personagem que ficou na primeira posição após a troca.
2. nome do personagem que ficou na segunda posição após a troca.

**Solução de referência:**

```python
jogador1 = input("jogador 1: ")
jogador2 = input("jogador 2: ")
auxiliar = jogador1
jogador1 = jogador2
jogador2 = auxiliar
print(jogador1)
print(jogador2)
```

**Casos de teste públicos:**

Entrada:
```text
Thor
Loki
```
Saída:
```text
Loki
Thor
```

Entrada:
```text
Zeus
Hades
```
Saída:
```text
Hades
Zeus
```

Entrada:
```text
Anubis
Ra
```
Saída:
```text
Ra
Anubis
```

**Casos de teste privados:**

Entrada:
```text
Sonic
Tails
```
Saída:
```text
Tails
Sonic
```

Entrada:
```text
Mario
Luigi
```
Saída:
```text
Luigi
Mario
```

Entrada:
```text
Odin
Freya
```
Saída:
```text
Freya
Odin
```
