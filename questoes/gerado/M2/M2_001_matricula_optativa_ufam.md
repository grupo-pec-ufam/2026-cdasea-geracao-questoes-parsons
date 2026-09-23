**Título:** Matricula em Disciplina Avancada

**Enunciado:**


Uma coordenação de curso só libera a matrícula em uma disciplina avançada se o estudante tiver nota mínima em Cálculo e frequência mínima no semestre anterior.

Escreva um programa que leia a nota e a frequência do estudante e determine se a matrícula será liberada.

O programa deve ler:
1. A nota do estudante em Cálculo (número real).
2. A frequencia do estudante no semestre anterior, em percentual (número real).

Como saída, o programa deve imprimir:
1. A situacao: `Liberado` (se a nota for maior ou igual a 7 e a frequência for maior ou igual a 75) ou `Bloqueado` (caso contrário).
2. A nota informada, arredondada em duas casas decimais.

Tópico: Estrutura condicional composta com and/or.

Solução de referência:

```python
nota = float(input("nota: "))
frequencia = float(input("frequencia: "))
if nota >= 7 and frequencia >= 75:
    print("Liberado")
else:
    print("Bloqueado")
print(round(nota, 2))
```

Explicação passo a passo:
1. `nota = float(...)`: converte a nota lida para número real.
2. `frequencia = float(...)`: converte a frequência lida para número real.
3. `if nota >= 7 and frequencia >= 75:`: a matrícula só é liberada se ambas as condições forem verdadeiras.
4. `print("Liberado")`: executado quando as duas condições são satisfeitas.
5. `else:`: cobre os demais casos.
6. `print("Bloqueado")`: executado quando pelo menos uma condição falha.
7. `print(round(nota, 2))`: imprime a nota, fora do condicional.
O programa pressupõe entradas numéricas válidas e não trata frequência negativa.

Casos de teste:

Públicos:
8 / 80 → `Liberado` / `8.0` (ramo if, ambas verdadeiras)
8 / 70 → `Bloqueado` / `8.0` (ramo else, nota ok mas frequência não)
5 / 80 → `Bloqueado` / `5.0` (ramo else, frequência ok mas nota não)

Privados:
7 / 75 → `Liberado` / `7.0` (borda exata, ambas no limite)
6.99 / 75 → `Bloqueado` / `6.99` (nota logo abaixo da borda)
7 / 74.99 → `Bloqueado` / `7.0` (frequência logo abaixo da borda)
5 / 50 → `Bloqueado` / `5.0` (ramo else, ambas falsas)

Distratores (marcados):

```python
if nota >= 7 or frequencia >= 75:   # DISTRATOR de "if nota >= 7 and frequencia >= 75:" | Concepção 6: lógica booleana trocada (or no lugar de and)
else nota < 7:                      # DISTRATOR de "else:" | Concepção 4: else tratado como se aceitasse condição
```

Tópicos abordados: M2 – Estruturas condicionais compostas; M1 – Variáveis e programação sequencial.
