**Título:** M3E Preco da Camiseta

**Enunciado:**

O centro acadêmico vende camisetas. Pela experiência dos anos anteriores, ao cobrar um preço `p` (em reais) por camiseta, vendem-se `100 - 2 * p` camisetas, e a receita é `receita = p * (100 - 2 * p)`. Para descobrir quais preços resultam em uma receita desejada, resolve-se a equação `2 * p ** 2 - 100 * p + receita = 0`.

O programa deve mostrar os dois preços, do menor para o maior, em uma única linha separados por espaço, quando existirem dois preços diferentes que resultam na receita desejada. Quando existir apenas um preço, o programa deve mostrar esse preço. Quando nenhum preço resultar nessa receita, o programa deve mostrar IMPOSSIVEL. Os preços devem ser arredondados para duas casas decimais com `round()`.

Fórmulas:
`delta = 100 ** 2 - 4 * 2 * receita`
`preco = (100 ± raiz quadrada de delta) / 4`

O sinal ± indica duas contas: uma com + e outra com -.

Entrada:
1. receita desejada, em reais (inteiro).

Saída:
1. preços encontrados, em reais, arredondados para duas casas decimais (real), ou o aviso de que nenhum preço resulta nessa receita.

**Solução de referência:**

```python
import math

receita = int(input("receita: "))
delta = 100 ** 2 - 4 * 2 * receita
if delta > 0:
    print(round((100 - math.sqrt(delta)) / 4, 2), round((100 + math.sqrt(delta)) / 4, 2))
elif delta == 0:
    print(round(100 / 4, 2))
else:
    print("IMPOSSIVEL")
```

**Casos de teste públicos:**

Entrada:
```text
1000
```
Saída:
```text
13.82 36.18
```

Entrada:
```text
1200
```
Saída:
```text
20.0 30.0
```

Entrada:
```text
1250
```
Saída:
```text
25.0
```

**Casos de teste privados:**

Entrada:
```text
1300
```
Saída:
```text
IMPOSSIVEL
```

Entrada:
```text
0
```
Saída:
```text
0.0 50.0
```

Entrada:
```text
1249
```
Saída:
```text
24.29 25.71
```
