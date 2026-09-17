Seguindo as instruções das fontes, removi o tópico e as justificativas dos casos de teste, mantive o enunciado objetivo e preservei a solução de referência sem alterações. 

# 9. Taça da Escola de Magia

## Enunciado

Ao final do semestre em uma escola de magia, os pontos acumulados por uma casa durante o ano são somados aos pontos de bônus conquistados em um evento especial. A diretoria verifica se a pontuação total atinge o mínimo exigido para a taça e, caso atinja, confere se a casa cometeu alguma infração grave.

Escreva um programa que leia os pontos acumulados pela casa, os pontos de bônus do evento e a quantidade de infrações graves cometidas, e informe o resultado da disputa pela taça.

A pontuação total da casa é dada por:

`pontos_totais = pontos + bonus`

Se a pontuação total for de pelo menos 500 pontos e não houver infrações graves, imprima `Casa vence a taça.`. Se a pontuação total atingir o mínimo, mas houver ao menos uma infração grave, imprima `Casa desclassificada.`. Se a pontuação total não atingir 500 pontos, imprima `Pontuação insuficiente.`.


## Entrada

1. Os pontos acumulados pela casa durante o ano.
2. Os pontos de bônus conquistados no evento especial.
3. A quantidade de infrações graves cometidas pela casa.

## Saída

1. Resultado da Disputa pela taça.

## Solução de referência

```python
pontos = int(input("Pontos casa: "))
bonus = int(input("Bônus evento: "))
infracoes = int(input("Infrações: "))
pontos_totais = pontos + bonus
if pontos_totais >= 500:
    if infracoes == 0:
        print("Casa vence a taça.")
    else:
        print("Casa desclassificada.")
else:
    print("Pontuação insuficiente.")
```

## Casos de teste

### Públicos

**Caso 1**

Entrada:

```text
400
100
0
```

Saída:

```text
Casa vence a taça.
```

**Caso 2**

Entrada:

```text
400
100
1
```

Saída:

```text
Casa desclassificada.
```

**Caso 3**

Entrada:

```text
400
99
0
```

Saída:

```text
Pontuação insuficiente.
```

### Privados

**Caso 4**

Entrada:

```text
0
0
0
```

Saída:

```text
Pontuação insuficiente.
```

**Caso 5**

Entrada:

```text
600
0
0
```

Saída:

```text
Casa vence a taça.
```

**Caso 6**

Entrada:

```text
700
50
3
```

Saída:

```text
Casa desclassificada.
```
