Seguindo as instruções do arquivo-fonte, removi o **tópico** e as explicações dos casos de teste, mantendo a solução de referência. Também deixei a entrada e a saída mais diretas para o CodeBench. 

### Questão corrigida

**1. Título:** `Laboratório de Radiação`

**2. Enunciado:**

Em um laboratório de pesquisa, uma cientista mede o nível de radiação emitido por uma amostra e compara com o limite considerado seguro. Quando o limite é ultrapassado, ela verifica se o equipamento de proteção individual estava sendo utilizado.

Escreva um programa que leia o nível de radiação medido, o limite seguro e se o equipamento de proteção estava em uso, informe o resultado da avaliação e a diferença entre o nível medido e o limite.

A diferença entre o nível medido e o limite seguro é calculada por:

`diferenca = abs(nivel - limite)`

**Entrada:**

1. Nível de radiação medido.
2. Limite seguro de radiação.
3. Valor inteiro que indica se o equipamento de proteção estava em uso (`1` para sim e `0` para não).

**Saída:**

1. Se o nível medido ultrapassar o limite seguro e o equipamento estiver em uso, imprima `Exposição alta mas protegida.`.
2. Se o nível ultrapassar o limite e o equipamento não estiver em uso, imprima `Exposição perigosa sem proteção.`.
3. Se o nível não ultrapassar o limite, imprima `Exposição dentro do limite seguro.`.
4. Diferença entre o nível medido e o limite, arredondada para duas casas decimais.

**3. Solução de referência:**

```python id="7x5j2m"
nivel = float(input("Radiação: "))
limite = float(input("Limite seguro: "))
protecao = int(input("Proteção: "))
diferenca = abs(nivel - limite)
if nivel > limite:
    if protecao == 1:
        print("Exposição alta mas protegida.")
    else:
        print("Exposição perigosa sem proteção.")
else:
    print("Exposição dentro do limite seguro.")
print(round(diferenca, 2))
```

**4. Casos de teste:**

**Públicos:**

Entrada:

```text
80
50
1
```

Saída:

```text
Exposição alta mas protegida.
30.0
```

Entrada:

```text
80
50
0
```

Saída:

```text
Exposição perigosa sem proteção.
30.0
```

Entrada:

```text
50
50
0
```

Saída:

```text
Exposição dentro do limite seguro.
0.0
```

**Privados:**

Entrada:

```text
10
50
1
```

Saída:

```text
Exposição dentro do limite seguro.
40.0
```

Entrada:

```text
50.1
50
1
```

Saída:

```text
Exposição alta mas protegida.
0.1
```

Entrada:

```text
200
50
0
```

Saída:

```text
Exposição perigosa sem proteção.
150.0
```

