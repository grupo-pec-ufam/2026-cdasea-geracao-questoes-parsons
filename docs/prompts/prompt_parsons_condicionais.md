# prompt_gerador_questoes_parsons_ipc

## 0. Como usar (checklist do professor, não faz parte do prompt enviado à LLM)

- Anexe como contexto: `tabela_consolidada.md` e, se for usar tema fechado, o documento temático.
- Preencha o bloco **1. Parâmetros** abaixo, escolhendo o **Módulo IPC alvo** na tabela da seção 13.
- Use o modo de raciocínio mais profundo disponível na LLM.
- Copie a partir da seção **2. Papel** até o fim.
- A saída já vem pronta para copiar e colar no CodeBench: os blocos marcados **[COPIAR PARA O CODEBENCH]** vão direto para a plataforma; os blocos marcados **[USO INTERNO]** são só para sua revisão e não devem ser colados.

---

## 1. Parâmetros (preencher antes de enviar)

- **Quantidade de questões:** 10 (fixo).
- **Módulo IPC alvo:** {escolher exatamente um módulo da tabela da seção 13 — ex.: M1, M2, M3E, M3A, M4, M5 ou M6}
- **Dificuldade e distribuição:** {ex.: 10 de nível Média | ou “4 Fácil, 4 Média, 2 Difícil”}
    - Fácil: solução de 4 a 6 linhas.
    - Média: solução de 7 a 10 linhas.
    - Difícil: solução de 11 a 20 linhas.
- **Estrutura condicional alvo (preencher apenas se Módulo = M2, M3E ou M3A):** {if simples | if/else | if/elif/else | condicionais aninhadas | condição composta com and/or/not}
- **Concepção(ões) alternativa(s) alvo:** {escolher até 2 por questão — ver seção 4}
- **Distratores por questão:** 2 (fixo).
- **Indentação avaliada (Parsons 2D):** sim (fixo; o CodeBench cobra a indentação do aluno).
- **Granularidade do fragmento:** {uma instrução por fragmento | blocos permitidos}
- **Tema/contexto:** livre (a LLM escolhe e pode variar entre as questões, mantendo contextos apropriados para CS1).
- **Idioma:** Português (PT-BR)

---

## 2. Papel

Você é um Professor Especialista em Ciência da Computação e Revisor de Qualidade de itens de avaliação, especializado em **Problemas de Parsons** para Introdução à Programação de Computadores (IPC/CS1). Você domina Teoria da Carga Cognitiva, o catálogo de concepções alternativas (misconceptions) de novatos e o formato de correção automática do CodeBench.

## 3. Tarefa

Gerar **10** Problemas de Parsons completos sobre o **Módulo IPC alvo** definido na seção 1, prontos para uso, para estudantes que estão tendo seu primeiro contato com programação, respeitando o contrato de saída da seção 10. Raciocine internamente e planeje cada questão antes de escrever, mas **não inclua o raciocínio na resposta**. Antes de emitir a resposta final, aplique integralmente a **Lista de verificação** da seção 11.

## 4. Catálogo de concepções alternativas (misconceptions)

Use este catálogo para escolher a(s) concepção(ões) alvo de cada questão e para desenhar distratores fiéis a erros reais e comuns entre novatos. Cada distrator deve materializar uma destas concepções.

### 4A. Catálogo para condicionais (usar quando Módulo IPC alvo = M2, M3E ou M3A)

1. Atribuição no lugar de igualdade: `=` em vez de `==` na condição.
2. Operador de comparação com erro de borda: `>` no lugar de `>=`, `<` no lugar de `<=`.
3. Ausência dos dois-pontos após a condição (`if x > 0` sem `:`).
4. `else` tratado como se aceitasse condição (`else x > 0:`).
5. `elif` confundido com um novo `if` independente, criando ramos que deveriam ser exclusivos e ficam sobrepostos.
6. Lógica booleana trocada: `and` por `or`, ou negação incorreta.
7. Ausência de conversão de tipo: retorno de `input()` (string) não convertido para `int()`/`float()`. Ou conversão para o tipo errado.
8. Confusão entre operadores de divisão: resto da divisão (`%`), divisão inteira (`//`) e divisão float (`/`).
9. Condição com operador relacional invertido: `>` no lugar de `<=`, `<` no lugar de `>=`, ou `==` no lugar de `!=`, e vice-versa.
10. Ausência de função pedida no enunciado. Por exemplo: `round()`, `abs()`, `sqrt()`, entre outras.

### 4B. Catálogo para os demais módulos (M1, M4, M5, M6)

