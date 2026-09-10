
**1. Título:**

`M3E Créditos do RU`

**2. Enunciado:**

Um estudante da UFAM chega ao RU e quer saber se seus créditos são suficientes para retirar as refeições desejadas.

Escreva um programa que leia os créditos disponíveis e a quantidade de refeições desejadas e informe o status da tentativa de compra e o custo total das refeições.

`C = Q * 2`


\(C\) é o custo total em créditos e \(Q\) é a quantidade de refeições desejadas, cada uma custando 2 créditos.

se o custo total for igual a zero, imprima `Nenhuma refeição selecionada.`; se os créditos forem suficientes para cobrir o custo, imprima `Compra autorizada.`; caso contrário, imprima `Créditos insuficientes.`.

**Entrada:**
1. O primeiro lavor representa os créditos disponíveis.
2. O segundo valor representa a quantidade de refeições desejadas.

**Saída:** 
1. A primeira linha corresponde ao status da compra.
2. A segunda linha corresponde ao custo da compra desejada.

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
print(custo)
```

**4. Casos de teste:**

Públicos:
- Entrada: `20` / `0` -> Saída: `Nenhuma refeição selecionada.` / `0` (ramo if)
- Entrada: `20` / `5` -> Saída: `Compra autorizada.` / `10` (ramo elif)
- Entrada: `5` / `5` -> Saída: `Créditos insuficientes.` / `10` (ramo else)

Privados:
- Entrada: `10` / `5` -> Saída: `Compra autorizada.` / `10` (ramo elif, borda creditos=custo)
- Entrada: `9` / `5` -> Saída: `Créditos insuficientes.` / `10` (ramo else, borda logo abaixo do custo)
- Entrada: `0` / `0` -> Saída: `Nenhuma refeição selecionada.` / `0` (ramo if, créditos também zerados)

**5. Distratores (marcados):**

```python
creditos = input("Créditos: ")   # DISTRATOR do fragmento "creditos = int(input(\"Créditos: \"))" | Concepção 8: conversão de tipo ausente
print(creditos)      # DISTRATOR do fragmento "print(custo)" | Concepção 10: efeito colateral no ramo errado
```


**6. Tópicos abordados:**

Estrutura condicional composta (if/elif/else); Expressões aritméticas.
