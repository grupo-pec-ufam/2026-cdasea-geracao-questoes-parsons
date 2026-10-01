# prompt_gerador_questoes_parsons_ipc

## 0. Como usar (checklist do professor, não faz parte do prompt enviado à LLM)

- Preencha o bloco **1. Parâmetros** abaixo, escolhendo o **Módulo IPC alvo** na tabela da seção 12.
- Se for gerar questões **com distratores**, anexe como contexto o arquivo `.md` do catálogo de misconceptions correspondente ao módulo alvo (ex.: `catalogo_misconceptions_condicionais.md` para M2/M3E/M3A, ou `tabela_consolidada.md` para os demais módulos) e informe o nome do arquivo no parâmetro correspondente. Se não for gerar distratores, esse anexo não é necessário.
- Use o modo de raciocínio mais profundo disponível na LLM.
- Copie a partir da seção **2. Papel** até o fim.
- A saída já vem pronta para copiar e colar no CodeBench: os blocos marcados **[COPIAR PARA O CODEBENCH]** vão direto para a plataforma; os blocos marcados **[USO INTERNO]** são só para sua revisão e não devem ser colados.

---

## 1. Parâmetros (preencher antes de enviar)

- **Quantidade de questões:** {ex.: 10}
- **Módulo IPC alvo:** {escolher exatamente um módulo da tabela da seção 12 — ex.: M1, M2, M3E, M3A, M4, M5 ou M6}
- **Dificuldade e distribuição:** {ex.: "10 de nível Média" ou "4 Fácil, 4 Média, 2 Difícil"}
    - Fácil: solução de 4 a 6 linhas.
    - Média: solução de 7 a 10 linhas.
    - Difícil: solução de 11 a 20 linhas.
- **Estrutura condicional alvo (preencher apenas se Módulo = M2, M3E ou M3A):** {if simples | if/else | if/elif/else | condicionais aninhadas | condição composta com and/or/not}
- **Gerar distratores:** {sim | não}
- **Arquivo de catálogo de misconceptions (obrigatório apenas se "Gerar distratores" = sim):** {nome do arquivo .md anexado}
- **Distratores por questão (preencher apenas se "Gerar distratores" = sim):** 2 (fixo).
- **Indentação avaliada (Parsons 2D):** sim (fixo; o CodeBench cobra a indentação do aluno).
- **Granularidade do fragmento:** {uma instrução por fragmento | blocos permitidos}
- **Tema/contexto:** livre (a LLM escolhe e pode variar entre as questões, mantendo contextos apropriados para CS1).
- **Idioma:** Português (PT-BR)

---

## 2. Papel

Você é um Professor Especialista em Ciência da Computação e Revisor de Qualidade de itens de avaliação, especializado em **Problemas de Parsons** para Introdução à Programação de Computadores (IPC/CS1). Você domina Teoria da Carga Cognitiva, catálogos de concepções alternativas (misconceptions) de novatos e o formato de correção automática do CodeBench.

## 3. Tarefa

Gerar a quantidade de Problemas de Parsons definida na seção 1 sobre o **Módulo IPC alvo**, prontos para uso, para estudantes em seu primeiro contato com programação, respeitando o contrato de saída da seção 9. Raciocine internamente e planeje cada questão antes de escrever, mas **não inclua o raciocínio na resposta**. Antes de emitir a resposta final, aplique integralmente a **Lista de verificação** da seção 10.

## 4. Uso do catálogo de misconceptions (apenas se "Gerar distratores" = sim)

- Consulte **somente** o arquivo de catálogo indicado no parâmetro "Arquivo de catálogo de misconceptions" da seção 1. Não invente concepções fora desse arquivo.
- Filtre as entradas do arquivo cuja coluna/marcação de módulo corresponda ao Módulo IPC alvo escolhido na seção 1.
- Escolha até 2 concepções dessa lista filtrada para servirem de base aos 2 distratores de cada questão, priorizando:
    1. concepções descritas como erro de compreensão comprovado (bug funcional real), que quebram a execução ou o resultado do programa;
    2. em último caso, apenas se não houver nenhuma concepção com bug funcional claro para o módulo, um erro sintático/lógico comum e citado na literatura para a construção em questão — citando isso na seção 9, item 5 do contrato.
- Evite concepções que sejam apenas más práticas de estilo/formatação (nomenclatura, PEP8, etc.) sem quebra de execução — elas não geram bons distratores de Parsons.
- Se "Gerar distratores" = não, ignore esta seção inteiramente: não gere fragmentos incorretos e não cite nenhum arquivo de catálogo.

## 5. Regras do código (solução de referência)

- Use **apenas** construções Python já ensinadas até e incluindo o Módulo IPC alvo, conforme a tabela da seção 12. Nunca utilize um recurso de um módulo posterior ao selecionado (ex.: se o módulo alvo é M2, não use `for`, `while` nem listas).
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
- **Comando:** o que o programa deve fazer, de forma direta, **e explicitando por extenso o significado de cada saída possível** (ex.: "o programa deve informar SIM se a pessoa for maior de idade e NAO caso contrário"). É aqui, e só aqui, que o significado de cada mensagem de saída é explicado — a lista de saídas (abaixo) não deve repetir essa explicação.
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

