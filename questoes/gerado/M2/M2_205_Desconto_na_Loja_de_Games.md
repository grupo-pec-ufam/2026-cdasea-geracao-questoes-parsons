**Título:** M2 Desconto na Loja de Games

**Enunciado:**

Uma loja de jogos dá 10% de desconto em compras com valor acima de 200 reais. O programa deve mostrar o valor final a pagar, já com o desconto quando ele se aplicar, arredondado para duas casas decimais com `round()`.

Fórmula do desconto: `preco = preco * 0.9`

Entrada:
1. valor da compra, em reais (real).

Saída:
1. valor final a pagar, em reais, com duas casas decimais (real).

**Solução de referência:**

```python
preco = float(input("preco: "))
if preco > 200:
    preco = preco * 0.9
print(round(preco, 2))
```

**Casos de teste públicos:**

Entrada:
```text
250
```
Saída:
```text
225.0
```

Entrada:
```text
200
```
Saída:
```text
200.0
```

Entrada:
```text
150
```
Saída:
```text
150.0
```

**Casos de teste privados:**

Entrada:
```text
201
```
Saída:
```text
180.9
```

Entrada:
```text
1000
```
Saída:
```text
900.0
```

Entrada:
```text
80.5
```
Saída:
```text
80.5
```
