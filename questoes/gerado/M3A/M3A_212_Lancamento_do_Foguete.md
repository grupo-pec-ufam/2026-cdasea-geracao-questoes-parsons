**Título:** M3A Lancamento do Foguete

**Enunciado:**

Antes de lançar um foguete, a equipe confere o combustível e o clima. O lançamento só é analisado se o tanque estiver com 80% ou mais de combustível. Com combustível suficiente, o foguete é lançado se o clima estiver favorável e adiado se não estiver. O programa deve informar LANCAR se o combustível for 80% ou mais e o clima for favorável, ADIAR se o combustível for 80% ou mais e o clima não for favorável, e ABASTECER se o combustível for menor que 80%.

Entrada:
1. nível de combustível no tanque, em porcentagem (inteiro).
2. situação do clima (inteiro; 1 significa clima favorável e qualquer outro valor significa que não é favorável).

Saída:
1. decisão da equipe.

**Solução de referência:**

```python
combustivel = int(input("combustivel: "))
clima = int(input("clima: "))
if combustivel >= 80:
    if clima == 1:
        print("LANCAR")
    else:
        print("ADIAR")
else:
    print("ABASTECER")
```

**Casos de teste públicos:**

Entrada:
```text
80
1
```
Saída:
```text
LANCAR
```

Entrada:
```text
80
0
```
Saída:
```text
ADIAR
```

Entrada:
```text
79
1
```
Saída:
```text
ABASTECER
```

**Casos de teste privados:**

Entrada:
```text
100
1
```
Saída:
```text
LANCAR
```

Entrada:
```text
50
0
```
Saída:
```text
ABASTECER
```

Entrada:
```text
95
2
```
Saída:
```text
ADIAR
```
