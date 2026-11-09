**Título:** M4 Maquina de Refrigerante

**Enunciado:**

Uma máquina de refrigerante do campus aceita moedas de 1 real. A cada rodada, a máquina mostra um menu com duas opções (1 INSERIR MOEDA e 2 ENCERRAR) e lê a opção escolhida. Com a opção 1, mais uma moeda é contada. Qualquer opção diferente de 1 e de 2 é ignorada, e o menu é mostrado de novo. Com a opção 2, o programa termina e mostra a palavra TOTAL, seguida de um espaço e da quantidade de moedas inseridas.

Entrada:
1. opções digitadas, uma por vez, até que a opção 2 seja digitada (string).

Saída:
1. linhas do menu, mostradas antes de cada leitura de opção.
2. total de moedas inseridas (inteiro).

**Solução de referência:**

```python
opcao = ""
moedas = 0
while opcao != "2":
    print("1 INSERIR MOEDA")
    print("2 ENCERRAR")
    opcao = input("opcao: ")
    if opcao == "1":
        moedas = moedas + 1
print("TOTAL", moedas)
```

**Casos de teste públicos:**

Entrada:
```text
2
```
Saída:
```text
1 INSERIR MOEDA
2 ENCERRAR
TOTAL 0
```

Entrada:
```text
1
1
2
```
Saída:
```text
1 INSERIR MOEDA
2 ENCERRAR
1 INSERIR MOEDA
2 ENCERRAR
1 INSERIR MOEDA
2 ENCERRAR
TOTAL 2
```

Entrada:
```text
3
1
2
```
Saída:
```text
1 INSERIR MOEDA
2 ENCERRAR
1 INSERIR MOEDA
2 ENCERRAR
1 INSERIR MOEDA
2 ENCERRAR
TOTAL 1
```

**Casos de teste privados:**

Entrada:
```text
1
1
1
1
2
```
Saída:
```text
1 INSERIR MOEDA
2 ENCERRAR
1 INSERIR MOEDA
2 ENCERRAR
1 INSERIR MOEDA
2 ENCERRAR
1 INSERIR MOEDA
2 ENCERRAR
1 INSERIR MOEDA
2 ENCERRAR
TOTAL 4
```

Entrada:
```text
x
y
2
```
Saída:
```text
1 INSERIR MOEDA
2 ENCERRAR
1 INSERIR MOEDA
2 ENCERRAR
1 INSERIR MOEDA
2 ENCERRAR
TOTAL 0
```

Entrada:
```text
12
1
2
```
Saída:
```text
1 INSERIR MOEDA
2 ENCERRAR
1 INSERIR MOEDA
2 ENCERRAR
1 INSERIR MOEDA
2 ENCERRAR
TOTAL 1
```
