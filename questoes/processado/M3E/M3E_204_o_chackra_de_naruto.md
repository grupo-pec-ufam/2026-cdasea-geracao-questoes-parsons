
**1. Título:** `O Chakra de Naruto`

**2. Enunciado:**

Naruto está prestes a enfrentar um adversário e precisa verificar quanto chakra ainda possui para decidir qual jutsu pode usar.

se o chakra for maior ou igual a 80, imprima `Rasengan liberado!`; se for maior ou igual a 40, imprima `Kage Bunshin liberado!`; caso contrário, imprima `Chakra insuficiente.`;

Escreva um programa que leia o chakra disponível e informe qual jutsu é liberado, encerrando sempre com uma mensagem de fim de turno.

**Entrada:**
1. A quantidade inteira de chakra disponível.

**Saída:** 
1. Na primeira linha informe qual jutsu está disponível.
2. Na segunda linha imprima "Fim do turno de Naruto.".

**3. Solução de referência:**

```python
chakra = int(input("Chakra: "))
if chakra >= 80:
    print("Rasengan liberado!")
elif chakra >= 40:
    print("Kage Bunshin liberado!")
else:
    print("Chakra insuficiente.")
print("Fim do turno de Naruto.")
```

**4. Casos de teste:**

Públicos:
- Entrada: `10` -> Saída: `Chakra insuficiente.` / `Fim do turno de Naruto.` (ramo else)
- Entrada: `40` -> Saída: `Kage Bunshin liberado!` / `Fim do turno de Naruto.` (ramo elif, borda inferior)
- Entrada: `80` -> Saída: `Rasengan liberado!` / `Fim do turno de Naruto.` (ramo if, borda inferior)

Privados:
- Entrada: `79` -> Saída: `Kage Bunshin liberado!` / `Fim do turno de Naruto.` (ramo elif, borda logo abaixo de 80)
- Entrada: `1` -> Saída: `Chakra insuficiente.` / `Fim do turno de Naruto.` (ramo else, valor baixo)
- Entrada: `99` -> Saída: `Rasengan liberado!` / `Fim do turno de Naruto.` (ramo if, valor alto)

**5. Distratores (marcados):**

```python
elif chakra >= 40                # DISTRATOR do fragmento "elif chakra >= 40:" | Concepção 3: ausência dos dois-pontos após a condição
if chakra >= 1:                  # DISTRATOR do fragmento "if chakra >= 80:" | Concepção 6: ordem das condições cria ramo morto
```

**6. Dicas de resolução:**

O operador `>=` testa se um valor é maior ou igual a outro. Em um `if/elif/else`, as condições são testadas em ordem, e uma instrução após o bloco (sem indentação) executa sempre, independentemente do ramo escolhido.

**7. Tópicos abordados:**

Estrutura condicional composta (if/elif/else); Operadores relacionais.
