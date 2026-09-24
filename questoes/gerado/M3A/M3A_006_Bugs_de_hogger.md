## 1. Título: Bugs de Hopper 

## 2. Enunciado:

Grace Hopper revisa um log de bugs numerados e precisa classificar cada código de bug registrado. Sabe-se que o código informado nunca é negativo.

Escreva um programa que leia o número do código do bug e informe se ele é par ou ímpar.

**Entrada:** o número do código do bug, valor inteiro maior ou igual a zero.

**Saída:** se o código for par, imprima Bug par; caso contrário, imprima Bug impar.

**Tópico:** Condicional aninhada (if dentro de if).

##3. Solução de referência:

```python
codigo = int(input("Codigo bug: "))
if codigo >= 0:
    if codigo % 2 == 0:
        print("Bug par")
    else:
        print("Bug impar")
```

## 5. Casos de teste:

Públicos:

Entrada: 4 → Saída: Bug par (ramo if interno)
Entrada: 7 → Saída: Bug impar (ramo else interno)
Entrada: 0 → Saída: Bug par (borda zero)

Privados:

Entrada: 1 → Saída: Bug impar (menor ímpar)
Entrada: 100 → Saída: Bug par (valor alto par)
Entrada: 99 → Saída: Bug impar (valor alto ímpar)

## 6. Distratores (marcados):

```python
    if codigo % 2 = 0:              # DISTRATOR do fragmento "if codigo % 2 == 0:" | Concepção 1: atribuição (=) no lugar de igualdade (==)
```

```python
if codigo > 0:                      # DISTRATOR do fragmento "if codigo >= 0:" | Concepção 2: erro de borda (> no lugar de >=)
```

## 7. Tópicos abordados: Condicional aninhada, operador de resto, conversão de tipos.