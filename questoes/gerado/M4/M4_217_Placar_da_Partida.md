**Título:** M4 Placar da Partida

**Enunciado:**

Um árbitro de vôlei de praia usa um programa para marcar os pontos do time A. A cada rodada, o programa mostra um menu com duas opções (1 MARCAR PONTO e 2 ENCERRAR) e lê a opção escolhida. Com a opção 1, mais um ponto é contado. Qualquer opção diferente de 1 e de 2 é ignorada, e o menu é mostrado de novo. Com a opção 2, o programa termina e mostra a palavra PONTOS, seguida de um espaço e do total de pontos marcados.

Entrada:
1. opções digitadas, uma por vez, até que a opção 2 seja digitada (string).

Saída:
1. linhas do menu, mostradas antes de cada leitura de opção.
2. total de pontos marcados (inteiro).

**Solução de referência:**

```python
opcao = ""
pontos = 0
while opcao != "2":
    print("1 MARCAR PONTO")
    print("2 ENCERRAR")
    opcao = input("opcao: ")
    if opcao == "1":
        pontos = pontos + 1
print("PONTOS", pontos)
```

**Casos de teste públicos:**

Entrada:
```text
2
```
Saída:
```text
1 MARCAR PONTO
2 ENCERRAR
PONTOS 0
```

Entrada:
```text
1
1
2
```
Saída:
```text
1 MARCAR PONTO
2 ENCERRAR
1 MARCAR PONTO
2 ENCERRAR
1 MARCAR PONTO
2 ENCERRAR
PONTOS 2
```

Entrada:
```text
3
1
2
```
Saída:
```text
1 MARCAR PONTO
2 ENCERRAR
1 MARCAR PONTO
2 ENCERRAR
1 MARCAR PONTO
2 ENCERRAR
PONTOS 1
```

**Casos de teste privados:**

Entrada:
```text
1
1
1
1
1
2
```
Saída:
```text
1 MARCAR PONTO
2 ENCERRAR
1 MARCAR PONTO
2 ENCERRAR
1 MARCAR PONTO
2 ENCERRAR
1 MARCAR PONTO
2 ENCERRAR
1 MARCAR PONTO
2 ENCERRAR
1 MARCAR PONTO
2 ENCERRAR
PONTOS 5
```

Entrada:
```text
a
1
b
2
```
Saída:
```text
1 MARCAR PONTO
2 ENCERRAR
1 MARCAR PONTO
2 ENCERRAR
1 MARCAR PONTO
2 ENCERRAR
1 MARCAR PONTO
2 ENCERRAR
PONTOS 1
```

Entrada:
```text
10
2
```
Saída:
```text
1 MARCAR PONTO
2 ENCERRAR
1 MARCAR PONTO
2 ENCERRAR
PONTOS 0
```
