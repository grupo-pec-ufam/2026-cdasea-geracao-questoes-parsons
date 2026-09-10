Escudo Termico Reentrada

Durante a reentrada atmosférica de uma cápsula espacial, o escudo térmico precisa suportar o atrito gerado pela velocidade de queda. Quanto maior a velocidade e menor a altitude, maior o aquecimento na superfície da cápsula.

Escreva um programa que leia a velocidade de reentrada e a altitude atual, calcule o índice de aquecimento do escudo térmico e classifique sua condição.

A fórmula é:
[aquecimento = \frac{velocidade^2}{altitude}]

Classificação:

* aquecimento maior ou igual a 500: Escudo em risco
* aquecimento maior ou igual a 200 e menor que 500: Escudo aquecido
* caso contrário (menor que 200): Escudo estavel

O programa deve ler:

1. A velocidade de reentrada, em km/s (número real).
2. A altitude atual, em km (número real, estritamente positiva).

Como saída, o programa deve imprimir:

1. A classificação do escudo (Escudo em risco, Escudo aquecido ou Escudo estavel).
2. O aquecimento calculado, arredondado em duas casas decimais.

Tópico: Estrutura condicional encadeada (if/elif/else).
Solução de referência:

```python
velocidade = float(input("velocidade: "))
altitude = float(input("altitude: "))
aquecimento = (velocidade ** 2) / altitude
if aquecimento >= 500:
    print("Escudo em risco")
elif aquecimento >= 200:
    print("Escudo aquecido")
else:
    print("Escudo estavel")
print(round(aquecimento, 2))
```

Explicação passo a passo:

1. `velocidade = float(...)`: converte a velocidade lida para número real.
2. `altitude = float(...)`: converte a altitude lida para número real.
3. `aquecimento = (velocidade ** 2) / altitude`: aplica a fórmula, elevando a velocidade ao quadrado com `**` antes de dividir pela altitude.
4. `if aquecimento >= 500:`: testa o ramo mais crítico primeiro.
5. `elif aquecimento >= 200:`: avaliado apenas se o `if` anterior for falso, mantendo os ramos mutuamente exclusivos.
6. `else:`: cobre todos os valores restantes (aquecimento menor que 200).
7. `print(round(aquecimento, 2))`: imprime o índice calculado, fora do condicional.
O programa pressupõe `altitude > 0` e não trata entradas inválidas.

Casos de teste:
Públicos:

* velocidade=100 / altitude=10 → aquecimento=1000.0 → `Escudo em risco` / `1000.0` (ramo if)
* velocidade=100 / altitude=40 → aquecimento=250.0 → `Escudo aquecido` / `250.0` (ramo elif)
* velocidade=100 / altitude=100 → aquecimento=100.0 → `Escudo estavel` / `100.0` (ramo else)

Privados:

* velocidade=100 / altitude=20 → aquecimento=500.0 → `Escudo em risco` / `500.0` (borda ≥500)
* velocidade=100 / altitude=20.0004 → aquecimento≈499.99 → `Escudo aquecido` / `499.99` (logo abaixo de 500)
* velocidade=100 / altitude=50 → aquecimento=200.0 → `Escudo aquecido` / `200.0` (borda ≥200)
* velocidade=100 / altitude=50.0025 → aquecimento≈199.99 → `Escudo estavel` / `199.99` (logo abaixo de 200)

Distratores (marcados):

```python
if aquecimento > 500:                              # DISTRATOR de "if aquecimento >= 500:" | Concepção 2: erro de borda (> no lugar de >=)
aquecimento = (velocidade ** 2) // altitude        # DISTRATOR de "aquecimento = (velocidade ** 2) / altitude" | Concepção 8: confusão entre operadores de divisão (// no lugar de /)
```

Dicas de resolução: O operador `**` calcula potenciação. Use `>=` quando o valor limite pertence ao próprio ramo da condição. `/` faz divisão real, diferente de `//` (divisão inteira).
Tópicos abordados: M3E – Estruturas condicionais encadeadas (elif).
