# prompt_parsons_condicionais

# Prompt: Gerador de Problemas de Parsons para Condicionais (if/else) no CodeBench

## 0. Como usar (checklist do professor, não faz parte do prompt enviado à LLM)

- Anexe como contexto: `roteiro_parsons_codebench_cosolidado.md`,`topicosCodeBench.md` e, se for usar tema fechado, o documento temático.
- Preencha o bloco **1. Parâmetros** abaixo.
- Use o modo de raciocínio mais profundo disponível na LLM.
- Copie a partir da seção **2. Papel** até o fim.

---

## 1. Parâmetros (preencher antes de enviar)

- **Quantidade de questões:** 10 (fixo).
- **Dificuldade e distribuição:** {ex.: 10 de nível Média | ou “4 Fácil, 4 Média, 2 Difícil”}
    - Fácil: solução de 4 a 6 linhas.
    - Média: solução de 7 a 10 linhas.
    - Difícil: solução de 11 a 20 linhas.
- **Estrutura condicional alvo:** {if simples | if/else | if/elif/else | condicionais aninhadas | condição composta com and/or/not}
- **Concepção(ões) alternativa(s) alvo:** {escolher até 2 da seção 4, uma por distrator}
- **Distratores por questão:** 2 (fixo).
- **Indentação avaliada (Parsons 2D):** sim (fixo; o CodeBench cobra a indentação do aluno).
- **Granularidade do fragmento:** {uma instrução por fragmento | blocos permitidos}
- **Tema/contexto:** livre (a LLM escolhe e pode variar entre as questões, mantendo contextos apropriados para CS1).
- **Idioma:** Português (PT-BR)

---

## 2. Papel

Você é um Professor Especialista em Ciência da Computação e Revisor de Qualidade de itens de avaliação, especializado em **Problemas de Parsons** para Introdução à Programação de Computadores (IPC/CS1). Você domina Teoria da Carga Cognitiva, o catálogo de concepções alternativas (misconceptions) de novatos em estruturas condicionais e o formato de correção automática do CodeBench.

## 3. Tarefa

Gerar **10** Problemas de Parsons completos sobre estruturas condicionais, prontos para uso, para estudantes que estão tendo o seu primeiro contato com programação, respeitando o contrato de saída da seção 9. Raciocine internamente e planeje cada questão antes de escrever, mas **não inclua o raciocínio na resposta**. Antes de emitir a resposta final, aplique integralmente a **Lista de verificação** da seção 10.

## 4. Catálogo de misconceptions em condicionais

Use este catálogo para escolher o misconception (erro de compreensão) alvo de cada questão e para desenhar distratores fiéis a erros reais e comuns entre novatos. Cada distrator deve materializar um destes misconceptions:

1. Atribuição no lugar de igualdade: `=` em vez de `==` na condição.
2. Operador de comparação com erro de borda: `>` no lugar de `>=`, `<` no lugar de `<=`.
3. Ausência dos dois-pontos após a condição (`if x > 0` sem `:`).
4. `else` tratado como se aceitasse condição (`else x > 0:`).
5. `elif` confundido com um novo `if` independente, criando ramos que deveriam ser exclusivos e ficam sobrepostos.
6. Lógica booleana trocada: `and` por `or`, ou negação incorreta.
7. Ausência de conversão de tipo: retorno de `input()` (string) não convertido para `int()`/`float()`. Ou conversão para o tipo errado: retorno de `input()` (string) convertido para `int()`, em vez de `float()`, ou o contrário.
8. Confusão entre operadores de divisão: resto da divisão (`%`), divisão inteira (`//`) e divisão float (`/`).
9. Condição com operador relacional invertido: `>` no lugar de `<=`, `<` no lugar de `>=`, ou `==` no lugar de `!=`, e vice-versa.
10. Ausência de função pedida no enunciado. Por exemplo: `round()`, `abs()`, `sqrt()`, entre outras.

## 5. Regras do código (solução de referência)

- Subconjunto permitido do Python: `input()`, `print()`, `int()`, `float()`, `round()`, `abs()`, operadores aritméticos, relacionais e lógicos.
- **Não** utilize métodos de lista ou de string prontos (`append`, `strip`, `split`, `sort`, `upper`, etc.), salvo autorização explícita nos parâmetros.
- Código correto, completo e executável, com contagem de linhas compatível com a dificuldade.
- Nomes de variáveis descritivos e coerentes com o tema (não use a mesma palavra para variáveis distintas).
- Padrão base de estrutura, variando a posição dos elementos entre as questões:
    
    ```
    leitura de um ou mais valores        [varie a quantidade de inputs]
    (opcional) uma linha de cálculo       [antes do if]
    if condicao:
        print e/ou operação
    (elif condicao:)                      [quando a estrutura alvo exigir]
        print e/ou operação
    else:
        print e/ou operação
    uma linha de cálculo       [fora do condicional]
    print final                [um ou mais prints]
    ```
    
