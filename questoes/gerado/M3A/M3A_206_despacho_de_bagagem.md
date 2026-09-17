## **M3A Despacho de Bagagem**

## Enunciado

No check-in de um voo internacional, um passageiro despacha uma mala e leva também uma bagagem de mão. A companhia aérea confere se o peso da mala despachada está dentro do limite e, estando dentro, verifica se a bagagem de mão também respeita o limite permitido.

Escreva um programa que leia o peso da mala despachada e o peso da bagagem de mão, informe o resultado da conferência e o peso total transportado.

O peso total transportado é dado por:

`peso_total = peso_mala + peso_mao`

## Entrada

1. O peso da mala despachada, em quilogramas.
2. O peso da bagagem de mão, em quilogramas.

## Saída

1. Se a mala pesar até 23 kg e a bagagem de mão até 10 kg, imprima `Bagagem aprovada.`. Se a mala estiver dentro do limite, mas a bagagem de mão exceder 10 kg, imprima `Excesso na mão.`. Se a mala exceder 23 kg, imprima `Excesso na mala.`.
2. O peso total transportado, arredondado com uma casa decimal.

## Solução de referência

```python
peso_mala = float(input("Peso mala: "))
peso_mao = float(input("Peso mão: "))
peso_total = peso_mala + peso_mao
if peso_mala <= 23:
    if peso_mao <= 10:
        print("Bagagem aprovada.")
    else:
        print("Excesso na mão.")
else:
    print("Excesso na mala.")
print(round(peso_total, 1))
```

## Casos de teste

### Públicos

**Caso 1**

Entrada:

```text
23
10
```

Saída:

```text
Bagagem aprovada.
33.0
```

**Caso 2**

Entrada:

```text
23
10.1
```

Saída:

```text
Excesso na mão.
33.1
```

**Caso 3**

Entrada:

```text
23.1
5
```

Saída:

```text
Excesso na mala.
28.1
```

### Privados

**Caso 4**

Entrada:

```text
30
5
```

Saída:

```text
Excesso na mala.
35.0
```

**Caso 5**

Entrada:

```text
10
5
```

Saída:

```text
Bagagem aprovada.
15.0
```

**Caso 6**

Entrada:

```text
15
15
```

Saída:

```text
Excesso na mão.
30.0
```
