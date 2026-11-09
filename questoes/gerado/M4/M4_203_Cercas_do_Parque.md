**Título:** M4 Cercas do Parque

**Enunciado:**

Em um parque de dinossauros, as cercas elétricas são numeradas de 1 até o número da última cerca. Os guardas vistoriam apenas as cercas cujo número é múltiplo de um intervalo escolhido (um número é múltiplo do intervalo quando a divisão dele pelo intervalo tem resto zero). O programa deve mostrar quantas cercas serão vistoriadas.

Entrada:
1. número da última cerca (inteiro, maior que zero).
2. intervalo de vistoria (inteiro, maior que zero).

Saída:
1. quantidade de cercas vistoriadas (inteiro).

**Solução de referência:**

```python
limite = int(input("limite: "))
intervalo = int(input("intervalo: "))
contador = 0
i = 1
while i <= limite:
    if i % intervalo == 0:
        contador = contador + 1
    i = i + 1
print(contador)
```

**Casos de teste públicos:**

Entrada:
```text
20
5
```
Saída:
```text
4
```

Entrada:
```text
10
3
```
Saída:
```text
3
```

Entrada:
```text
7
10
```
Saída:
```text
0
```

**Casos de teste privados:**

Entrada:
```text
30
6
```
Saída:
```text
5
```

Entrada:
```text
1
1
```
Saída:
```text
1
```

Entrada:
```text
100
7
```
Saída:
```text
14
```
