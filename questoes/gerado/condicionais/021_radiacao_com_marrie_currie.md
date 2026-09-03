
**1. Título:** `Radiação com Marie Curie`

**2. Enunciado:**

Marie Curie recolhe duas amostras em seu laboratório e precisa classificar o nível médio de radiação antes de armazená-las.

Escreva um programa que leia a leitura de radiação de cada amostra e informe o nível de segurança correspondente à média das duas leituras, exibindo também essa média arredondada.

\[ M = \frac{A + B}{2} \]

\(M\) é a média das duas leituras, \(A\) é a leitura da primeira amostra e \(B\) é a leitura da segunda amostra.

**Entrada 1:** a leitura inteira da primeira amostra.
**Entrada 2:** a leitura inteira da segunda amostra.

**Saída:** se a média for menor que 5, imprima `Nível seguro.`; se a média for menor ou igual a 20, imprima `Nível de cautela.`; caso contrário, imprima `Nível de perigo.`; em seguida, imprima a média arredondada com uma casa decimal.

Tópico: Condicional composta com if/elif/else e arredondamento numérico.

**3. Solução de referência:**

```python
amostra_a = int(input("Amostra A: "))
amostra_b = int(input("Amostra B: "))
media = (amostra_a + amostra_b) / 2
if media < 5:
    print("Nível seguro.")
elif media <= 20:
    print("Nível de cautela.")
else:
    print("Nível de perigo.")
print(round(media, 1))
```

**4. Explicação passo a passo:**

As duas primeiras linhas leem as leituras das amostras e convertem para inteiro. A terceira linha calcula a média com divisão real, que em Python sempre resulta em ponto flutuante. A condição `media < 5` usa comparação estrita para o nível seguro; `elif media <= 20` inclui o limite superior no nível de cautela; o `else` cobre valores acima de 20. A última linha imprime a média arredondada para uma casa decimal com `round()`, garantindo formatação consistente mesmo quando o resultado é um número inteiro disfarçado de float. O código não trata leituras negativas.

**5. Casos de teste:**

Públicos:
- Entrada: `2` / `2` -> Saída: `Nível seguro.` / `2.0` (ramo if)
- Entrada: `10` / `10` -> Saída: `Nível de cautela.` / `10.0` (ramo elif)
- Entrada: `30` / `30` -> Saída: `Nível de perigo.` / `30.0` (ramo else)

Privados:
- Entrada: `5` / `5` -> Saída: `Nível de cautela.` / `5.0` (ramo elif, borda inferior media=5)
- Entrada: `3` / `4` -> Saída: `Nível seguro.` / `3.5` (ramo if, valor fracionário)
- Entrada: `21` / `21` -> Saída: `Nível de perigo.` / `21.0` (ramo else, borda logo acima de 20)

**6. Distratores (marcados):**

```python
else media > 20:                 # DISTRATOR do fragmento "else:" | Concepção 4: else tratado como se aceitasse condição
if media <= 20:                  # DISTRATOR do fragmento "elif media <= 20:" | Concepção 5: elif confundido com um novo if independente
```

**7. Dicas de resolução:**

O operador `/` realiza divisão real entre dois inteiros, sempre retornando um float em Python. `round(valor, casas)` arredonda um número para a quantidade de casas decimais indicada. Os operadores `<` e `<=` diferem em incluir ou não o próprio limite na comparação.

**8. Tópicos abordados:**

Estrutura condicional composta (if/elif/else); Arredondamento com round(); Operadores relacionais.
