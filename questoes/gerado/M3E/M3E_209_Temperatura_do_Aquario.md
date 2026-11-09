**Título:** M3E Temperatura do Aquario

**Enunciado:**

Um laboratório de biologia mantém peixes tropicais em um aquário. O programa deve informar QUENTE se a temperatura da água for 30 graus Celsius ou mais, IDEAL se for 24 graus ou mais e menor que 30, e FRIA se for menor que 24 graus.

Entrada:
1. temperatura da água, em graus Celsius (real).

Saída:
1. situação da temperatura da água.

**Solução de referência:**

```python
temperatura = float(input("temperatura: "))
if temperatura >= 30:
    print("QUENTE")
elif temperatura >= 24:
    print("IDEAL")
else:
    print("FRIA")
```

**Casos de teste públicos:**

Entrada:
```text
32.5
```
Saída:
```text
QUENTE
```

Entrada:
```text
29.9
```
Saída:
```text
IDEAL
```

Entrada:
```text
23.9
```
Saída:
```text
FRIA
```

**Casos de teste privados:**

Entrada:
```text
30
```
Saída:
```text
QUENTE
```

Entrada:
```text
24
```
Saída:
```text
IDEAL
```

Entrada:
```text
15
```
Saída:
```text
FRIA
```