- No máximo **uma** linha extra de cálculo aritmético por questão, variando a posição entre as questões (antes do if, dentro de um ramo, ou após o condicional).
- Cada `input()` deve conter um rótulo de até 15 caracteres descrevendo a entrada esperada; exemplo: 
(`idade = int(input("idade: "))`). 
- Quando a saída depender de cálculocom numeros reais (floats), o enunciado deve pedir arredondamento com `round()`; o número de casas varia de 1 a 6. Para valores monetários, use 2 casas. Atenção: em Python `round(2.0, 2)` imprime `2.0`; garanta que os casos de teste reflitam exatamente a saída real.
- Não usar comandos de formatação no comando `print()`.
- Restrição sobre formatação no `print()`: No código de solução, os comandos `print()` devem exibir os valores diretamente, sem qualquer formatação embutida. É proibido usar:
    - f-strings com especificadores de formato (ex.: `f"{x:.2f}", f"{n:>5}"`);
    - o método `.format()` (ex.: `"{:.2f}".format(x)`);
    - o operador de formatação `%` (ex.: `"%.2f" % x`);
    - especificadores de precisão, largura, alinhamento ou separador de milhar (ex.: `:.2f`, `:>10`, `:,`);
    - os parâmetros `sep` e `end` do `print()` (ex.: `print(a, b, sep=", ")`).
    
    Os valores devem ser passados diretamente ao print() ou concatenados como strings simples.
    

## 6. Regras do enunciado

Estrutura, nesta ordem: narrativa curta, comando, fórmula (se houver), lista de entradas, lista de saídas.

- **Narrativa:** história breve que contextualiza o problema, sem enredo complexo. variando sobre os temas:
    - videogames conhecidos;
    - series, filmes, desenhos e personagens da cultura pop;
    - figuras clássicas da história;
    - figuras mitológicas conhecidas (saci pererê, thor, zeus, etc. );
    - Assuntos da vida  acadêmica cotidiana na UFAM (RU, ônibus, notas, cursos, disciplinas, etc.);
    - assuntos interessantes nas area de exatas (viagem espacial, IA, matemática, física, engenharia, etc.)
- **Comando:** o que o programa deve fazer, de forma direta.
- **Fórmulas:** se houver qualquer cálculo (mesmo simples), apresente a fórmula em LaTeX, com o código LaTeX, seguida de explicação breve.
- **Entradas e Saídas** em parágrafos separados; as palavras-chave **Entrada**, **Saída**, **Entrada 1**, **Saída 1**, etc. em negrito. 
- Frase final indicando o tópico avaliado (ex.: “Tópico: Condicional composta com if/else”).

## 7. Regras dos casos de teste (correção automática CodeBench)

- **Cobertura de ramos:** ao menos um caso por caminho (if, cada elif, else).
- **Bordas:** inclua o valor no limite da condição e a condição inversa. Ex.: se a condição é `nota >= 7`, teste `nota = 7` e `nota = 6`.
- **Quantidade:** no mínimo 3 casos públicos (visíveis) e no mínimo 3 privados (para correção), no estilo beecrowd/codeforces. Indique ao lado de cada caso qual ramo ou borda ele cobre.
- **Regra anti-falso-positivo:** a saída de um ramo **não pode** ser substring nem prefixo da saída de outro ramo.
- **Formato exato:** saídas sem espaços extras, sem espaços em branco ao final de linha e com a mesma capitalização e pontuação do enunciado. Prontas para comparação textual direta.

## 8. Regras dos fragmentos de Parsons

- Cada fragmento deve ser curto (máx. ~120 caracteres) e autocontido.
- **Parsons 2D (indentação avaliada):** o cabeçalho de cada ramo (`if`, `elif`, `else`) e cada linha do corpo são fragmentos separados, apresentados já com a indentação relativa correta que o aluno deverá reproduzir. O CodeBench cobra que o aluno posicione e indente cada fragmento.
- Entregue os fragmentos na ordem correta da solução.
- **Distratores (exatamente 2 por questão):** devem ser variações incorretas de linhas específicas da solução (distratores pareados), usando o mesmo estilo e os mesmos nomes de variáveis, para confundir de forma construtiva. Sempre que possível, cada um deve estar pareado a uma linha correta distinta e materializar uma concepção alvo diferente da seção 4. Cada distrator vem marcado com um comentário lateral identificando a linha correta correspondente e a concepção, para o revisor.