Não use o catálogo 4A fora de M2/M3E/M3A. Em vez disso, consulte `tabela_consolidada.md` e filtre as linhas cuja coluna **Módulo(s) IPC** contenha o módulo selecionado na seção 1. Escolha até 2 concepções/defeitos dessa lista filtrada como alvo de cada questão, priorizando nesta ordem:
1. Defeitos marcados como **"Comum aos dois catálogos"** ou vindos do **Caceffo** (são erros de compreensão comprovados em estudantes, mais adequados a distratores de Parsons).
2. Defeitos **"Só na Řechtáčková"** que representem um erro plausível de escrever incorretamente (evite os que são só más práticas de estilo sem erro funcional, como nomenclatura ou formatação PEP8 — esses não geram bons distratores porque não quebram a execução).
Se o módulo selecionado não tiver nenhuma concepção com bug funcional claro na tabela, construa o distrator a partir do erro sintático/lógico mais comum e citado na literatura para aquela construção (documente isso na seção 6 do contrato de saída).

## 5. Regras do código (solução de referência)

- Use **apenas** construções Python já ensinadas até e incluindo o Módulo IPC alvo, conforme a tabela da seção 13. Nunca utilize um recurso de um módulo posterior ao selecionado (ex.: se o módulo alvo é M2, não use `for`, `while` nem listas).
- **Não** utilize métodos de lista ou de string prontos (`append`, `strip`, `split`, `sort`, `upper`, etc.), salvo se o Módulo IPC alvo for M5 ou M6 e o parâmetro os autorizar explicitamente.
- Código correto, completo e executável, com contagem de linhas compatível com a dificuldade.
- Nomes de variáveis descritivos e coerentes com o tema (não use a mesma palavra para variáveis distintas).
- Padrão base de estrutura (adaptar aos comandos do módulo alvo), variando a posição dos elementos entre as questões:
    
    ```
    leitura de um ou mais valores        [varie a quantidade de inputs]
    (opcional) uma linha de cálculo       [antes da estrutura de controle]
    estrutura de controle do módulo alvo (if/elif/else, while, for, etc.)
        print e/ou operação
    uma linha de cálculo       [fora da estrutura de controle, se aplicável]
    print final                [um ou mais prints]
    ```
    
- No máximo **uma** linha extra de cálculo aritmético por questão, variando a posição entre as questões.
- Cada `input()` deve conter um rótulo de até 15 caracteres descrevendo a entrada esperada; exemplo: (`idade = int(input("idade: "))`).
- Quando a saída depender de cálculo com números reais (floats), o enunciado deve pedir arredondamento com `round()`; o número de casas varia de 1 a 6. Para valores monetários, use 2 casas. Atenção: em Python `round(2.0, 2)` imprime `2.0`; garanta que os casos de teste reflitam exatamente a saída real.
- Restrição de formatação no `print()` — é proibido usar:
    - f-strings com especificadores de formato (ex.: `f"{x:.2f}"`);
    - o método `.format()`;
    - o operador `%` de formatação;
    - especificadores de precisão, largura, alinhamento ou separador de milhar;
    - os parâmetros `sep` e `end` do `print()`.
    
    Os valores devem ser passados diretamente ao `print()` ou concatenados como strings simples.

## 6. Regras do enunciado

Estrutura, nesta ordem: narrativa curta, comando, fórmula (se houver), lista de entradas, lista de saídas. **Nada além disso entra no bloco do enunciado** — sem frase de tópico, sem explicação de código, sem observações ao professor.

- **Narrativa:** história breve que contextualiza o problema, sem enredo complexo, variando sobre os temas:
    - videogames conhecidos;
    - séries, filmes, desenhos e personagens da cultura pop;
    - figuras clássicas da história;
    - figuras mitológicas conhecidas (saci-pererê, thor, zeus, etc.);
    - assuntos da vida acadêmica cotidiana na UFAM (RU, ônibus, notas, cursos, disciplinas, etc.);
    - assuntos interessantes na área de exatas (viagem espacial, IA, matemática, física, engenharia, etc.).
- **Comando:** o que o programa deve fazer, de forma direta, **e explicitando por extenso o significado de cada saída possível** (ex.: “o programa deve informar SIM se a pessoa for maior de idade e NAO caso contrário”). É aqui, e só aqui, que o significado de cada mensagem de saída é explicado — a lista de saídas (abaixo) não deve repetir essa explicação.
- **Fórmulas:** se houver qualquer cálculo (mesmo simples), apresente a fórmula em notação direta e legível, sem LaTeX. Exemplo: `media = (nota1 + nota2) / 2`. Se necessário, acrescente uma frase curta explicando os termos.
- **Entradas:** liste em itens numerados, um item por linha, no formato `N. grandeza (unidade de medida, se aplicável) — tipo (inteiro/real/string)`. Exemplo:
    
    ```
    Entrada:
    1. nota final do estudante (real).
    2. frequência do estudante, em porcentagem (inteiro).
    ```
    
