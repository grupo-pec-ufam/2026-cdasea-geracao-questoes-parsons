**Título:** M3A Ingresso do Teatro

**Enunciado:**

Considere que o Teatro Amazonas, em Manaus, cobra o ingresso conforme a categoria do visitante. O programa deve informar GRATIS se o visitante for da categoria ESTUDANTE e tiver menos de 12 anos, MEIA se for da categoria ESTUDANTE e tiver 12 anos ou mais, e INTEIRA para qualquer outra categoria, seja qual for a idade.

Entrada:
1. categoria do visitante, em letras maiúsculas (string).
2. idade do visitante, em anos (inteiro).

Saída:
1. tipo de ingresso do visitante.

**Solução de referência:**

```python
categoria = input("categoria: ")
idade = int(input("idade: "))
if categoria == "ESTUDANTE":
    if idade < 12:
        print("GRATIS")
    else:
        print("MEIA")
else:
    print("INTEIRA")
```

**Casos de teste públicos:**

Entrada:
```text
ESTUDANTE
11
```
Saída:
```text
GRATIS
```

Entrada:
```text
ESTUDANTE
12
```
Saída:
```text
MEIA
```

Entrada:
```text
COMUM
30
```
Saída:
```text
INTEIRA
```

**Casos de teste privados:**

Entrada:
```text
COMUM
5
```
Saída:
```text
INTEIRA
```

Entrada:
```text
ESTUDANTE
70
```
Saída:
```text
MEIA
```

Entrada:
```text
estudante
10
```
Saída:
```text
INTEIRA
```
