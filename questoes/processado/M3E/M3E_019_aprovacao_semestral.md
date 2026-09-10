
**1. Título:** `Aprovação no Semestre`

**2. Enunciado:**

Um estudante da UFAM quer verificar sua situação em uma disciplina antes do fechamento do período letivo.

Escreva um programa que leia a nota final e a frequência do estudante e informe sua situação na disciplina, exibindo também a nota informada.

- Se a nota for maior ou igual a 7 e a frequência maior ou igual a 75, imprima `Aprovado direto.`; 
- Se a nota for maior ou igual a 5 e a frequência maior ou igual a 75, imprima `Aprovado para exame final.`;
- Caso contrário, imprima `Reprovado no período.`

**Entrada:**
1. A primeira linha corresponde a nota final do estudante.
2. A segunda linha corresponde a frequência inteira do estudante, em porcentagem.

**Saída:**
1. Na primeira linha informe a situação atual do estudante.
2. Na segunda linha informe a nota do aluno arredondada para uma casa decimal.


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

Públicos:
- Entrada: `8.0` / `90` -> Saída: `Aprovado direto.` / `8.0` (ramo if)
- Entrada: `6.0` / `80` -> Saída: `Aprovado para exame final.` / `6.0` (ramo elif)
- Entrada: `3.0` / `60` -> Saída: `Reprovado no período.` / `3.0` (ramo else)

Privados:
- Entrada: `7.0` / `75` -> Saída: `Aprovado direto.` / `7.0` (ramo if, borda nota=7 e frequência=75)
- Entrada: `8.0` / `50` -> Saída: `Reprovado no período.` / `8.0` (ramo else, nota alta mas frequência insuficiente)
- Entrada: `5.0` / `75` -> Saída: `Aprovado para exame final.` / `5.0` (ramo elif, borda nota=5)

**5. Distratores (marcados):**

``` python
if nota >= 7 or frequencia >= 75:      # DISTRATOR do fragmento "if nota >= 7 and frequencia >= 75:" | Concepção 7: lógica booleana trocada (or no lugar de and)
print("Aprovado direto.")              # DISTRATOR do fragmento "print(round(nota, 1))" | Concepção 10: efeito colateral no ramo errado
```

**6. Dicas de resolução:**

`float()` converte o texto retornado por `input()` em número real, permitindo casas decimais. O operador `and` combina duas condições, exigindo que ambas sejam verdadeiras. `round(valor, 1)` arredonda o número para uma casa decimal.

**7. Tópicos abordados:**

Operadores lógicos (and); Arredondamento com round(); Conversão de tipos (float).
