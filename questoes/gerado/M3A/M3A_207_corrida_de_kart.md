
# 8. M3A Corrida de Kart

## Enunciado

Em uma corrida de kart, o tempo final de uma volta é calculado somando uma penalidade de cinco segundos para cada checkpoint perdido pelo piloto. O sistema verifica se o tempo final está dentro do limite da fase e, caso esteja, confere se o piloto perdeu algum checkpoint.

Escreva um programa que leia o tempo base da volta e a quantidade de checkpoints perdidos e informe o resultado da corrida.

O tempo final da volta é dado por:

`tempo_final = tempo_base + checkpoints * 5`


Se o tempo final for de até 120 segundos e nenhum checkpoint tiver sido perdido, imprima `Corrida perfeita.`. Se o tempo final estiver dentro do limite, mas algum checkpoint tiver sido perdido, imprima `Corrida com penalidade.`. Se o tempo final ultrapassar 120 segundos, imprima `Tempo excedido.`.

## Entrada

1. O tempo base da volta, em segundos.
2. A quantidade de checkpoints perdidos.

## Saída
1. Resultado da corrida.

## Solução de referência

```python
tempo_base = float(input("Tempo base: "))
checkpoints = int(input("Checkpoints: "))
tempo_final = tempo_base + checkpoints * 5
if tempo_final <= 120:
    if checkpoints == 0:
        print("Corrida perfeita.")
    else:
        print("Corrida com penalidade.")
else:
    print("Tempo excedido.")
```

## Casos de teste

### Públicos

**Caso 1**

Entrada:

```text
120
0
```

Saída:

```text
Corrida perfeita.
```

**Caso 2**

Entrada:

```text
100
2
```

Saída:

```text
Corrida com penalidade.
```

**Caso 3**

Entrada:

```text
120
1
```

Saída:

```text
Tempo excedido.
```

### Privados

**Caso 4**

Entrada:

```text
150
10
```

Saída:

```text
Tempo excedido.
```

**Caso 5**

Entrada:

```text
50
0
```

Saída:

```text
Corrida perfeita.
```

**Caso 6**

Entrada:

```text
115
1
```

Saída:

```text
Corrida com penalidade.
```