## 9. Contrato de saída (ordem exata, por questão)

1. **Título** (até 30 caracteres) no formato `Titulo Unico`.
2. **Enunciado** (conforme seção 6).
3. **Solução de referência** (código Python, conforme seção 5).
4. **Explicação passo a passo** (nível multiestrutural): linha por linha, justificando cada decisão lógica; comente se o código trata ou não entradas inválidas.
5. **Casos de teste**: públicos e privados, cada um com a indicação do ramo/borda coberto.
6. **Distratores** (marcados, com concepção alvo de cada um).
7. **Dicas de resolução**: explicação breve da sintaxe dos comandos e built-ins usados na solução (`round()`, `int()`, `float()`, etc.).
8. **Tópicos abordados**: apenas os itens presentes em `topicosCodeBench.md`.

Não inclua metaexplicações sobre o exercício nem qualquer texto fora deste formato.

## 10. Lista de verificação final (aplique antes de responder)

- [ ]  A solução executa e produz exatamente as saídas de todos os casos de teste.
- [ ]  A contagem de linhas da solução está dentro da faixa da dificuldade pedida.
- [ ]  Cada ramo tem ao menos um teste e as bordas foram cobertas.
- [ ]  Nenhuma saída de ramo é substring ou prefixo da saída de outro ramo.
- [ ]  Há exatamente 2 distratores, cada um pareado a uma linha correta, marcado e refletindo uma concepção da seção 4.
- [ ]  Fragmentos são autocontidos, curtos e estão embaralhados, com a indentação 2D correta em cada fragmento.
- [ ]  Nenhuma função proibida foi usada.
- [ ]  Rótulos de `input()` têm até 15 caracteres; saídas numéricas usam `round()` quando aplicável.
- [ ]  A saída contém apenas o conteúdo do contrato, sem texto extra.

## 11. Exemplo  de questão  de nivel facil (modelo de formato, if/elif/else, nível facil)

**1. Título:** `Prioridade de Propostas - Versão A`

**2. Enunciado:**
Em um processo seletivo para Gerente de Software, duas engenheiras finalistas receberam notas para suas propostas de gestão. Para definir a ordem de avaliação, é preciso comparar as duas notas.

Escreva um programa que leia a nota da Proposta A e a nota da Proposta B e informe qual proposta tem prioridade.

**Entrada 1:** a nota inteira da Proposta A.
**Entrada 2:** a nota inteira da Proposta B.

**Saída:** se as notas forem iguais, imprima `Propostas iguais.`; se a Proposta A for maior, imprima `Proposta A tem prioridade.`; caso contrário, imprima `Proposta B tem prioridade.`

Tópico: Condicional composta com if/elif/else.

**3. Solução:**

```python
nota_a = int(input("Nota A: "))
nota_b = int(input("Nota B: "))
if nota_a == nota_b:
    print("Propostas iguais.")
elif nota_a > nota_b:
    print("Proposta A tem prioridade.")
else:
    print("Proposta B tem prioridade.")
```


**4. Casos de teste:**

Públicos:
- Entrada: `5` / `5` -> Saída: `Propostas iguais.` (ramo if, borda de igualdade)
- Entrada: `8` / `3` -> Saída: `Proposta A tem prioridade.` (ramo elif)
- Entrada: `2` / `9` -> Saída: `Proposta B tem prioridade.` (ramo else)

Privados:
- Entrada: `7` / `6` -> Saída: `Proposta A tem prioridade.` (borda, diferença mínima)
- Entrada: `6` / `7` -> Saída: `Proposta B tem prioridade.` (borda, diferença mínima)
- Entrada: `0` / `0` -> Saída: `Propostas iguais.` (borda, valor zero)

**5. Distratores (marcados):**

```
if nota_a = nota_b:              # DISTRATOR do fragmento "if nota_a == nota_b:" | Concepção 1: atribuição (=) no lugar de igualdade (==)
else nota_b > nota_a:            # DISTRATOR do fragmento "else:" | Concepção 5: else tratado como se aceitasse condição
```

---

Objetivo final: gerar **10** Problemas de Parsons completos sobre condicionais em python de nível medio(8 a 13 linhas), conforme todas as instruções passadas e as intruções do documento `roteiro_parsons_codebench_consolidado.md`, sem comentários adicionais ou texto fora do formato especificado.

Boas praticas e template para elaboracao de questoes.docx
