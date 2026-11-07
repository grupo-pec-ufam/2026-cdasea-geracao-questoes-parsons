**Título:** M2 Ponto de Fervura

**Enunciado:**

Em uma aula de química, uma panela com água ao nível do mar é aquecida e a temperatura é medida. A água ferve a partir de 100 graus Celsius. O programa deve informar FERVENDO se a temperatura for 100 graus ou mais, e LIQUIDA caso contrário.

Entrada:
1. temperatura da água, em graus Celsius (inteiro, entre 1 e 150).

Saída:
1. estado da água na panela.

**Solução de referência:**

```python
temperatura = int(input("temperatura: "))
if temperatura >= 100:
    print("FERVENDO")
else:
    print("LIQUIDA")
```

**Casos de teste públicos:**

Entrada:
```text
100
```
Saída:
```text
FERVENDO
```

Entrada:
```text
99
```
Saída:
```text
LIQUIDA
```

Entrada:
```text
101
```
Saída:
```text
FERVENDO
```

**Casos de teste privados:**

Entrada:
```text
25
```
Saída:
```text
LIQUIDA
```

Entrada:
```text
1
```
Saída:
```text
LIQUIDA
```

Entrada:
```text
150
```
Saída:
```text
FERVENDO
```
