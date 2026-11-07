**Título:** M2 Encomenda da Cantina

**Enunciado:**

A cantina da UFAM entrega encomendas de salgados para eventos. Se o total da encomenda passar de 200 reais, o cliente ganha 10% de desconto. Caso contrário, paga uma taxa de entrega de 15 reais. O programa deve mostrar o valor final a pagar, arredondado para duas casas decimais com `round()`.

Fórmulas:
`total = preco * quantidade`
`total = total * 0.9` (quando há desconto)
`total = total + 15` (quando há taxa de entrega)

Entrada:
1. preço de cada salgado, em reais (real).
2. quantidade de salgados encomendados (inteiro).

Saída:
1. valor final da encomenda, em reais, com duas casas decimais (real).

**Solução de referência:**

```python
preco = float(input("preco unidade: "))
quantidade = int(input("quantidade: "))
total = preco * quantidade
if total > 200:
    total = total * 0.9
else:
    total = total + 15
print(round(total, 2))
```

**Casos de teste públicos:**

Entrada:
```text
2.5
100
```
Saída:
```text
225.0
```

Entrada:
```text
2
100
```
Saída:
```text
215.0
```

Entrada:
```text
5
10
```
Saída:
```text
65.0
```

**Casos de teste privados:**

Entrada:
```text
2.01
100
```
Saída:
```text
180.9
```

Entrada:
```text
3.5
60
```
Saída:
```text
189.0
```

Entrada:
```text
1.25
8
```
Saída:
```text
25.0
```
