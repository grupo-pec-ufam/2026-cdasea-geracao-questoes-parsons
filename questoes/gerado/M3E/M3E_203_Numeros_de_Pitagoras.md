**Título:** M3E Numeros de Pitagoras

**Enunciado:**

Pitágoras desafiou um discípulo a encontrar dois números reais dos quais se conhecem a soma e o produto. Os dois números são as soluções da equação `x ** 2 - soma * x + produto = 0`, e só existem números reais se `delta` for maior ou igual a zero.

O programa deve mostrar os dois números, do menor para o maior, em uma única linha separados por espaço, quando existirem dois números diferentes. Quando existir apenas um número (os dois são iguais), o programa deve mostrar esse número. Quando não existir nenhum número real com essa soma e esse produto, o programa deve mostrar SEMNUMEROS. Os números devem ser arredondados para duas casas decimais com `round()`.

Fórmulas:
`delta = soma ** 2 - 4 * produto`
`numero = (soma ± raiz quadrada de delta) / 2`

O sinal ± indica duas contas: uma com + e outra com -.

Entrada:
1. soma dos dois números (inteiro).
2. produto dos dois números (inteiro).

Saída:
1. números encontrados, arredondados para duas casas decimais (real), ou o aviso de que não existem.

**Solução de referência:**

```python
import math

soma = int(input("soma: "))
produto = int(input("produto: "))
delta = soma ** 2 - 4 * produto
if delta > 0:
    print(round((soma - math.sqrt(delta)) / 2, 2), round((soma + math.sqrt(delta)) / 2, 2))
elif delta == 0:
    print(round(soma / 2, 2))
else:
    print("SEMNUMEROS")
```

**Casos de teste públicos:**

Entrada:
```text
5
6
```
Saída:
```text
2.0 3.0
```

Entrada:
```text
4
4
```
Saída:
```text
2.0
```

Entrada:
```text
1
5
```
Saída:
```text
SEMNUMEROS
```

**Casos de teste privados:**

Entrada:
```text
10
21
```
Saída:
```text
3.0 7.0
```

Entrada:
```text
-3
2
```
Saída:
```text
-2.0 -1.0
```

Entrada:
```text
3
1
```
Saída:
```text
0.38 2.62
```
