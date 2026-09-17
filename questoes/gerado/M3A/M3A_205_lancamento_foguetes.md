
**1. Título:** `Lançamento do Foguete`

**2. Enunciado:**

Uma equipe de engenharia aeroespacial prepara o lançamento de um foguete e precisa confirmar se há combustível suficiente para a missão. Havendo combustível, a equipe ainda avalia se a velocidade do vento permite abrir a janela de lançamento.

Escreva um programa que leia a quantidade de combustível disponível, o consumo previsto para a missão e a velocidade do vento, informe o resultado da decisão de lançamento e o combustível excedente.

O combustível excedente é calculado por:

`sobra = combustivel - consumo`

**Entrada:**

1. Quantidade de combustível disponível.
2. Consumo previsto para a missão.
3. Velocidade do vento.

**Saída:**

1. Se houver combustível suficiente e o vento for menor ou igual a 20, imprima `Lançamento autorizado.`.
2. Se houver combustível suficiente, mas o vento for maior que 20, imprima `Lançamento adiado.`.
3. Se não houver combustível suficiente, imprima `Combustível insuficiente.`.
4. Combustível excedente, arredondado para uma casa decimal.

**3. Solução de referência:**

```python id="k7m2qx"
combustivel = float(input("Combustível: "))
consumo = float(input("Consumo: "))
vento = float(input("Vento kmh: "))
sobra = combustivel - consumo
if sobra >= 0:
    if vento <= 20:
        print("Lançamento autorizado.")
    else:
        print("Lançamento adiado.")
else:
    print("Combustível insuficiente.")
print(round(sobra, 1))
```

**4. Casos de teste:**

**Públicos:**

Entrada:

```text
50
50
20
```

Saída:

```text
Lançamento autorizado.
0.0
```

Entrada:

```text
80
50
20.1
```

Saída:

```text
Lançamento adiado.
30.0
```

Entrada:

```text
49.9
50
10
```

Saída:

```text
Combustível insuficiente.
-0.1
```

**Privados:**

Entrada:

```text
10
50
5
```

Saída:

```text
Combustível insuficiente.
-40.0
```

Entrada:

```text
100
20
10
```

Saída:

```text
Lançamento autorizado.
80.0
```

Entrada:

```text
100
20
25
```

Saída:

```text
Lançamento adiado.
80.0
```

