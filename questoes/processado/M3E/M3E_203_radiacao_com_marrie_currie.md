**1. Título:** `Radiação com Marie Curie`

**2. Enunciado:**

Marie Curie recolhe duas amostras em seu laboratório e precisa classificar o nível médio de radiação antes de armazená-las.

A média das duas leituras é calculada por:

`M = (A + B) / 2`

onde `A` é a leitura da primeira amostra, `B` é a leitura da segunda amostra e `M` é a média das duas leituras.

* Se a média for menor que 5, imprima `Nível seguro.`.
* Se a média for menor ou igual a 20, imprima `Nível de cautela.`.
* Caso contrário, imprima `Nível de perigo.`.

**Entrada:**

1. Leitura inteira da primeira amostra.
2. Leitura inteira da segunda amostra.

**Saída:**

1. Classificação de segurança da radiação.
2. Média de radiação arredondada para uma casa decimal.

**3. Solução de referência:**

```python
amostra_a = int(input("Amostra A: "))

amostra_b = int(input("Amostra B: "))

media = (amostra_a + amostra_b) / 2

if media < 5:

    print("Nível seguro.")

elif media <= 20:

    print("Nível de cautela.")

else:

    print("Nível de perigo.")

print(round(media, 1))
```

**4. Casos de teste:**

**Públicos:**

Entrada:

```text
2
2
```

Saída:

```text
Nível seguro.
2.0
```

Entrada:

```text
10
10
```

Saída:

```text
Nível de cautela.
10.0
```

Entrada:

```text
30
30
```

Saída:

```text
Nível de perigo.
30.0
```

**Privados:**

Entrada:

```text
5
5
```

Saída:

```text
Nível de cautela.
5.0
```

Entrada:

```text
3
4
```

Saída:

```text
Nível seguro.
3.5
```

Entrada:

```text
21
21
```

Saída:

```text
Nível de perigo.
21.0
```