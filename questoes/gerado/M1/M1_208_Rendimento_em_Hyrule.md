**Título:** M1 Rendimento em Hyrule

**Enunciado:**

Em Hyrule, Link guarda suas rupias em um cofre mágico que rende juros todo mês, sempre sobre o valor acumulado até então. O programa deve calcular quanto Link terá no cofre depois de alguns meses e quanto desse valor corresponde apenas aos juros. Os dois valores devem ser arredondados para duas casas decimais com `round()`.

Fórmulas:
`montante = capital * (1 + taxa / 100) ** meses`
`juros = montante - capital`

Aqui, `capital` é o valor guardado no início e `taxa` é a porcentagem de rendimento ao mês.

Entrada:
1. valor guardado no início, em rupias (real).
2. taxa de rendimento mensal, em porcentagem (real).
3. quantidade de meses (inteiro).

Saída:
1. valor total no cofre ao final dos meses, em rupias, com duas casas decimais (real).
2. valor dos juros ganhos, em rupias, com duas casas decimais (real).

**Solução de referência:**

```python
capital = float(input("capital: "))
taxa = float(input("taxa %: "))
meses = int(input("meses: "))
montante = capital * (1 + taxa / 100) ** meses
juros = montante - capital
print(round(montante, 2))
print(round(juros, 2))
```

**Casos de teste públicos:**

Entrada:
```text
1200
5
3
```
Saída:
```text
1389.15
189.15
```

Entrada:
```text
200
10
2
```
Saída:
```text
242.0
42.0
```

Entrada:
```text
500
2.5
4
```
Saída:
```text
551.91
51.91
```

**Casos de teste privados:**

Entrada:
```text
100
1
12
```
Saída:
```text
112.68
12.68
```

Entrada:
```text
1500
0
5
```
Saída:
```text
1500.0
0.0
```

Entrada:
```text
250.75
3
6
```
Saída:
```text
299.41
48.66
```
