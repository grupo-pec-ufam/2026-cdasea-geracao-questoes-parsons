Título: Decisao do Guerreiro Mitico

Enunciado:

Em uma batalha mitológica, um guerreiro decide se enfrenta ou foge de um monstro. A decisão depende primeiro do nível de bênção de sua arma; depois, dentro de cada faixa de bênção, da força do monstro à sua frente — o limite de força que ele ousa enfrentar muda conforme a bênção.
Escreva um programa que leia o nível de bênção da arma e a força do monstro, e determine a decisão do guerreiro.
Regras:

* Se a bencao da arma for maior ou igual a 7:
   * e a forca_monstro for menor ou igual a 90: Enfrentar
   * caso contrário: Fugir
* Se a bencao da arma for menor que 7:
   * e a forca_monstro for menor ou igual a 40: Enfrentar
   * caso contrário: Fugir

O programa deve ler:

1. A bencao da arma do guerreiro, numa escala de 0 a 10 (número real).
2. A forca_monstro enfrentado (número real).

Como saída, o programa deve imprimir:

1. A decisao do guerreiro (Enfrentar ou Fugir).

Tópico: Estrutura condicional aninhada (if/if).
Solução de referência:

```python
bencao = float(input("bencao: "))
forca_monstro = float(input("forca_monstro: "))
if bencao >= 7:
    if forca_monstro <= 90:
        print("Enfrentar")
    else:
        print("Fugir")
else:
    if forca_monstro <= 40:
        print("Enfrentar")
    else:
        print("Fugir")

```

Explicação passo a passo:

1. `bencao = float(...)`: converte o nível de bênção lido para número real.
2. `forca_monstro = float(...)`: converte a força do monstro lida para número real.
3. `if bencao >= 7:`: primeiro nível de decisão — separa arma muito abençoada de arma pouco abençoada.
4. `if forca_monstro <= 90:` (dentro do primeiro `if`): com bênção alta, o guerreiro ousa enfrentar monstros mais fortes.
5. `print("Enfrentar")`: executado quando ambas as condições do ramo de bênção alta são satisfeitas.
6. `else:` (interno): cobre monstros acima de 90 de força quando a bênção é alta.
7. `print("Fugir")`: executado nesse caso.
8. `else:` (externo): cobre o cenário de bênção baixa (menor que 7).
9. `if forca_monstro <= 40:` (dentro do `else` externo): com bênção baixa, o limite tolerado de força é bem menor — daí o aninhamento ser necessário, e não um `elif` disfarçado.
10. `print("Enfrentar")` / `else:` / `print("Fugir")`: mesma lógica do ramo de bênção alta, mas com o limite mais rígido.
O programa pressupõe entradas numéricas válidas e não trata bênção ou força negativas.

Casos de teste:
Públicos:

* bencao=8 / forca_monstro=50 → `Enfrentar` (ramo bênção alta, dentro do limite)
* bencao=8 / forca_monstro=95 → `Fugir` (ramo bênção alta, acima do limite)
* bencao=3 / forca_monstro=20 → `Enfrentar` (ramo bênção baixa, dentro do limite mais rígido)

Privados:

* bencao=3 / forca_monstro=50 → `Fugir` (ramo bênção baixa, acima do limite rígido)
* bencao=7 / forca_monstro=90 → `Enfrentar` (borda dupla: bênção exata ≥7 e força exata ≤90)
* bencao=6.99 / forca_monstro=40 → `Enfrentar` (bênção logo abaixo de 7, força no limite rígido)
* bencao=7 / forca_monstro=90.01 → `Fugir` (bênção exata ≥7, força logo acima do limite alto)

Distratores (marcados):

```python
if bencao > 7:                      # DISTRATOR de "if bencao >= 7:" | Concepção 2: erro de borda (> no lugar de >=)
    if forca_monstro < 90:           # DISTRATOR de "if forca_monstro <= 90:" | Concepção 9: operador relacional invertido (< no lugar de <=)

```

Dicas de resolução: Um `if` pode conter outro `if` completo dentro do seu corpo, para representar uma decisão que só faz sentido depois da primeira já ter sido tomada. Cada nível de aninhamento tem sua própria indentação.
Tópicos abordados: M3A – Estruturas condicionais aninhadas (if/if); M1 – Variáveis e programação sequencial.
