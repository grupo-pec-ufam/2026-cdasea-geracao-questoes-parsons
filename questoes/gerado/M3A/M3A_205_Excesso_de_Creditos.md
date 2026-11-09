**Título:** M3A Excesso de Creditos

**Enunciado:**

Na matrícula da UFAM, considere que um estudante pode cursar até 24 créditos por semestre. Quem pedir mais que isso precisa de uma autorização, concedida apenas se o coeficiente de rendimento (CR, a média geral do estudante) for 7 ou mais. O programa deve informar MATRICULAOK se o número de créditos pedidos for no máximo 24, EXCECAOAUTORIZADA se for maior que 24 e o CR for 7 ou mais, e EXCECAONEGADA se for maior que 24 e o CR for menor que 7.

Entrada:
1. quantidade de créditos pedidos (inteiro).
2. coeficiente de rendimento do estudante (real).

Saída:
1. resultado da matrícula.

**Solução de referência:**

```python
creditos = int(input("creditos: "))
cr = float(input("cr: "))
if creditos > 24:
    if cr >= 7:
        print("EXCECAOAUTORIZADA")
    else:
        print("EXCECAONEGADA")
else:
    print("MATRICULAOK")
```

**Casos de teste públicos:**

Entrada:
```text
26
8
```
Saída:
```text
EXCECAOAUTORIZADA
```

Entrada:
```text
26
6.9
```
Saída:
```text
EXCECAONEGADA
```

Entrada:
```text
24
5
```
Saída:
```text
MATRICULAOK
```

**Casos de teste privados:**

Entrada:
```text
25
7
```
Saída:
```text
EXCECAOAUTORIZADA
```

Entrada:
```text
30
9.5
```
Saída:
```text
EXCECAOAUTORIZADA
```

Entrada:
```text
10
3.2
```
Saída:
```text
MATRICULAOK
```
