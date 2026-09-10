Auxilio Estudantil UFAM


A Pró-Reitoria de Assuntos Estudantis da UFAM concede auxílios financeiros com base na renda per capita familiar do estudante. Quanto menor a renda, maior o valor do auxílio.
Escreva um programa que leia a renda familiar total e o número de pessoas na família, calcule a renda per capita e determine o valor do auxílio concedido.
A fórmula é:
[renda_per_capita = \frac{renda_familiar}{pessoas}]
Classificação:

* renda_per_capita menor que 500: R$ 700,00
* renda_per_capita maior ou igual a 500 e menor que 1500: R$ 400,00
* renda_per_capita maior ou igual a 1500: sem direito a auxílio

O programa deve ler:

1. A renda_familiar total da família do estudante, em reais (número real).
2. O número de pessoas que vivem na mesma residência (número inteiro, estritamente positivo).

Como saída, o programa deve imprimir:

1. O valor do auxílio concedido (700.0, 400.0 ou 0.0).
2. A renda_per_capita calculada, arredondada em duas casas decimais.

Tópico: Estrutura condicional encadeada (if/elif/else).
Solução de referência:

```python
renda_familiar = float(input("renda_familiar: "))
pessoas = int(input("pessoas: "))
renda_per_capita = renda_familiar / pessoas
if renda_per_capita < 500:
    print(700.0)
elif renda_per_capita < 1500:
    print(400.0)
else:
    print(0.0)
print(round(renda_per_capita, 2))

```

Explicação passo a passo:

1. `renda_familiar = float(...)`: converte a renda familiar lida para número real.
2. `pessoas = int(...)`: converte o número de pessoas para inteiro, já que representa uma contagem exata.
3. `renda_per_capita = renda_familiar / pessoas`: aplica a fórmula, dividindo a renda total pelo número de pessoas.
4. `if renda_per_capita < 500:`: testa primeiro a faixa de maior auxílio.
5. `elif renda_per_capita < 1500:`: avaliado apenas se o `if` anterior for falso, cobrindo a faixa intermediária.
6. `else:`: cobre os valores restantes (renda per capita maior ou igual a 1500, sem direito a auxílio).
7. `print(round(renda_per_capita, 2))`: imprime a renda per capita calculada, fora do condicional.
O programa pressupõe `pessoas > 0` e não trata entradas inválidas.

Casos de teste:
Públicos:

* renda_familiar=800 / pessoas=4 → renda_per_capita=200.0 → `700.0` / `200.0` (ramo if)
* renda_familiar=4000 / pessoas=4 → renda_per_capita=1000.0 → `400.0` / `1000.0` (ramo elif)
* renda_familiar=8000 / pessoas=4 → renda_per_capita=2000.0 → `0.0` / `2000.0` (ramo else)

Privados:

* renda_familiar=2000 / pessoas=4 → renda_per_capita=500.0 → `400.0` / `500.0` (borda, entra no elif pois não é < 500)
* renda_familiar=1996 / pessoas=4 → renda_per_capita=499.0 → `700.0` / `499.0` (logo abaixo de 500)
* renda_familiar=6000 / pessoas=4 → renda_per_capita=1500.0 → `0.0` / `1500.0` (borda, cai no else pois não é < 1500)
* renda_familiar=5996 / pessoas=4 → renda_per_capita=1499.0 → `400.0` / `1499.0` (logo abaixo de 1500)

Distratores (marcados):

```python
pessoas = float(input("pessoas: "))         # DISTRATOR de "pessoas = int(input("pessoas: "))" | Concepção 7: conversão de tipo incorreta (float em vez de int)
if renda_per_capita <= 500:                 # DISTRATOR de "if renda_per_capita < 500:" | Concepção 9: operador relacional invertido (<= no lugar de <)

```

Dicas de resolução: Use `int()` quando a grandeza representa uma contagem exata de unidades, sem casas decimais. Preste atenção se o limite deve ou não ser incluído no próprio ramo — aqui os limites (500 e 1500) pertencem à faixa seguinte, não à anterior.
Tópicos abordados: M3E – Estruturas condicionais encadeadas (elif); M1 – Variáveis e programação sequencial.
