**Título:** M1 Distancia no Mapa

**Enunciado:**

No Minecraft, o mapa de um mundo pode ser visto de cima, com cada ponto descrito por duas coordenadas, x e y. Steve está em um ponto do mapa e quer chegar a uma vila que está em outro ponto. O programa deve calcular a distância em linha reta entre os dois pontos, arredondada para duas casas decimais com `round()`.

Fórmula: `distancia = raiz quadrada de ((x2 - x1) ** 2 + (y2 - y1) ** 2)`

Entrada:
1. coordenada x da posição de Steve, em blocos (real).
2. coordenada y da posição de Steve, em blocos (real).
3. coordenada x da vila, em blocos (real).
4. coordenada y da vila, em blocos (real).

Saída:
1. distância em linha reta entre Steve e a vila, em blocos, com duas casas decimais (real).

**Solução de referência:**

```python
import math

x1 = float(input("x1: "))
y1 = float(input("y1: "))
x2 = float(input("x2: "))
y2 = float(input("y2: "))
distancia = math.sqrt((x2 - x1) ** 2 + (y2 - y1) ** 2)
print(round(distancia, 2))
```

**Casos de teste públicos:**

Entrada:
```text
0
0
3
4
```
Saída:
```text
5.0
```

Entrada:
```text
1
2
4
6
```
Saída:
```text
5.0
```

Entrada:
```text
-2
3
5
-1
```
Saída:
```text
8.06
```

**Casos de teste privados:**

Entrada:
```text
0
0
1
1
```
Saída:
```text
1.41
```

Entrada:
```text
2.5
1.5
2.5
6.5
```
Saída:
```text
5.0
```

Entrada:
```text
-3
-4
3
4
```
Saída:
```text
10.0
```
