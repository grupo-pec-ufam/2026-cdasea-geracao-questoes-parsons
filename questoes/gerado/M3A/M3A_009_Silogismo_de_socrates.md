## 1. Título: Silogismo de Aristoteles

## 2. Enunciado:

Aristóteles avalia a solidez de silogismos apresentados por seus discípulos, atribuindo notas a cada premissa apresentada.

Escreva um programa que leia as notas das duas premissas, calcule a média (arredondada a 1 casa decimal) e classifique o silogismo.

$$media = \dfrac{premissa1 + premissa2}{2}$$

**Entrada 1:** nota da premissa 1, valor inteiro de 0 a 10. **Entrada 2:** nota da premissa 2, valor inteiro de 0 a 10.

**Saída:** se a média for maior ou igual a 5, verifique se é maior ou igual a 8: em caso afirmativo, imprima Silogismo valido; caso contrário, imprima Silogismo revisar. Se a média for menor que 5, imprima Silogismo invalido.

**Tópico:** Condicional aninhada com cálculo prévio.

## 3. Solução de referência:

```python
premissa1 = int(input("Premissa1: "))
premissa2 = int(input("Premissa2: "))
media = round((premissa1 + premissa2) / 2, 1)
if media >= 5:
    if media >= 8:
        print("Silogismo valido")
    else:
        print("Silogismo revisar")
else:
    print("Silogismo invalido")
```

## 5. Casos de teste:

Públicos:

Entrada: 9 / 9 → Saída: Silogismo valido (media=9.0, ramo if→if)
Entrada: 6 / 6 → Saída: Silogismo revisar (media=6.0, ramo if→else)
Entrada: 2 / 2 → Saída: Silogismo invalido (media=2.0, ramo else externo)

Privados:

Entrada: 10 / 6 → Saída: Silogismo valido (media=8.0, borda exata)
Entrada: 5 / 5 → Saída: Silogismo revisar (media=5.0, borda exata)
Entrada: 4 / 5 → Saída: Silogismo invalido (media=4.5, logo abaixo da borda)

## 6. Distratores (marcados):

```python
if media > 5:                      # DISTRATOR do fragmento "if media >= 5:" | Concepção 2: erro de borda (> no lugar de >=)
```

```python
else media < 5:                    # DISTRATOR do fragmento "else:" (externo) | Concepção 5: else tratado como se aceitasse condição
```

## 7. Tópicos abordados: Condicional aninhada (M3A), operadores aritméticos, arredondamento, operadores relacionais.