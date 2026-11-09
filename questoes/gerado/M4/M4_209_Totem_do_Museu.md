**Título:** M4 Totem do Museu

**Enunciado:**

Um totem de museu mostra um menu com duas opções (1 VER HORARIO e 2 SAIR) e lê a opção escolhida. Com a opção 1, o totem informa ABERTO DAS 9 AS 17. Com qualquer opção diferente de 1 e de 2, o totem informa OPCAO INVALIDA. Em ambos os casos, o menu é mostrado de novo. O programa termina quando a opção 2 é escolhida.

Entrada:
1. opções digitadas, uma por vez, até que a opção 2 seja digitada (string).

Saída:
1. linhas do menu, mostradas antes de cada leitura de opção.
2. resposta do totem à opção escolhida, quando houver.

**Solução de referência:**

```python
opcao = ""
while opcao != "2":
    print("1 VER HORARIO")
    print("2 SAIR")
    opcao = input("opcao: ")
    if opcao == "1":
        print("ABERTO DAS 9 AS 17")
    elif opcao != "2":
        print("OPCAO INVALIDA")
```

**Casos de teste públicos:**

Entrada:
```text
2
```
Saída:
```text
1 VER HORARIO
2 SAIR
```

Entrada:
```text
1
2
```
Saída:
```text
1 VER HORARIO
2 SAIR
ABERTO DAS 9 AS 17
1 VER HORARIO
2 SAIR
```

Entrada:
```text
3
1
2
```
Saída:
```text
1 VER HORARIO
2 SAIR
OPCAO INVALIDA
1 VER HORARIO
2 SAIR
ABERTO DAS 9 AS 17
1 VER HORARIO
2 SAIR
```

**Casos de teste privados:**

Entrada:
```text
x
y
2
```
Saída:
```text
1 VER HORARIO
2 SAIR
OPCAO INVALIDA
1 VER HORARIO
2 SAIR
OPCAO INVALIDA
1 VER HORARIO
2 SAIR
```

Entrada:
```text
1
1
2
```
Saída:
```text
1 VER HORARIO
2 SAIR
ABERTO DAS 9 AS 17
1 VER HORARIO
2 SAIR
ABERTO DAS 9 AS 17
1 VER HORARIO
2 SAIR
```

Entrada:
```text
12
2
```
Saída:
```text
1 VER HORARIO
2 SAIR
OPCAO INVALIDA
1 VER HORARIO
2 SAIR
```
