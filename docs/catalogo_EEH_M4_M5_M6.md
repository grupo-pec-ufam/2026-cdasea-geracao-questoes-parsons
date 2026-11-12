# Mapeamento de Erros de Sintaxe e Misconceptions (Módulos M4, M5 e M6)

Este documento consolida o catálogo de erros de sintaxe, codificação e concepções alternativas (*misconceptions*) de programação em Python alinhados aos módulos **M4**, **M5** e **M6** de **Módulos de IPC**, utilizando como base as taxonomias e estudos de **Sorva**, **Chiodini (ProgMiscon)**, **Corinna List**, **Caceffo (UNICAMP)** e **Řechtáčková**.

---

## Resumo Quantitativo

| Módulo IPC | Tema do Módulo | Quantidade de Erros Mapeados |
| :--- | :--- | :---: |
| **M4** | Repetição por condição (`while`) | 7 |
| **M5** | Vetores e strings | 8 |
| **M6** | Repetição por contagem (`for`) | 7 |
| **Total** | — | **22** |

---

## M4: Repetição por condição (`while`)

| ID / Código | Defeito / Misconception | Categoria do Erro | Descrição Detalhada e Causa Raiz | Exemplo Incorreto (Python) | Exemplo Correto (Python) | Catálogo / Autor de Origem |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| **M4.E01** | Ausência de dois-pontos (`:`) no cabeçalho do `while` | Erro de Sintaxe | Omissão do delimitador de início de bloco após a condição lógica do laço. | `while x < 10`<br>`    x += 1` | `while x < 10:`<br>`    x += 1` | Řechtáčková |
| **M4.E02** | Mistura de *tabs* e espaços ou indentação inconsistente no corpo do laço | Erro de Sintaxe / Indentação | Alinhamento irregular das instruções internas do `while`, causando `IndentationError` ou execução fora do escopo do laço. | `while x < 5:`<br>`  print(x)`<br>`    x += 1` | `while x < 5:`<br>`    print(x)`<br>`    x += 1` | Řechtáčková |
| **M4.E03** | Confusão conceitual entre `while` e `if` (*while-as-if*) | Misconception de Controle de Fluxo | O estudante acredita que o laço interrompe a execução imediatamente no exato instante em que a condição se torna falsa no meio do bloco, sem concluir a iteração atual. | `while x < 5:`<br>`    x = 10`<br>`    print(x) # Acha que não executa` | `while x < 5:`<br>`    x = 10`<br>`    if x < 5:`<br>`        print(x)` | Sorva / Chiodini (ProgMiscon) |
| **M4.E04** | Laço infinito por omissão ou posicionamento errado da atualização da variável de controle | Erro de Lógica / Execução | Esquecer de incrementar/atualizar a variável testada na condição ou atualizá-la fora da indentação do bloco `while`. | `i = 0`<br>`while i < 5:`<br>`    print(i)`<br>`i += 1` | `i = 0`<br>`while i < 5:`<br>`    print(i)`<br>`    i += 1` | Caceffo (UNICAMP) / Sorva |
| **M4.E05** | Inicialização de acumulador ou contador dentro do laço | Erro de Lógica | Reinicializar a variável acumuladora (`soma = 0`) a cada nova iteração, perdendo os valores acumulados anteriormente. | `while n != 0:`<br>`    soma = 0`<br>`    soma += n` | `soma = 0`<br>`while n != 0:`<br>`    soma += n` | Caceffo (UNICAMP) |
| **M4.E06** | Atribuição (`=`) no lugar de igualdade (`==`) ou desigualdade (`!=`) na condição | Erro de Sintaxe | Uso do operador de atribuição simples na expressão booleana de parada do `while`. | `while opcao = 1:`<br>`    opcao = int(input())` | `while opcao == 1:`<br>`    opcao = int(input())` | Chiodini (ProgMiscon) / Řechtáčková |
| **M4.E07** | Variável de controle não inicializada antes da primeira verificação do `while` | Erro de Execução (`NameError`) | Tentar avaliar a condição de entrada do laço sem antes atribuir um valor inicial à variável. | `while resp != "N":`<br>`    resp = input()` | `resp = ""`<br>`while resp != "N":`<br>`    resp = input()` | Caceffo (UNICAMP) |

