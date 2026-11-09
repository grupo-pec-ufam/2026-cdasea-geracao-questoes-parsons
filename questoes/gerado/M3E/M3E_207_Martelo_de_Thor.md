**Título:** M3E Martelo de Thor

**Enunciado:**

Thor arremessa o Mjölnir para cima com uma certa velocidade inicial. Em metros, a altura do martelo depois de `t` segundos é `altura = velocidade * t - 5 * t ** 2`. Para saber em quais instantes o martelo está exatamente a uma altura desejada, resolve-se a equação `5 * t ** 2 - velocidade * t + altura = 0`.

O programa deve mostrar os dois instantes, do menor para o maior, em uma única linha separados por espaço, quando o martelo passar duas vezes pela altura desejada (uma subindo e outra descendo). Quando o martelo tocar a altura desejada apenas uma vez, no ponto mais alto do trajeto, o programa deve mostrar esse único instante. Quando o martelo nunca chegar a essa altura, o programa deve mostrar NUNCA. Os instantes devem ser arredondados para duas casas decimais com `round()`.

Fórmulas:
`delta = velocidade ** 2 - 20 * altura`
`t = (velocidade ± raiz quadrada de delta) / 10`

O sinal ± indica duas contas: uma com + e outra com -.

Entrada:
1. velocidade inicial do martelo, em metros por segundo (inteiro).
2. altura desejada, em metros (inteiro).

Saída:
1. instantes encontrados, em segundos, arredondados para duas casas decimais (real), ou o aviso de que o martelo nunca chega a essa altura.

**Solução de referência:**

```python
import math

velocidade = int(input("velocidade: "))
altura = int(input("altura: "))
delta = velocidade ** 2 - 20 * altura
if delta > 0:
    print(round((velocidade - math.sqrt(delta)) / 10, 2), round((velocidade + math.sqrt(delta)) / 10, 2))
elif delta == 0:
    print(round(velocidade / 10, 2))
else:
    print("NUNCA")
```

**Casos de teste públicos:**

Entrada:
```text
20
15
```
Saída:
```text
1.0 3.0
```

Entrada:
```text
20
20
```
Saída:
```text
2.0
```

Entrada:
```text
20
25
```
Saída:
```text
NUNCA
```

**Casos de teste privados:**

Entrada:
```text
30
40
```
Saída:
```text
2.0 4.0
```

Entrada:
```text
10
0
```
Saída:
```text
0.0 2.0
```

Entrada:
```text
15
5
```
Saída:
```text
0.38 2.62
```
