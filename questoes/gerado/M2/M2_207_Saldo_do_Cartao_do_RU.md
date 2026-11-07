**Título:** M2 Saldo do Cartao do RU

**Enunciado:**

Considere que uma refeição no RU da UFAM custa 5 reais. O programa deve mostrar RECARREGUE somente se o saldo do cartão for menor que o preço de uma refeição. Em qualquer caso, o programa deve mostrar também o saldo atual do cartão.

Entrada:
1. saldo atual do cartão, em reais (inteiro).

Saída:
1. aviso de saldo insuficiente, mostrado apenas quando necessário.
2. saldo atual do cartão, em reais (inteiro).

**Solução de referência:**

```python
saldo = int(input("saldo: "))
if saldo < 5:
    print("RECARREGUE")
print(saldo)
```

**Casos de teste públicos:**

Entrada:
```text
3
```
Saída:
```text
RECARREGUE
3
```

Entrada:
```text
5
```
Saída:
```text
5
```

Entrada:
```text
20
```
Saída:
```text
20
```

**Casos de teste privados:**

Entrada:
```text
4
```
Saída:
```text
RECARREGUE
4
```

Entrada:
```text
0
```
Saída:
```text
RECARREGUE
0
```

Entrada:
```text
100
```
Saída:
```text
100
```