---

## M5: Vetores e strings

| ID / Código | Defeito / Misconception | Categoria do Erro | Descrição Detalhada e Causa Raiz | Exemplo Incorreto (Python) | Exemplo Correto (Python) | Catálogo / Autor de Origem |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| **M5.E12** | Criar vetor/lista utilizando chaves `{}` | Erro de Sintaxe / Tipo | Transferência negativa da sintaxe de inicialização de *arrays* de C/Java (`{1, 2, 3}`), criando um conjunto (`set`) ou dicionário vazio (`dict`) em vez de uma `list`. | `vet = {10, 20, 30}`<br>`print(vet[0]) # TypeError` | `vet = [10, 20, 30]`<br>`print(vet[0])` | Corinna List |
| **M5.E13** | Uso de parênteses extras ou parênteses no lugar de colchetes ao indexar vetor | Erro de Sintaxe / Execução | Achar que acessar um elemento de lista exige parênteses (`vet([0])` ou `vet(0)`), confundindo indexação com chamada de função (`TypeError: 'list' object is not callable`). | `x = lista([0])`<br>`y = lista(1)` | `x = lista[0]`<br>`y = lista[1]` | Corinna List |
| **M5.E03** | Erro de limite superior (*Off-by-one* / `IndexError`) | Erro de Execução (`IndexError`) | Assumir que os índices de uma lista de tamanho `n` vão de `1` até `n` (indexação baseada em 1 em vez de 0). | `v = [4, 8, 15]`<br>`print(v[3])` | `v = [4, 8, 15]`<br>`print(v[2])` | Sorva / Chiodini (ProgMiscon) |
| **M5.E04** | Tentativa de mutação direta de caracteres em uma *string* | Erro de Execução (`TypeError`) | Tratar `str` como estrutura mutável idêntica à `list`, tentando alterar um caractere via atribuição por índice. | `s = "casa"`<br>`s[0] = "m"` | `s = "casa"`<br>`s = "m" + s[1:]` | Chiodini (ProgMiscon) / Caceffo |
| **M5.E05** | Sobrescrita de lista pelo retorno `None` de métodos *in-place* | Erro de Lógica / Execução | Atribuir o resultado de `.sort()`, `.append()`, `.insert()` ou `.remove()` à própria variável da lista, perdendo a referência dos dados (`NoneType`). | `numeros = [3, 1, 2]`<br>`numeros = numeros.sort()` | `numeros = [3, 1, 2]`<br>`numeros.sort()` | Caceffo (UNICAMP) / Sorva |
| **M5.E06** | Cópia por referência (*Aliasing*) em vez de cópia por valor | Misconception de Memória / Referência | Acreditar que `b = a` cria uma lista independente; alterações em `b` modificam `a` involuntariamente. | `a = [1, 2, 3]`<br>`b = a`<br>`b.append(4)` | `a = [1, 2, 3]`<br>`b = a.copy()`<br>`b.append(4)` | Sorva / Chiodini (ProgMiscon) |
| **M5.E07** | Confusão entre parâmetros e delimitadores no fatiamento (*slicing*) | Erro de Sintaxe / Lógica | Usar vírgula em vez de dois-pontos (`lista[1, 3]`) ou assumir que o índice final `j` em `lista[i:j]` é inclusivo. | `sub = lista[1, 3]` | `sub = lista[1:3]` | Řechtáčková / Sorva |
| **M5.E08** | Invocação de métodos de lista/string sem instância ou como função solta (`PH.4` / `PH.5`) | Erro de Sintaxe / Execução | Chamar `append(lista, x)` ou `join(lista)` sem a notação de ponto associada ao objeto. | `append(vet, 10)`<br>`join(palavras)` | `vet.append(10)`<br>`" ".join(palavras)` | Caceffo (UNICAMP — IC-18-19) |

