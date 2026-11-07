**Título:** M1 Area da Magia de Fogo

**Enunciado:**

Em um jogo de estratégia, uma magia de fogo atinge todos os inimigos dentro de um círculo ao redor do mago. O programa deve calcular a área atingida pela magia, arredondada para duas casas decimais com `round()`. Use o valor de pi (aproximadamente 3,14159) fornecido pela biblioteca `math` do Python.

Fórmula: `area = pi * raio ** 2`

Entrada:
1. raio da magia, em metros (real).

Saída:
1. área atingida pela magia, em metros quadrados, com duas casas decimais (real).

**Solução de referência:**

```python
import math

raio = float(input("raio: "))
area = math.pi * raio ** 2
print(round(area, 2))
```

**Casos de teste públicos:**

Entrada:
```text
1
```
Saída:
```text
3.14
```

Entrada:
```text
2.5
```
Saída:
```text
19.63
```

Entrada:
```text
10
```
Saída:
```text
314.16
```

**Casos de teste privados:**

Entrada:
```text
0.5
```
Saída:
```text
0.79
```

Entrada:
```text
7
```
Saída:
```text
153.94
```

Entrada:
```text
3.2
```
Saída:
```text
32.17
```
