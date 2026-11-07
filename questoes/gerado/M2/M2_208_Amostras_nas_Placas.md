**Título:** M2 Amostras nas Placas

**Enunciado:**

Em um laboratório de biologia, as amostras de bactérias devem ser distribuídas igualmente entre placas de cultura. O programa deve informar EXATA se a quantidade de amostras puder ser dividida igualmente entre as placas, sem sobrar nenhuma, e SOBRA caso contrário.

Fórmula: `resto = amostras % placas`

Aqui, o operador `%` dá o resto da divisão de `amostras` por `placas`; resto igual a zero significa divisão exata.

Entrada:
1. quantidade de amostras (inteiro).
2. quantidade de placas (inteiro, maior que zero).

Saída:
1. situação da distribuição das amostras.

**Solução de referência:**

```python
amostras = int(input("amostras: "))
placas = int(input("placas: "))
resto = amostras % placas
if resto == 0:
    print("EXATA")
else:
    print("SOBRA")
```

**Casos de teste públicos:**

Entrada:
```text
12
4
```
Saída:
```text
EXATA
```

Entrada:
```text
13
4
```
Saída:
```text
SOBRA
```

Entrada:
```text
3
5
```
Saída:
```text
SOBRA
```

**Casos de teste privados:**

Entrada:
```text
5
5
```
Saída:
```text
EXATA
```

Entrada:
```text
100
7
```
Saída:
```text
SOBRA
```

Entrada:
```text
21
7
```
Saída:
```text
EXATA
```
