**Título:** M1 Media das Voltas

**Enunciado:**

Em uma corrida de Mario Kart, Luigi anotou o tempo de duas voltas da pista. O programa deve calcular o tempo médio dessas duas voltas, arredondado para duas casas decimais com `round()`.

Fórmula: `media = (tempo1 + tempo2) / 2`

Entrada:
1. tempo da primeira volta, em segundos (real).
2. tempo da segunda volta, em segundos (real).

Saída:
1. tempo médio das duas voltas, em segundos, com duas casas decimais (real).

**Solução de referência:**

```python
tempo1 = float(input("tempo 1: "))
tempo2 = float(input("tempo 2: "))
media = (tempo1 + tempo2) / 2
print(round(media, 2))
```

**Casos de teste públicos:**

Entrada:
```text
50.5
49.5
```
Saída:
```text
50.0
```

Entrada:
```text
80
75
```
Saída:
```text
77.5
```

Entrada:
```text
62.4
61.2
```
Saída:
```text
61.8
```

**Casos de teste privados:**

Entrada:
```text
45.3
47.9
```
Saída:
```text
46.6
```

Entrada:
```text
100
100
```
Saída:
```text
100.0
```

Entrada:
```text
59.34
61.5
```
Saída:
```text
60.42
```
