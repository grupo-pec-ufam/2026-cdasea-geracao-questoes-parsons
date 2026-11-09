**Título:** M3E Escala de Vento

**Enunciado:**

A defesa civil classifica o vento pela sua velocidade, medida em quilômetros por hora. O programa deve informar TEMPESTADE se a velocidade for 60 ou mais, VENTANIA se for 30 ou mais e menor que 60, e BRISA se for menor que 30.

Entrada:
1. velocidade do vento, em quilômetros por hora (inteiro).

Saída:
1. classificação do vento.

**Solução de referência:**

```python
velocidade = int(input("velocidade: "))
if velocidade >= 60:
    print("TEMPESTADE")
elif velocidade >= 30:
    print("VENTANIA")
else:
    print("BRISA")
```

**Casos de teste públicos:**

Entrada:
```text
80
```
Saída:
```text
TEMPESTADE
```

Entrada:
```text
59
```
Saída:
```text
VENTANIA
```

Entrada:
```text
29
```
Saída:
```text
BRISA
```

**Casos de teste privados:**

Entrada:
```text
60
```
Saída:
```text
TEMPESTADE
```

Entrada:
```text
30
```
Saída:
```text
VENTANIA
```

Entrada:
```text
5
```
Saída:
```text
BRISA
```
