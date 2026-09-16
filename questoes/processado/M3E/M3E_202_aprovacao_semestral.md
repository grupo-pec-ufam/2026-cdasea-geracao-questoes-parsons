**1. Título:** `M3E Aprovação no Semestre`

**2. Enunciado:**

Um estudante da UFAM quer verificar sua situação em uma disciplina antes do fechamento do período letivo.

Escreva um programa que leia a nota final e a frequência do estudante e informe sua situação na disciplina, exibindo também a nota informada.

* Se a nota for maior ou igual a 7 e a frequência maior ou igual a 75, imprima `Aprovado direto.`.
* Se a nota for maior ou igual a 5 e a frequência maior ou igual a 75, imprima `Aprovado para exame final.`.
* Caso contrário, imprima `Reprovado no período.`.

**Entrada:**

1. Primeira nota final do estudante.
2. Frequência inteira do estudante, em porcentagem.

**Saída:**

1. Situação atual do estudante.
2. Nota do aluno arredondada para uma casa decimal.

**3. Solução de referência:**

```python
nota = float(input("Nota: "))

frequencia = int(input("Frequência: "))

if nota >= 7 and frequencia >= 75:
    print("Aprovado direto.")

elif nota >= 5 and frequencia >= 75:
    print("Aprovado para exame final.")

else:
    print("Reprovado no período.")

print(round(nota, 1))
```

**4. Casos de teste:**

**Públicos:**

Entrada:

```text
8.0
90
```

Saída:

```text
Aprovado direto.
8.0
```

Entrada:

```text
6.0
80
```

Saída:

```text
Aprovado para exame final.
6.0
```

Entrada:

```text
3.0
60
```

Saída:

```text
Reprovado no período.
3.0
```

**Privados:**

Entrada:

```text
7.0
75
```

Saída:

```text
Aprovado direto.
7.0
```

Entrada:

```text
8.0
50
```

Saída:

```text
Reprovado no período.
8.0
```

Entrada:

```text
5.0
75
```

Saída:

```text
Aprovado para exame final.
5.0
```
