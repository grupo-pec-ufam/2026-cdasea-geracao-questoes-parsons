Matricula Optativa UFAM
Enunciado:

Um estudante de Engenharia de Computação da UFAM quer se matricular em uma disciplina optativa avançada. A coordenação só libera a matrícula se o estudante tiver nota mínima em Cálculo e frequência mínima no semestre anterior.

O programa deve ler:

1. A nota do estudante em Cálculo (número real).
2. A frequência do estudante no semestre anterior, em percentual (número real).

Como saída, o programa deve imprimir:

1. A situação: Habilitado (se a nota for maior ou igual a 7 e a frequência for maior ou igual a 75) ou Nao habilitado (caso contrário).
2. A nota informada, arredondada em duas casas decimais.

Tópico: Estrutura condicional composta com and/or.
Solução de referência:

```python
nota = float(input("nota: "))
frequencia = float(input("frequencia: "))
if nota >= 7 and frequencia >= 75:
    print("Habilitado")
else:
    print("Nao habilitado")
print(round(nota, 2))
```

Explicação passo a passo:

1. `nota = float(...)`: converte a nota lida para número real.
2. `frequencia = float(...)`: converte a frequência lida para número real.
3. `if nota >= 7 and frequencia >= 75:`: a matrícula só é liberada se ambas as condições forem verdadeiras — daí o uso do `and`.
4. `print("Habilitado")`: executado apenas quando as duas condições são satisfeitas.
5. `else:`: cobre todos os demais casos (qualquer uma das condições falha).
6. `print("Nao habilitado")`: executado quando pelo menos uma condição falha.
7. `print(round(nota, 2))`: imprime a nota, fora do condicional.
O programa pressupõe entradas numéricas válidas e não trata valores fora da faixa (ex.: frequência negativa).

Casos de teste:
Públicos:

* nota=8 / frequencia=80 → `Habilitado` / `8.0` (ramo if, ambas verdadeiras)
* nota=8 / frequencia=70 → `Nao habilitado` / `8.0` (ramo else, nota ok mas frequência não)
* nota=5 / frequencia=80 → `Nao habilitado` / `5.0` (ramo else, frequência ok mas nota não)

Privados:

* nota=7 / frequencia=75 → `Habilitado` / `7.0` (borda exata, ambas ≥ limite)
* nota=6.99 / frequencia=75 → `Nao habilitado` / `6.99` (nota logo abaixo da borda)
* nota=7 / frequencia=74.99 → `Nao habilitado` / `7.0` (frequência logo abaixo da borda)
* nota=5 / frequencia=50 → `Nao habilitado` / `5.0` (ramo else, ambas falsas)

Distratores (marcados):

```python
if nota >= 7 or frequencia >= 75:   # DISTRATOR de "if nota >= 7 and frequencia >= 75:" | Concepção 6: lógica booleana trocada (or no lugar de and)
else nota < 7:                      # DISTRATOR de "else:" | Concepção 4: else tratado como se aceitasse condição
```

Dicas de resolução: O operador `and` exige que todas as condições sejam verdadeiras; `or` exige que pelo menos uma seja. O `else` nunca recebe condição — ele cobre tudo que não caiu no `if`.
Tópicos abordados: M2 – Estruturas condicionais compostas; M1 – Variáveis e programação sequencial.