---

## M6: Repetição por contagem (`for`)

| ID / Código | Defeito / Misconception | Categoria do Erro | Descrição Detalhada e Causa Raiz | Exemplo Incorreto (Python) | Exemplo Correto (Python) | Catálogo / Autor de Origem |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| **M6.E01** | Limite superior inclusivo na função `range()` | Misconception de Iteração | Acreditar que `range(1, 5)` gera os números de `1` a `5` (inclusive), ignorando que o argumento de parada é exclusivo. | `for i in range(1, 5):`<br>`    print(i) # Para no 4` | `for i in range(1, 6):`<br>`    print(i)` | Sorva / Chiodini (ProgMiscon) |
| **M6.E02** | Confusão entre índice e elemento na iteração direta sobre listas (`PD.7` / `PD.8`) | Misconception de Variável de Controle | Ao usar `for item in lista:`, tratar `item` como um índice inteiro (`lista[item]`), ou ao usar `for i in range(len(lista)):`, tratar `i` como o próprio elemento da lista. | `nomes = ["Ana", "Bia"]`<br>`for x in nomes:`<br>`    print(nomes[x])` | `nomes = ["Ana", "Bia"]`<br>`for x in nomes:`<br>`    print(x)` | Caceffo (UNICAMP — IC-18-19) |
| **M6.E03** | Omissão da palavra-chave `in` ou dos dois-pontos (`:`) no cabeçalho do `for` | Erro de Sintaxe | Escrever estruturas híbridas influenciadas por outras linguagens (ex: `for i = 0 to 10` ou `for i range(5)`). | `for i range(10):`<br>`    print(i)` | `for i in range(10):`<br>`    print(i)` | Řechtáčková |
| **M6.E04** | Contagem regressiva em `range()` sem passo negativo explícito | Erro de Lógica | Passar início maior que o fim (`range(10, 0)`) esperando decremento automático, resultando em uma sequência vazia que não executa o corpo do laço. | `for i in range(10, 0):`<br>`    print(i)` | `for i in range(10, 0, -1):`<br>`    print(i)` | Chiodini (ProgMiscon) / Sorva |
| **M6.E05** | Modificar o tamanho da lista durante a iteração com `for` | Erro de Lógica / Execução | Remover ou inserir elementos na mesma lista que está sendo percorrida, fazendo com que elementos sejam pulados pelo ponteiro interno do iterador. | `for x in nums:`<br>`    if x % 2 == 0:`<br>`        nums.remove(x)` | `impares = []`<br>`for x in nums:`<br>`    if x % 2 != 0:`<br>`        impares.append(x)` | Sorva / Chiodini (ProgMiscon) |
| **M6.E06** | Tentativa de alterar elementos da lista atribuindo à variável de iteração | Misconception de Atribuição / Referência | Acreditar que modificar a variável do laço (`x = x * 2` em `for x in lista:`) altera o valor armazenado dentro da lista original. | `v = [1, 2, 3]`<br>`for x in v:`<br>`    x = x * 2` | `v = [1, 2, 3]`<br>`for i in range(len(v)):`<br>`    v[i] = v[i] * 2` | Chiodini (ProgMiscon) / Sorva |
| **M6.E07** | Passar uma lista diretamente para `range()` sem `len()` | Erro de Execução (`TypeError`) | Tentar iterar pelos índices escrevendo `range(lista)` em vez de `range(len(lista))`. | `v = [10, 20, 30]`<br>`for i in range(v):`<br>`    print(v[i])` | `v = [10, 20, 30]`<br>`for i in range(len(v)):`<br>`    print(v[i])` | Caceffo (UNICAMP) / Řechtáčková |