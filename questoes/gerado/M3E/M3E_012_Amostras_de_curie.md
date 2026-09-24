## 1. Título: Amostras de Curie

## 2. Enunciado:

Marie Curie analisa amostras radioativas em seu laboratório, calculando um índice de risco a partir da atividade, da meia-vida e da massa de cada amostra.

Escreva um programa que leia a massa, a atividade e a meia-vida da amostra, calcule o índice de risco (arredondado a 2 casas decimais) e classifique o nível de perigo.

$$indice = \dfrac{atividade \times meia\_vida}{massa}$$

**Entrada 1:** massa da amostra, em gramas (real). **Entrada 2:** atividade, em becquerels (real). Entrada 3: meia-vida, em dias (real).

**Saída:** se o índice for maior ou igual a 100, imprima Nivel critico; se for maior ou igual a 50, imprima Nivel alto; se for maior ou igual a 20, imprima Nivel moderado; se for maior ou igual a 5, imprima Nivel baixo; caso contrário, imprima Nivel seguro.

**Tópico:** Condicional encadeada com múltiplos níveis.

## 3. Solução de referência:

```python
massa = float(input("Massa g: "))
atividade = float(input("Atividade Bq: "))
meia_vida = float(input("Meia vida d: "))
indice = round((atividade * meia_vida) / massa, 2)
if indice >= 100:
    print("Nivel critico")
elif indice >= 50:
    print("Nivel alto")
elif indice >= 20:
    print("Nivel moderado")
elif indice >= 5:
    print("Nivel baixo")
else:
    print("Nivel seguro")
```

## 5. Casos de teste:

Públicos:

Entrada: 1 / 200 / 1 → Saída: Nivel critico (indice=200.0, ramo if)
Entrada: 2 / 80 / 2 → Saída: Nivel alto (indice=80.0, primeiro elif)
Entrada: 4 / 40 / 4 → Saída: Nivel moderado (indice=40.0, segundo elif)

Privados:

Entrada: 10 / 30 / 3 → Saída: Nivel baixo (indice=9.0, terceiro elif)
Entrada: 10 / 1 / 1 → Saída: Nivel seguro (indice=0.1, ramo else)
Entrada: 1 / 100 / 1 → Saída: Nivel critico (indice=100.0, borda exata)

## 6. Distratores (marcados):

```python
if indice > 100:                   # DISTRATOR do fragmento "if indice >= 100:" | Concepção 2: erro de borda (> no lugar de >=)
```

```python
elif indice >= 50                  # DISTRATOR do fragmento "elif indice >= 50:" | Concepção 3: ausência dos dois-pontos
```

## 7. Tópicos abordados: Condicional encadeada com múltiplos elif, conversão de tipos, arredondamento, operadores aritméticos.