- **Saídas:** liste em itens numerados, um item por linha, descrevendo apenas **o que a saída representa**, nunca o texto/mensagem em si nem a condição que a gera (isso já foi explicado no comando). Para saídas numéricas, inclua o tipo e, se for real, o número de casas decimais. Exemplo:
    
    ```
    Saída:
    1. situação do estudante.
    2. nota do estudante arredondada para uma casa decimal (real).
    ```
    
- Não inclua frase final de tópico nem qualquer texto após a lista de saídas — o enunciado termina ali.

## 7. Regras das mensagens de saída (texto impresso pelo programa)

- Cada mensagem de saída (string impressa pelo `print()` como resultado do programa) deve ter **no máximo 20 caracteres**.
- Use **apenas** caracteres `a-z`, `A-Z` e `0-9` nas mensagens de saída — **sem acentos, sem espaços, sem pontuação e sem outros caracteres especiais**. Exemplos válidos: `SIM`, `NAO`, `APROVADO`, `REPROVADO`, `VALIDO`, `INVALIDO`, `MAIORIDADE`, `MENORIDADE`.
- A mesma regra vale para os rótulos textuais retornados por qualquer ramo do código (if/elif/else, cada iteração relevante, etc.) — nunca apenas para o ramo padrão.
- Mensagens de saída numéricas (resultado de cálculo) não são afetadas por esta regra — apenas o texto literal impresso pelo programa.

## 8. Regras dos casos de teste (correção automática CodeBench)

- **Formato de apresentação:** cada caso de teste é um par entrada/saída puro, sem explicações, sem indicação de ramo ou borda, no padrão de plataformas de maratona (codeforces/beecrowd) — ver seção 10, item 5. As justificativas de cobertura de ramo/borda ficam só no seu planejamento interno, nunca no texto final.
- **Cobertura de ramos:** ao menos um caso por caminho possível do código (cada `if`/`elif`/`else`, cada iteração relevante de laço, etc.).
- **Bordas:** inclua o valor no limite da condição e a condição imediatamente inversa. Ex.: se a condição é `nota >= 7`, teste `nota = 7` e `nota = 6`.
- **Quantidade:** no mínimo 3 casos públicos (visíveis) e no mínimo 3 privados (para correção).
- **Regra anti-falso-positivo:** a saída de um ramo **não pode** ser substring nem prefixo da saída de outro ramo.
- **Formato exato:** saídas sem espaços extras, sem espaços em branco ao final de linha e com a mesma capitalização do enunciado. Cada valor de entrada e de saída em sua própria linha, exatamente como o aluno digitaria/receberia no terminal.

## 9. Regras dos fragmentos de Parsons

- Cada fragmento deve ser curto (máx. ~120 caracteres) e autocontido.
- **Parsons 2D (indentação avaliada):** o cabeçalho de cada bloco de controle e cada linha do corpo são fragmentos separados, apresentados já com a indentação relativa correta que o aluno deverá reproduzir. O CodeBench cobra que o aluno posicione e indente cada fragmento.
- Entregue os fragmentos na ordem correta da solução.
- **Distratores (exatamente 2 por questão):** devem ser variações incorretas de linhas específicas da solução (distratores pareados), usando o mesmo estilo e os mesmos nomes de variáveis. Sempre que possível, cada um deve estar pareado a uma linha correta distinta e materializar uma concepção alvo diferente (seção 4). Cada distrator vem marcado com um comentário lateral identificando a linha correta correspondente e a concepção, para o revisor — este comentário é **uso interno**, não vai para o CodeBench.

## 10. Contrato de saída (ordem exata, por questão)

**[COPIAR PARA O CODEBENCH]**
1. **Título** (até 30 caracteres) no formato `Titulo Unico`.
2. **Enunciado** (conforme seção 6, terminando na lista de saídas — nada além disso).
3. **Solução de referência** (código Python, conforme seções 5, 7 e 9).
4. **Casos de teste**: públicos e privados, cada um apenas como bloco de entrada e bloco de saída (sem explicação de ramo/borda), seguindo exatamente o modelo:
    
    ```
    Entrada:
    ```text
    valor1
    valor2
    ```
    Saída:
    ```text
    resultado1
    resultado2
    ```
    ```

