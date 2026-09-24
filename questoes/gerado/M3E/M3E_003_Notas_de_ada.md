## 1. Título: Notas de Ada

## 2. Enunciado:

Ada Lovelace, pioneira da computação, está revisando as notas finais de um curso introdutório de lógica computacional. Sabe-se que a nota informada está sempre entre 5 e 10.

Escreva um programa que leia a nota final do aluno e informe a situação dele.

**Entrada:** a nota final do aluno, valor inteiro entre 5 e 10.

**Saída:** se a nota for maior ou igual a 7, imprima Aprovado; caso contrário (nota entre 5 e 6), imprima Recuperacao.

**Tópico:** Condicional encadeada com elif.

## 3. Solução de referência:

```python
nota = int(input("Nota: "))
if nota >= 7:
    print("Aprovado")
elif nota >= 5:
    print("Recuperacao")
```

## 5. Casos de teste:

Públicos:

Entrada: 8 → Saída: Aprovado (ramo if, caso geral)
Entrada: 5 → Saída: Recuperacao (ramo elif, borda inferior)
Entrada: 6 → Saída: Recuperacao (ramo elif, caso geral)

Privados:

Entrada: 7 → Saída: Aprovado (borda exata do if)
Entrada: 10 → Saída: Aprovado (valor máximo)
Entrada: 9 → Saída: Aprovado (caso extra do if)


## 7. Distratores (marcados):

```python
if nota > 7:              # DISTRATOR do fragmento "if nota >= 7:" | Concepção 2: erro de borda (> no lugar de >=)
```
```python
elif nota >= 5              # DISTRATOR do fragmento "elif nota >= 5:" | Concepção 3: ausência dos dois-pontos
```

## 9. Tópicos abordados: Estrutura condicional simples e composta, comando elif, operadores relacionais, conversão de tipos.