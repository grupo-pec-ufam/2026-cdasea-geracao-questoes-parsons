**Título:** M3A Fichas do Fliperama

**Enunciado:**

Em Stranger Things, Dustin e os amigos vão ao fliperama e usam o saldo que têm para comprar fichas. O programa deve informar SEMSALDO se o saldo for zero ou negativo (nesse caso a compra nem é analisada), APROVADA se o saldo for positivo e suficiente para pagar o total das fichas, e RECUSADA se o saldo for positivo, mas menor que o total.

O total das fichas é o preço de cada ficha multiplicado pela quantidade desejada.

Entrada:
1. saldo disponível, em reais (real).
2. preço de cada ficha, em reais (real).
3. quantidade de fichas desejada (inteiro).

Saída:
1. resultado da compra.

**Solução de referência:**

```python
saldo = float(input("saldo: "))
preco = float(input("preco ficha: "))
quantidade = int(input("quantidade: "))
if saldo <= 0:
    print("SEMSALDO")
else:
    if preco * quantidade <= saldo:
        print("APROVADA")
    else:
        print("RECUSADA")
```

**Casos de teste públicos:**

Entrada:
```text
10
2.5
4
```
Saída:
```text
APROVADA
```

Entrada:
```text
10
2.5
5
```
Saída:
```text
RECUSADA
```

Entrada:
```text
0
2
1
```
Saída:
```text
SEMSALDO
```

**Casos de teste privados:**

Entrada:
```text
50
1.5
10
```
Saída:
```text
APROVADA
```

Entrada:
```text
5
3
2
```
Saída:
```text
RECUSADA
```

Entrada:
```text
0
5
3
```
Saída:
```text
SEMSALDO
```
