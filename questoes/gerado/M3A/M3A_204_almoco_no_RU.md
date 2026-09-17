**1. Título:** `Almoço no RU`

**2. Enunciado:**

Durante o horário de almoço, um estudante universitário chega ao restaurante universitário e passa o cartão para pagar o prato escolhido. O sistema verifica se o horário de chegada está dentro do período de atendimento e, estando dentro, se há saldo suficiente no cartão.

Escreva um programa que leia o horário de chegada, em horas inteiras, o saldo disponível no cartão e o preço do prato, e informe o resultado do atendimento.

* Se o horário estiver entre 11 e 14, incluindo os limites, e o saldo for suficiente para o prato, imprima `Refeição liberada.`.
* Se o horário estiver dentro do período, mas o saldo não for suficiente, imprima `Saldo insuficiente.`.
* Se o horário estiver fora do período de atendimento, imprima `Fora do horário.`.

**Entrada:**

1. Horário de chegada, em horas inteiras.
2. Saldo disponível no cartão.
3. Preço do prato escolhido.

**Saída:**

1. Mensagem exibida ao passar o cartão.

**3. Solução de referência:**

```python id="q6p4xn"
horario = int(input("Horário: "))
saldo = float(input("Saldo cartão: "))
preco = float(input("Preço prato: "))
if horario >= 11 and horario <= 14:
    if saldo >= preco:
        print("Refeição liberada.")
    else:
        print("Saldo insuficiente.")
else:
    print("Fora do horário.")
```

**4. Casos de teste:**

**Públicos:**

Entrada:

```text id="4f7g3a"
11
20
20
```

Saída:

```text id="j8q2vw"
Refeição liberada.
```

Entrada:

```text id="p5n6zc"
12
5
20
```

Saída:

```text id="s3m8yk"
Saldo insuficiente.
```

Entrada:

```text id="x7r1bd"
10
100
20
```

Saída:

```text id="k4t9mh"
Fora do horário.
```

**Privados:**

Entrada:

```text id="a6v2qe"
15
100
20
```

Saída:

```text id="n9w5ls"
Fora do horário.
```

Entrada:

```text id="c8d4pt"
14
30
20
```

Saída:

```text id="r2y7uf"
Refeição liberada.
```

Entrada:

```text id="m3k8hx"
13
19.99
20
```

Saída:

```text id="v6q1zs"
Saldo insuficiente.
```

