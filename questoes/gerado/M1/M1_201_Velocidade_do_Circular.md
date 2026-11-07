**Título:** M1 Velocidade do Circular

**Enunciado:**

O ônibus circular do campus da UFAM faz um trecho entre dois setores. Sabendo a distância percorrida e o tempo gasto, o programa deve calcular a velocidade média do ônibus nesse trecho, arredondada para duas casas decimais com `round()`.

Fórmula: `velocidade = distancia / tempo`

Entrada:
1. distância percorrida, em quilômetros (real).
2. tempo gasto no trecho, em horas (real, maior que zero).

Saída:
1. velocidade média do ônibus, em quilômetros por hora, com duas casas decimais (real).

**Solução de referência:**

```python
distancia = float(input("distancia km: "))
tempo = float(input("tempo h: "))
velocidade = distancia / tempo
print(round(velocidade, 2))
```

**Casos de teste públicos:**

Entrada:
```text
12
0.5
```
Saída:
```text
24.0
```

Entrada:
```text
7.5
0.25
```
Saída:
```text
30.0
```

Entrada:
```text
10
0.3
```
Saída:
```text
33.33
```

**Casos de teste privados:**

Entrada:
```text
4.2
0.15
```
Saída:
```text
28.0
```

Entrada:
```text
9
0.4
```
Saída:
```text
22.5
```

Entrada:
```text
15
0.7
```
Saída:
```text
21.43
```
