## 1. Título: Cifra de Turing

## 2. Enunciado: Alan Turing analisa mensagens interceptadas e calcula uma pontuação de complexidade para decidir como classificar a cifra utilizada.

Escreva um programa que leia o tamanho da mensagem e o nível da cifra, calcule a pontuação (soma dos dois valores) e classifique a cifra.

$$pontuacao = tamanho + nivel$$

**Entrada 1:** tamanho da mensagem, em caracteres (inteiro). **Entrada 2:** nível da cifra (inteiro).

**Saída:** se a pontuação for maior ou igual a 20, verifique a paridade: se par, imprima Cifra forte par; se ímpar, imprima Cifra forte impar. Se a pontuação for menor que 20, imprima Cifra fraca.

**Tópico:** Condicional aninhada com cálculo prévio.

## 3. Solução de referência:

```python
tamanho = int(input("Tam mensagem: "))
nivel = int(input("Nivel cifra: "))
pontuacao = tamanho + nivel
if pontuacao >= 20:
    if pontuacao % 2 == 0:
        print("Cifra forte par")
    else:
        print("Cifra forte impar")
else:
    print("Cifra fraca")
```

## 5. Casos de teste:

Públicos:

Entrada: 15 / 10 → Saída: Cifra forte impar (pontuacao=25, ramo if→else interno)
Entrada: 10 / 10 → Saída: Cifra forte par (pontuacao=20, ramo if→if interno, borda)
Entrada: 5 / 5 → Saída: Cifra fraca (pontuacao=10, ramo else externo)

Privados:

Entrada: 19 / 1 → Saída: Cifra forte par (pontuacao=20, borda exata externa)
Entrada: 1 / 1 → Saída: Cifra fraca (pontuacao=2, valor mínimo)
Entrada: 12 / 9 → Saída: Cifra forte impar (pontuacao=21)

## 6. Distratores (marcados):

```python
if pontuacao > 20:                 # DISTRATOR do fragmento "if pontuacao >= 20:" | Concepção 2: erro de borda (> no lugar de >=)
```

```python
    if pontuacao % 2 = 0:          # DISTRATOR do fragmento "if pontuacao % 2 == 0:" | Concepção 1: atribuição (=) no lugar de igualdade (==)
```

## 7. Tópicos abordados: Condicional aninhada (M3A), operadores aritméticos, operador de resto, conversão de tipos.