## 1. Título: Proporcao de da Vinci

## 2. Enunciado:

Leonardo da Vinci estuda as proporções de um quadro e calcula a razão entre largura e altura para classificar o estilo da composição.

Escreva um programa que leia a largura e a altura do quadro, em centímetros, calcule a razão entre elas (arredondada a 3 casas decimais) e classifique a proporção.

$$razao = \dfrac{largura}{altura}$$

**Entrada 1:** largura do quadro, em cm (real). **Entrada 2:** altura do quadro, em cm (real).

**Saída:** se a razão for maior ou igual a 1, verifique se é maior ou igual a 1,6: em caso afirmativo, imprima Proporcao aurea; caso contrário, imprima Proporcao larga. Se a razão for menor que 1, verifique se é maior ou igual a 0,6: em caso afirmativo, imprima Proporcao estreita; caso contrário, imprima Proporcao fina.

**Tópico:** Condicional aninhada em ambos os ramos.

## 3. Solução de referência:

```python
largura = float(input("Largura cm: "))
altura = float(input("Altura cm: "))
razao = round(largura / altura, 3)
if razao >= 1:
    if razao >= 1.6:
        print("Proporcao aurea")
    else:
        print("Proporcao larga")
else:
    if razao >= 0.6:
        print("Proporcao estreita")
    else:
        print("Proporcao fina")
```

## 5. Casos de teste:

Públicos:

Entrada: 16 / 10 → Saída: Proporcao aurea (razao=1.6, ramo if→if, borda)
Entrada: 12 / 10 → Saída: Proporcao larga (razao=1.2, ramo if→else)
Entrada: 8 / 10 → Saída: Proporcao estreita (razao=0.8, ramo else→if)

Privados:

Entrada: 5 / 10 → Saída: Proporcao fina (razao=0.5, ramo else→else)
Entrada: 6 / 10 → Saída: Proporcao estreita (razao=0.6, borda exata)
Entrada: 20 / 10 → Saída: Proporcao aurea (razao=2.0, valor alto)

## 6. Distratores (marcados):

```python
if razao > 1:                      # DISTRATOR do fragmento "if razao >= 1:" | Concepção 2: erro de borda (> no lugar de >=)
```

```python
    if razao = 0.6:                # DISTRATOR do fragmento "if razao >= 0.6:" | Concepção 1: atribuição (=) no lugar de igualdade (==)
```

## 7. Tópicos abordados: Condicional aninhada (M3A) em múltiplos ramos, operadores aritméticos, conversão de tipos, arredondamento.