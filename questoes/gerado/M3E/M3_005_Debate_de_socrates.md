## 1. ##Título: Debate de Socrates 

## 2. Enunciado:

Sócrates avalia jovens filósofos para uma categoria de debate público com base nos anos de prática retórica de cada candidato. Sabe-se que todo candidato tem pelo menos 5 anos de prática.

Escreva um programa que leia os anos de prática retórica do candidato, calcule sua pontuação e informe a categoria de debate.

A pontuação é calculada multiplicando os anos de prática por 2:

$$pontos = anos\_pratica \times 2$$

**Entrada:** os anos de prática retórica do candidato, valor inteiro maior ou igual a 5.

**Saída:** se a pontuação for maior ou igual a 20, imprima Categoria Livre; caso contrário, imprima Categoria Jovem.

**Tópico:** Condicional encadeada com cálculo prévio.

## 3. Solução de referência:

```python
anos_pratica = int(input("Anos pratica: "))
pontos = anos_pratica * 2
if pontos >= 20:
    print("Categoria Livre")
elif pontos >= 10:
    print("Categoria Jovem")
```
 
## 5. Casos de teste:

Públicos:

Entrada: 10 → Saída: Categoria Livre (ramo if, pontos=20, borda)
Entrada: 5 → Saída: Categoria Jovem (ramo elif, pontos=10, borda inferior)
Entrada: 7 → Saída: Categoria Jovem (ramo elif, pontos=14)

Privados:

Entrada: 9 → Saída: Categoria Jovem (pontos=18, logo abaixo da borda do if)
Entrada: 15 → Saída: Categoria Livre (pontos=30)
Entrada: 6 → Saída: Categoria Jovem (pontos=12)

## 6. Distratores (marcados):

```python
if pontos > 20:              # DISTRATOR do fragmento "if pontos >= 20:" | Concepção 2: erro de borda (> no lugar de >=)
```

```python
elif pontos >= 10              # DISTRATOR do fragmento "elif pontos >= 10:" | Concepção 3: ausência dos dois-pontos
```

## 7. Tópicos abordados: Estrutura condicional encadeada (elif), operadores aritméticos, operadores relacionais.