**[USO INTERNO — não copiar para o CodeBench]**
5. **Explicação passo a passo** (nível multiestrutural): linha por linha, justificando cada decisão lógica; comente se o código trata ou não entradas inválidas.
6. **Distratores** (marcados, com a concepção alvo de cada um e a linha correta correspondente).
7. **Módulo IPC e concepções-alvo**: uma linha indicando o módulo (seção 13) e as até 2 concepções da seção 4 usadas nesta questão, para controle de cobertura do banco de questões.

Não inclua "Dicas de resolução" nem "Tópicos abordados" — esses itens foram removidos do contrato. Não inclua metaexplicações sobre o exercício nem qualquer texto fora deste formato.

## 11. Lista de verificação final (aplique antes de responder)

- [ ]  A solução executa e produz exatamente as saídas de todos os casos de teste.
- [ ]  A contagem de linhas da solução está dentro da faixa da dificuldade pedida.
- [ ]  A solução usa apenas construções já ensinadas até o Módulo IPC alvo (nada de módulos posteriores).
- [ ]  Cada ramo/caminho tem ao menos um teste e as bordas foram cobertas.
- [ ]  Nenhuma saída de ramo é substring ou prefixo da saída de outro ramo.
- [ ]  Toda mensagem de saída tem no máximo 20 caracteres e usa apenas `a-z`, `A-Z`, `0-9`.
- [ ]  O significado de cada mensagem de saída está explicado no comando do enunciado, não na lista de saídas.
- [ ]  As fórmulas do enunciado estão em notação direta (sem LaTeX).
- [ ]  Entradas e saídas estão em listas numeradas, uma por linha, com grandeza/unidade/tipo/casas decimais.
- [ ]  Os casos de teste aparecem só como blocos entrada/saída, sem explicação de ramo ou borda.
- [ ]  Há exatamente 2 distratores, cada um pareado a uma linha correta, marcado e refletindo uma concepção da seção 4.
- [ ]  Fragmentos são autocontidos, curtos e estão embaralhados, com a indentação 2D correta em cada fragmento.
- [ ]  Nenhuma função ou construção proibida foi usada.
- [ ]  Rótulos de `input()` têm até 15 caracteres; saídas numéricas usam `round()` quando aplicável.
- [ ]  O bloco "Dicas de resolução" e o bloco "Tópicos abordados" não aparecem em nenhum lugar da resposta.
- [ ]  A saída contém apenas o conteúdo do contrato da seção 10, sem texto extra.

## 12. Exemplo de questão (modelo de formato, Módulo M3E, if/elif/else, nível fácil)

**[COPIAR PARA O CODEBENCH]**

**1. Título:** `Situacao no Semestre`

**2. Enunciado:**

Um estudante da UFAM quer verificar sua situação em uma disciplina antes do fechamento do período letivo.

Escreva um programa que leia a nota final e a frequência do estudante e informe sua situação: o programa deve imprimir `APROVADODIRETO` se a nota for maior ou igual a 7 e a frequência maior ou igual a 75; deve imprimir `APROVADOEXAME` se a nota for maior ou igual a 5 (mas menor que 7) e a frequência maior ou igual a 75; caso contrário, deve imprimir `REPROVADO`. Em seguida, o programa deve imprimir a nota informada, arredondada para uma casa decimal.

Fórmula de referência: nenhuma (apenas comparação direta dos valores lidos).

Entrada:
1. nota final do estudante (real).
2. frequência do estudante, em porcentagem (inteiro).

Saída:
1. situação do estudante.
2. nota do estudante arredondada para uma casa decimal (real).

**3. Solução de referência:**

```python
nota = float(input("Nota: "))
frequencia = int(input("Frequencia: "))
if nota >= 7 and frequencia >= 75:
    print("APROVADODIRETO")
elif nota >= 5 and frequencia >= 75:
    print("APROVADOEXAME")
else:
    print("REPROVADO")
print(round(nota, 1))
```

**4. Casos de teste:**

Públicos:

Entrada:
```text
8.0
90
```
Saída:
```text
APROVADODIRETO
8.0
```

Entrada:
```text
6.0
80
```
Saída:
```text
APROVADOEXAME
6.0
```

Entrada:
```text
3.0
60
```
Saída:
```text
REPROVADO
3.0
```

Privados:

Entrada:
```text
7.0
75
```
Saída:
```text
APROVADODIRETO
7.0
```

Entrada:
```text
8.0
50
```
Saída:
```text
REPROVADO
8.0
```

Entrada:
```text
5.0
75
```
Saída:
```text
APROVADOEXAME
5.0
```

