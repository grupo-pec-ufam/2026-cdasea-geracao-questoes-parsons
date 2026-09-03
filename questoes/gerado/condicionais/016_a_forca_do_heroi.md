## 1. Título: Forca do Heroi

### 2. Enunciado:
Em um jogo de RPG, a força de um herói é determinada pela combinação de seus pontos de força base e de um bônus de equipamento. Escreva um programa que leia a força base (inteiro) e o bônus (inteiro) e imprima a força total e a classificação.

            Fórmula: total = base + bonus

A classificação do herói é:

- Força total menor que 20: "Fraco"

- Força total entre 20 e 49 (inclusive): "Mediano"

- Força total entre 50 e 79 (inclusive): "Forte"

- Força total 80 ou mais: "Lendário"

## Entrada:
- Entrada 1: força base (int).
- Entrada 2: bônus (int).
## Saída:
na primeira linha imprima força total e na segunda linha a classificacao segindo o modelo:
- Força total: `*força total*`
- Classificacao: `*classificação*`

Tópico: Condicional encadeada com if/elif/else e cálculo simples.

3. Solução de referência:

```python
base = int(input("base: "))
bonus = int(input("bonus: "))
total = base + bonus
if total < 20:
    classificacao = "Fraco"
elif total <= 49:
    classificacao = "Mediano"
elif total <= 79:
    classificacao = "Forte"
else:
    classificacao = "Lendario"
print("Forca total:", total)
print("Classificacao:", classificacao)
```

## 4. Explicação passo a passo:

Lê a força base e o bônus como inteiros.
Calcula total = base + bonus.
O primeiro if verifica se total < 20; se sim, classifica como "Fraco".
O elif total <= 49 cobre valores de 20 a 49, pois a condição anterior já garantiu que total >= 20.
O elif total <= 79 cobre 50 a 79.
O else cobre 80 ou mais.
Imprime a força total e a classificação. O código não trata entradas inválidas (como valores negativos); assume-se que as entradas são inteiros não negativos.

## 5. Casos de teste:
### Públicos:

Entrada: 10 / 5 → Saída: Forca total: 15 / Classificacao: Fraco (ramo if)

Entrada: 20 / 0 → Saída: Forca total: 20 / Classificacao: Mediano (borda 20, ramo elif 1)

Entrada: 70 / 9 → Saída: Forca total: 79 / Classificacao: Forte (borda 79, ramo elif 2)

Entrada: 60 / 30 → Saída: Forca total: 90 / Classificacao: Lendario (ramo else)

### Privados:

Entrada: 19 / 0 → Saída: Forca total: 19 / Classificacao: Fraco (borda abaixo de 20)

Entrada: 49 / 0 → Saída: Forca total: 49 / Classificacao: Mediano (borda 49)

Entrada: 50 / 0 → Saída: Forca total: 50 / Classificacao: Forte (borda 50)

Entrada: 79 / 0 → Saída: Forca total: 79 / Classificacao: Forte (borda 79)

Entrada: 80 / 0 → Saída: Forca total: 80 / Classificacao: Lendario (borda 80)

## 6. Distratores (marcados):

```python
elif total < 49:               # DISTRATOR do fragmento "elif total <= 49:" | Concepção 2: erro de borda, exclui o valor 49
else total >= 80:              # DISTRATOR do fragmento "else:" | Concepção 5: else tratado como se aceitasse condição
```

## 7. Dicas de resolução:

Use <= para incluir os valores limites das faixas.

A ordem das condições deve ser da mais específica para a mais geral.

int(input(...)) converte a entrada para inteiro.

## 8. Tópicos abordados: 
Condicional encadeada (if/elif/else), Leitura e conversão de tipos (int), Impressão com múltiplos argumentos, Operadores aritméticos (adição).