**Título:** M3A Entrega de Pecas

**Enunciado:**

Uma montadora de bicicletas entrega peças usando três meios de transporte. Cargas leves, de até 20 quilos, vão de moto. Cargas mais pesadas vão de transportadora se o destino estiver a até 100 quilômetros, e em carga especial se o destino estiver mais longe. O programa deve informar MOTOBOY para cargas leves, TRANSPORTADORA para cargas pesadas com destino a até 100 quilômetros, e CARGAESPECIAL para cargas pesadas com destino a mais de 100 quilômetros.

Entrada:
1. peso da carga, em quilos (inteiro).
2. distância até o destino, em quilômetros (inteiro).

Saída:
1. meio de transporte escolhido.

**Solução de referência:**

```python
peso = int(input("peso: "))
distancia = int(input("distancia: "))
if peso > 20:
    if distancia <= 100:
        print("TRANSPORTADORA")
    else:
        print("CARGAESPECIAL")
else:
    print("MOTOBOY")
```

**Casos de teste públicos:**

Entrada:
```text
25
80
```
Saída:
```text
TRANSPORTADORA
```

Entrada:
```text
25
150
```
Saída:
```text
CARGAESPECIAL
```

Entrada:
```text
20
500
```
Saída:
```text
MOTOBOY
```

**Casos de teste privados:**

Entrada:
```text
21
100
```
Saída:
```text
TRANSPORTADORA
```

Entrada:
```text
21
101
```
Saída:
```text
CARGAESPECIAL
```

Entrada:
```text
5
10
```
Saída:
```text
MOTOBOY
```
