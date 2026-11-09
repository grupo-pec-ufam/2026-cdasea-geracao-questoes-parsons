**Título:** M3E Conceito da Disciplina

**Enunciado:**

Em uma disciplina da UFAM, o desempenho do estudante é resumido em um conceito, a partir da nota final, que vai de 0 a 10. O programa deve informar EXCELENTE se a nota for 9 ou mais, BOM se for 7 ou mais e menor que 9, e REGULAR se for menor que 7.

Entrada:
1. nota final do estudante (real).

Saída:
1. conceito do estudante.

**Solução de referência:**

```python
nota = float(input("nota: "))
if nota >= 9:
    print("EXCELENTE")
elif nota >= 7:
    print("BOM")
else:
    print("REGULAR")
```

**Casos de teste públicos:**

Entrada:
```text
9
```
Saída:
```text
EXCELENTE
```

Entrada:
```text
8.9
```
Saída:
```text
BOM
```

Entrada:
```text
6.9
```
Saída:
```text
REGULAR
```

**Casos de teste privados:**

Entrada:
```text
10
```
Saída:
```text
EXCELENTE
```

Entrada:
```text
7
```
Saída:
```text
BOM
```

Entrada:
```text
0
```
Saída:
```text
REGULAR
```