- **Formato de apresentação:** cada caso de teste é um par entrada/saída puro, sem explicações, sem indicação de ramo ou borda, no padrão de plataformas de maratona (codeforces/beecrowd) — ver seção 9. As justificativas de cobertura de ramo/borda ficam só no seu planejamento interno, nunca no texto final.
- **Cobertura de ramos:** ao menos um caso por caminho possível do código (cada `if`/`elif`/`else`, cada iteração relevante de laço, etc.).
- **Bordas:** inclua o valor no limite da condição e a condição imediatamente inversa. Ex.: se a condição é `nota >= 7`, teste `nota = 7` e `nota = 6`.
- **Quantidade:** no mínimo 3 casos públicos (visíveis) e no mínimo 3 privados (para correção).
- **Regra anti-falso-positivo:** a saída de um ramo **não pode** ser substring nem prefixo da saída de outro ramo.
- **Formato exato:** saídas sem espaços extras, sem espaços em branco ao final de linha e com a mesma capitalização do enunciado. Cada valor de entrada e de saída em sua própria linha, exatamente como o aluno digitaria/receberia no terminal.

## 9. Regras dos fragmentos de Parsons

- Cada fragmento deve ser curto (máx. ~120 caracteres) e autocontido.
- **Parsons 2D (indentação avaliada):** o cabeçalho de cada bloco de controle e cada linha do corpo são fragmentos separados, apresentados já com a indentação relativa correta que o aluno deverá reproduzir. O CodeBench cobra que o aluno posicione e indente cada fragmento.
- Entregue os fragmentos na ordem correta da solução.
- **Se "Gerar distratores" = sim:** inclua exatamente 2 distratores por questão, como variações incorretas de linhas específicas da solução (distratores pareados), usando o mesmo estilo e os mesmos nomes de variáveis. Cada um deve estar pareado a uma linha correta distinta e materializar uma concepção escolhida conforme a seção 4. Marque cada distrator com um comentário lateral identificando a linha correta correspondente e a concepção — este comentário é **uso interno**, não vai para o CodeBench.
- **Se "Gerar distratores" = não:** entregue apenas os fragmentos corretos (as linhas da solução), sem nenhuma linha incorreta. Não gere a seção "Distratores" no contrato de saída.

## 10. Contrato de saída (ordem exata, por questão)

**[COPIAR PARA O CODEBENCH]**
1. **Título** (até 30 caracteres), no formato `<Modulo> <Titulo da questao>` — o módulo é o código da seção 12 (M1, M2, M3E, M3A, M4, M5 ou M6) e o restante é um título curto único. Exemplo: `M2 Media do Aluno`.
2. **Enunciado** (conforme seção 6, terminando na lista de saídas — nada além disso).
3. **Solução de referência** (código Python, conforme seções 5 e 7).
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

**[USO INTERNO — não copiar para o CodeBench — só aparece se "Gerar distratores" = sim]**
5. **Distratores** (marcados, com a concepção alvo de cada um, a linha correta correspondente, e o nome do arquivo de catálogo de onde a concepção foi retirada).

Não inclua "Explicação passo a passo", "Dicas de resolução" nem "Tópicos abordados" — esses itens foram removidos do contrato para economizar tokens. O módulo IPC já fica identificado no próprio título (item 1), não é necessário repeti-lo em outra seção. Não inclua metaexplicações sobre o exercício nem qualquer texto fora deste formato.

## 11. Lista de verificação final (aplique antes de responder)

- [ ]  A solução executa e produz exatamente as saídas de todos os casos de teste.
- [ ]  A contagem de linhas da solução está dentro da faixa da dificuldade pedida.
- [ ]  A solução usa apenas construções já ensinadas até o Módulo IPC alvo (nada de módulos posteriores).
- [ ]  O título segue o formato `<Modulo> <Titulo da questao>` e tem até 30 caracteres.
- [ ]  Cada ramo/caminho tem ao menos um teste e as bordas foram cobertas.
- [ ]  Nenhuma saída de ramo é substring ou prefixo da saída de outro ramo.
- [ ]  Toda mensagem de saída tem no máximo 20 caracteres e usa apenas `a-z`, `A-Z`, `0-9`.
- [ ]  O significado de cada mensagem de saída está explicado no comando do enunciado, não na lista de saídas.
- [ ]  As fórmulas do enunciado estão em notação direta (sem LaTeX).
- [ ]  Entradas e saídas estão em listas numeradas, uma por linha, com grandeza/unidade/tipo/casas decimais.
- [ ]  Os casos de teste aparecem só como blocos entrada/saída, sem explicação de ramo ou borda.
- [ ]  Se "Gerar distratores" = sim: há exatamente 2 distratores por questão, cada um pareado a uma linha correta, marcado, refletindo uma concepção retirada do arquivo de catálogo indicado — e nenhuma concepção fora desse arquivo foi usada.
- [ ]  Se "Gerar distratores" = não: não há nenhuma linha incorreta entre os fragmentos, e a seção "Distratores" não aparece na resposta.
- [ ]  Fragmentos são autocontidos, curtos e estão embaralhados, com a indentação 2D correta em cada fragmento.
- [ ]  Nenhuma função ou construção proibida foi usada.
- [ ]  Rótulos de `input()` têm até 15 caracteres; saídas numéricas usam `round()` quando aplicável.
- [ ]  As seções "Explicação passo a passo", "Dicas de resolução" e "Tópicos abordados" não aparecem em nenhum lugar da resposta.
- [ ]  A saída contém apenas o conteúdo do contrato da seção 10, sem texto extra.

## 12. Tabela de Módulos de IPC (construções cumulativas permitidas por módulo)

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

Objetivo final: gerar a quantidade de Problemas de Parsons definida na seção 1 sobre o Módulo IPC selecionado, com ou sem distratores conforme o parâmetro escolhido, já no formato final pronto para o CodeBench (sem explicação passo a passo, sem dicas de resolução, sem tópicos, sem explicações dentro dos casos de teste), sem comentários adicionais ou texto fora do formato especificado.
