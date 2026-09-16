
**1. Título:** `Créditos do RU`

**2. Enunciado:**

Um estudante da UFAM chega ao RU e quer saber se seus créditos são suficientes para retirar as refeições desejadas.

Escreva um programa que leia os créditos disponíveis e a quantidade de refeições desejadas e informe o resultado da tentativa de compra, exibindo também os créditos informados.

\[ C = Q \times 2 \]

\(C\) é o custo total em créditos e \(Q\) é a quantidade de refeições desejadas, cada uma custando 2 créditos.

**Entrada:**
- primeiro lavor representa os créditos disponíveis.
- segundo valor representa a quantidade de refeições desejadas.

**Saída:** se o custo total for igual a zero, imprima `Nenhuma refeição selecionada.`; se os créditos forem suficientes para cobrir o custo, imprima `Compra autorizada.`; caso contrário, imprima `Créditos insuficientes.`; em seguida, imprima os créditos informados.

Tópico: Condicional composta com expressão aritmética.

**3. Solução de referência:**

```python
creditos = int(input("Créditos: "))
quantidade = int(input("Quantidade: "))
custo = quantidade * 2
if custo == 0:
    print("Nenhuma refeição selecionada.")
elif creditos >= custo:
    print("Compra autorizada.")
else:
    print("Créditos insuficientes.")
print(creditos)
```

**4. Explicação passo a passo:**

As duas primeiras linhas leem os créditos disponíveis e a quantidade de refeições desejadas, ambos como inteiros. A terceira linha calcula o custo total multiplicando a quantidade por 2. A condição `custo == 0` trata o caso de nenhuma refeição selecionada antes de qualquer comparação com os créditos. O `elif creditos >= custo` cobre a compra autorizada, incluindo o caso de créditos exatamente suficientes. O `else` cobre créditos insuficientes. A última linha sempre imprime os créditos informados, independentemente do resultado da compra. O código não trata quantidades negativas.

**5. Casos de teste:**

Públicos:
- Entrada: `20` / `0` -> Saída: `Nenhuma refeição selecionada.` / `20` (ramo if)
- Entrada: `20` / `5` -> Saída: `Compra autorizada.` / `20` (ramo elif)
- Entrada: `5` / `5` -> Saída: `Créditos insuficientes.` / `5` (ramo else)

Privados:
- Entrada: `10` / `5` -> Saída: `Compra autorizada.` / `10` (ramo elif, borda creditos=custo)
- Entrada: `9` / `5` -> Saída: `Créditos insuficientes.` / `9` (ramo else, borda logo abaixo do custo)
- Entrada: `0` / `0` -> Saída: `Nenhuma refeição selecionada.` / `0` (ramo if, créditos também zerados)

**6. Distratores (marcados):**

```python
creditos = input("Créditos: ")   # DISTRATOR do fragmento "creditos = int(input(\"Créditos: \"))" | Concepção 8: conversão de tipo ausente
print("Compra autorizada.")      # DISTRATOR do fragmento "print(creditos)" | Concepção 10: efeito colateral no ramo errado
```

**7. Dicas de resolução:**

O operador `*` calcula o custo total multiplicando a quantidade pelo valor unitário. O operador `>=` verifica se os créditos disponíveis cobrem o custo calculado.

**8. Tópicos abordados:**

Estrutura condicional composta (if/elif/else); Expressões aritméticas.