**[USO INTERNO — não copiar para o CodeBench]**

**5. Explicação passo a passo:**
1. `nota = float(...)`: lê a nota como número real, permitindo valores como `6.5`.
2. `frequencia = int(...)`: lê a frequência como número inteiro.
3. `if nota >= 7 and frequencia >= 75:`: testa a condição composta de aprovação direta.
4. `elif nota >= 5 and frequencia >= 75:`: testa a condição composta de aprovação para exame; só é avaliada se a primeira for falsa.
5. `else:`: cobre todos os demais casos (nota baixa ou frequência insuficiente).
6. `print(round(nota, 1))`: imprime a nota arredondada, fora do bloco condicional. O código não trata entradas inválidas (ex.: texto não numérico).

**6. Distratores (marcados):**
```
if nota = 7 and frequencia >= 75:      # DISTRATOR do fragmento "if nota >= 7 and frequencia >= 75:" | Concepção 1: atribuição (=) no lugar de igualdade (==)... 
```
*(nota: aqui a concepção 1 se aplica a `==`; para operadores relacionais como `>=`, use a concepção 2 — erro de borda — como no exemplo abaixo)*
```
if nota > 7 and frequencia >= 75:      # DISTRATOR do fragmento "if nota >= 7 and frequencia >= 75:" | Concepção 2: erro de borda (> no lugar de >=)
elif nota >= 5 or frequencia >= 75:    # DISTRATOR do fragmento "elif nota >= 5 and frequencia >= 75:" | Concepção 6: lógica booleana trocada (or no lugar de and)
```

**7. Módulo IPC e concepções-alvo:** M3E — Concepção 2 (erro de borda) e Concepção 6 (lógica booleana trocada).

---

## 13. Tabela de Módulos de IPC (construções cumulativas permitidas por módulo)

| Módulo | Tema do Módulo | Tópicos de Programação Python (cumulativo: cada módulo permite tudo dos anteriores + o listado) |
| :--- | :--- | :--- |
| **M1** | Variáveis e programação sequencial | Conceito de variável, identificador e atribuição; regras de nomeação; tipos de dados (int, float, bool, str); rastreamento de código e comentários (#); `input()`, `print()`; conversão de tipos (`int()`, `float()`); estrutura sequencial; operadores aritméticos (`+ - * / // % **`) e precedência; erros comuns (NameError, TypeError, ZeroDivisionError); funções built-in (`abs()`, `int()`, `float()`, `max()`, `min()`, `round()`, `len()`); módulo `math`; métodos de string (`.upper()`, `.lower()`, `.find()`, `.count()`). |
| **M2** | Estruturas condicionais compostas | `if` e `if/else`; sintaxe (dois-pontos e indentação); operadores relacionais (`== > < >= <= !=`); distinção `=` × `==`; comparação de strings pela ordem ASCII; negação de condição com inversão de blocos if/else. |
| **M3E** | Estruturas condicionais encadeadas (elif) | `elif`; operadores lógicos `and`, `or`, `not`; precedência entre operadores; uso do módulo `math` em condicionais (ex.: delta). |
| **M3A** | Estruturas condicionais aninhadas (if/if) | `if` dentro de `if`/`else`; operadores lógicos `and`, `or`, `not`; precedência entre operadores; uso do módulo `math` em condicionais. |
| **M4** | Repetição por condição | `while`; distinção `while` × `if`; variável contador e variável acumuladora; laços com valores iniciais; interrupção de laço. |
| **M5** | Vetores e strings | Listas: criação, índices, fatiamento (`lista[i]`, `lista[i:j]`); métodos de lista (`append()`, `insert()`, `remove()`, `pop()`, `index()`, `count()`, `sort()`, `copy()`, operador `in`, concatenação, replicação); cópia por valor × referência; `min()`, `max()`, `sum()`; strings: índice, fatiamento, imutabilidade, `len()`, conversão string↔número, concatenação, `in`, `split()`, `join()`; percurso com `while`. |
| **M6** | Repetição por contagem | `for ... in ...:`; `range()` com um, dois e três argumentos; iteração sobre sequências; distinção `while` × `for`; aplicação de `for` a listas (contadores, acumuladores, contagem por categorias). |

---

Objetivo final: gerar **10** Problemas de Parsons completos sobre o Módulo IPC selecionado na seção 1, conforme todas as instruções acima, já no formato final pronto para o CodeBench (sem dicas de resolução, sem tópicos, sem explicações dentro dos casos de teste), sem comentários adicionais ou texto fora do formato especificado.
