## 1. Título: Tinta de Frida

## 2. Enunciado:

Frida Kahlo mistura pigmentos em seu ateliê e precisa manter a temperatura da tinta dentro de faixas ideais de trabalho. Sabe-se que a temperatura informada nunca é menor que 15 graus.

Escreva um programa que leia a temperatura da tinta e informe sua classificação.

**Entrada:** a temperatura da tinta em graus Celsius, valor inteiro maior ou igual a 15.

**Saída:** se a temperatura for maior ou igual a 30, imprima Tinta quente; caso contrário, imprima Tinta morna.

**Tópico:** Condicional encadeada com elif.

## 3. Solução de referência:

```python
temp = int(input("Temp tinta: "))
if temp >= 30:
    print("Tinta quente")
elif temp >= 15:
    print("Tinta morna")
```

## 5. Casos de teste:

Públicos:

Entrada: 35 → Saída: Tinta quente (ramo if)
Entrada: 15 → Saída: Tinta morna (ramo elif, borda inferior)
Entrada: 20 → Saída: Tinta morna (ramo elif, caso geral)

Privados:

Entrada: 30 → Saída: Tinta quente (borda exata do if)
Entrada: 100 → Saída: Tinta quente (valor alto)
Entrada: 16 → Saída: Tinta morna (logo acima da borda mínima)

## 6. Distratores (marcados):

```python
if temp > 30:                  # DISTRATOR do fragmento "if temp >= 30:" | Concepção 2: erro de borda (> no lugar de >=)
```

```python
if temp >= 15:                 # DISTRATOR do fragmento "elif temp >= 15:" | Concepção 6: elif confundido com um novo if independente
```

## 7. Tópicos abordados: Estrutura condicional encadeada (elif), operadores relacionais.