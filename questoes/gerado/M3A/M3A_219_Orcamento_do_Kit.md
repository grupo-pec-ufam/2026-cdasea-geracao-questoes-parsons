**Título:** M3A Orcamento do Kit

**Enunciado:**

Na feira de ciências da UFAM, cada kit de robótica custa 250 reais. Um grupo de estudantes informa o orçamento disponível e a quantidade de kits desejada. O programa deve informar PEDIDOINVALIDO se a quantidade de kits for zero ou negativa, COMPRAOK se a quantidade for positiva e o total não passar do orçamento, e ORCAMENTOINSUFICIENTE se a quantidade for positiva e o total passar do orçamento.

Fórmula: `total = quantidade * 250`

Entrada:
1. orçamento do grupo, em reais (real).
2. quantidade de kits desejada (inteiro).

Saída:
1. resultado do pedido.

**Solução de referência:**

```python
orcamento = float(input("orcamento: "))
quantidade = int(input("quantidade: "))
if quantidade <= 0:
    print("PEDIDOINVALIDO")
else:
    total = quantidade * 250
    if total <= orcamento:
        print("COMPRAOK")
    else:
        print("ORCAMENTOINSUFICIENTE")
```

**Casos de teste públicos:**

Entrada:
```text
1000
4
```
Saída:
```text
COMPRAOK
```

Entrada:
```text
1000
5
```
Saída:
```text
ORCAMENTOINSUFICIENTE
```

Entrada:
```text
500
0
```
Saída:
```text
PEDIDOINVALIDO
```

**Casos de teste privados:**

Entrada:
```text
300
-2
```
Saída:
```text
PEDIDOINVALIDO
```

Entrada:
```text
250
1
```
Saída:
```text
COMPRAOK
```

Entrada:
```text
249.99
1
```
Saída:
```text
ORCAMENTOINSUFICIENTE
```
