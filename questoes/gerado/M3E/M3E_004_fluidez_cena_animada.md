Fluidez da Cena Animada

Um estúdio de animação avalia a fluidez de uma cena renderizada antes de aprová-la para o episódio final. A avaliação é feita direto a partir da taxa de quadros por segundo (FPS) medida durante o render.
Escreva um programa que leia a taxa de quadros por segundo de uma cena animada e classifique sua fluidez.
Classificação:

* FPS maior ou igual a 60: Fluida
* FPS maior ou igual a 24 e menor que 60: Aceitavel
* caso contrário (menor que 24): Travada

O programa deve ler:

1. A fps, taxa de quadros por segundo medida na renderização (número real).

Como saída, o programa deve imprimir:

1. A classificacao da cena (Fluida, Aceitavel ou Travada).

Tópico: Estrutura condicional encadeada (if/elif/else).
Solução de referência:
python

```python
fps = float(input("fps: "))
if fps >= 60:
    print("Fluida")
elif fps >= 24:
    print("Aceitavel")
else:
    print("Travada")
```

Explicação passo a passo:

1. `fps = float(...)`: converte a taxa de quadros lida para número real, já que pode vir com casas decimais (ex.: 23.98 fps).
2. `if fps >= 60:`: testa primeiro o ramo de maior fluidez.
3. `elif fps >= 24:`: avaliado apenas se o `if` anterior for falso, cobrindo a faixa intermediária.
4. `else:`: cobre os valores restantes (fps menor que 24).
5. `print(...)`: cada ramo imprime diretamente sua classificação — não há cálculo nem impressão adicional fora do condicional.
O programa pressupõe entradas numéricas válidas e não trata fps negativo.

Casos de teste:
Públicos:

* fps=90 → `Fluida` (ramo if)
* fps=30 → `Aceitavel` (ramo elif)
* fps=15 → `Travada` (ramo else)

Privados:

* fps=60 → `Fluida` (borda exata ≥60)
* fps=59.99 → `Aceitavel` (logo abaixo de 60)
* fps=24 → `Aceitavel` (borda exata ≥24)
* fps=23.99 → `Travada` (logo abaixo de 24)

Distratores (marcados):
python

```python
if fps > 60:                     # DISTRATOR de "if fps >= 60:" | Concepção 2: erro de borda (> no lugar de >=)
elif fps >= 24                   # DISTRATOR de "elif fps >= 24:" | Concepção 3: ausência dos dois-pontos
```

Dicas de resolução: Use `>=` quando o valor limite deve pertencer ao próprio ramo. Toda linha de `if`/`elif`/`else` precisa terminar com dois-pontos (`:`).
Tópicos abordados: M3E – Estruturas condicionais encadeadas (elif); M1 – Variáveis e programação sequencial.
