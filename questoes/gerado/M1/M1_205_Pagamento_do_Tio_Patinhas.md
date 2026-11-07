**Título:** M1 Pagamento do Tio Patinhas

**Enunciado:**

O Tio Patinhas paga a mesada dos sobrinhos em dinheiro vivo, usando o maior número possível de notas de 50 reais. Do que sobra, usa o maior número possível de notas de 10 reais e, no final, completa com moedas de 1 real. O programa deve informar quantas notas de 50, quantas notas de 10 e quantas moedas de 1 real serão usadas, nessa ordem.

Entrada:
1. valor total a ser pago, em reais (inteiro).

Saída:
1. quantidade de notas de 50 reais (inteiro).
2. quantidade de notas de 10 reais (inteiro).
3. quantidade de moedas de 1 real (inteiro).

**Solução de referência:**

```python
total = int(input("valor reais: "))
notas50 = total // 50
resto = total % 50
notas10 = resto // 10
moedas1 = resto % 10
print(notas50)
print(notas10)
print(moedas1)
```

**Casos de teste públicos:**

Entrada:
```text
87
```
Saída:
```text
1
3
7
```

Entrada:
```text
100
```
Saída:
```text
2
0
0
```

Entrada:
```text
9
```
Saída:
```text
0
0
9
```

**Casos de teste privados:**

Entrada:
```text
249
```
Saída:
```text
4
4
9
```

Entrada:
```text
50
```
Saída:
```text
1
0
0
```

Entrada:
```text
40
```
Saída:
```text
0
4
0
```
