**Título:** M3A Tarifa de Energia

**Enunciado:**

Uma distribuidora de energia cobra tarifas diferentes conforme o consumo do mês e o tipo de cliente. Consumos de até 200 kWh pagam a tarifa básica. Consumos acima de 200 kWh pagam a tarifa alta se o cliente for residencial e a tarifa industrial se não for. O programa deve informar TARIFABASICA, TARIFAALTA ou TARIFAINDUSTRIAL conforme a tarifa a ser cobrada, seguindo essas regras.

Entrada:
1. consumo do mês, em kWh (inteiro).
2. tipo do cliente (inteiro; 1 significa cliente residencial e qualquer outro valor significa que não é residencial).

Saída:
1. tarifa a ser cobrada.

**Solução de referência:**

```python
consumo = int(input("consumo: "))
residencial = int(input("residencial: "))
if consumo > 200:
    if residencial == 1:
        print("TARIFAALTA")
    else:
        print("TARIFAINDUSTRIAL")
else:
    print("TARIFABASICA")
```

**Casos de teste públicos:**

Entrada:
```text
250
1
```
Saída:
```text
TARIFAALTA
```

Entrada:
```text
250
0
```
Saída:
```text
TARIFAINDUSTRIAL
```

Entrada:
```text
200
1
```
Saída:
```text
TARIFABASICA
```

**Casos de teste privados:**

Entrada:
```text
201
1
```
Saída:
```text
TARIFAALTA
```

Entrada:
```text
201
2
```
Saída:
```text
TARIFAINDUSTRIAL
```

Entrada:
```text
50
0
```
Saída:
```text
TARIFABASICA
```
