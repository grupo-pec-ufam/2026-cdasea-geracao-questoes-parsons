# Prompt: Gerador de Problemas de Parsons para Condicionais (if/else) no CodeBench

## 0. Como usar (checklist do professor, não faz parte do prompt enviado à LLM)

- Anexe como contexto: “boas práticas para elaboração de questões”, “instruções para enunciados”, `topicosCodeBench.md` e, se for usar tema fechado, o documento temático.
- Preencha o bloco **1. Parâmetros** abaixo.
- Use o modo de raciocínio mais profundo disponível na LLM.
- Copie a partir da seção **2. Papel** até o fim.

---

## 1. Parâmetros 

- **Quantidade de questões:** 10 (fixo).
- **Estrutura condicional alvo:** {if/else}
- **Concepção(ões) alternativa(s) alvo:** {escolher até 2 da seção 4, uma por distrator}
- **Distratores por questão:** 2 (fixo).
- **Indentação avaliada (Parsons 2D):** sim (fixo; o CodeBench cobra a indentação do aluno).
- **Granularidade do fragmento:** {uma instrução por fragmento | blocos permitidos}
- **Tema/contexto:** livre (a LLM escolhe e pode variar entre as questões, mantendo contextos apropriados para CS1).
- **Idioma:** Português (PT-BR)
- 

---

## 2. Papel

Você é um Professor Especialista em Ciência da Computação e Revisor de Qualidade de itens de avaliação, especializado em **Problemas de Parsons** para Introdução à Programação de Computadores (IPC/CS1). Você domina Teoria da Carga Cognitiva, o catálogo de concepções alternativas (misconceptions) de novatos em estruturas condicionais e o formato de correção automática do CodeBench.

## 3. Tarefa

Gerar **10** Problemas de Parsons completos sobre estruturas condicionais, prontos para uso, respeitando o contrato de saída da seção 9. Raciocine internamente e planeje cada questão antes de escrever, mas **não inclua o raciocínio na resposta**. Antes de emitir a resposta final, aplique integralmente a **Lista de verificação** da seção 10.

## 4. Catálogo de concepções alternativas em condicionais

Use este catálogo para escolher a concepção alvo de cada questão e para desenhar distratores fiéis a erros reais de novatos. Cada distrator deve materializar uma destas concepções:
1. Atribuição no lugar de igualdade: `=` em vez de `==` na condição.
2. Operador de comparação com erro de borda: `>` no lugar de `>=`, `<` no lugar de `<=`.
3. Ausência dos dois-pontos após a condição (`if x > 0` sem `:`).
4. `else` tratado como se aceitasse condição (`else x > 0:`).
5. Efeito colateral no ramo errado: imprimir dentro do ramo quando o cálculo deveria ocorrer depois da condição, ou duplicar/omitir `print`.
6. Ordem das condições cria ramo morto (condição mais geral colocada antes da mais específica).
7. Lógica booleana trocada: `and` por `or`, ou negação incorreta.
8. Conversão de tipo ausente: comparar o retorno de `input()` (string) com número sem `int()`/`float()`.


## 5. Regras do código (solução de referência)

- Subconjunto permitido do Python: `input()`, `print()`, `int()`, `float()`, `round()`, `abs()`, operadores aritméticos, relacionais e lógicos.
- **Não** utilize métodos de lista ou de string prontos (`append`, `strip`, `split`, `sort`, `upper`, etc.), salvo autorização explícita nos parâmetros.
- Código correto, completo e executável.
- Nomes de variáveis descritivos e coerentes com o tema (não use a mesma palavra para variáveis distintas).
- Cada comando `input()` deve conter um rótulo de até 15 caracteres descrevendo a entrada esperada.
- Padrão base de estrutura, variando a posição dos elementos entre as questões:
- 
    
    ```python 
    leitura de um ou mais valores        [varie a quantidade de inputs]
    (opcional) uma linha de cálculo       [antes do if]
    if condicao:
        input e/ou print e/ou linha de cálculo
    else:
        input e/ou print e/ou linha de cálculo
    (opcional) uma linha de cálculo       [após o condicional]
    (opcional) print final                [um ou mais prints]
    ```
- No máximo **uma** linha extra de cálculo aritmético por questão, variando a posição entre as questões (antes do if, dentro de um ramo, ou após o condicional).
- A string de saída do comando `print()` deve ter, no máximo, 15 caracteres.
- Quando a saída depender de cálculo, o enunciado deve pedir arredondamento com `round()`; o número de casas varia de 1 a 6. Para valores monetários, use 2 casas. Atenção: em Python `round(2.0, 2)` imprime `2.0`; garanta que os casos de teste reflitam exatamente a saída real.
- Não usar comandos de formatação no comando `print()`.
- Restrição sobre formatação no `print()`: No código de solução, os comandos `print()` devem exibir os valores diretamente, sem qualquer formatação embutida. É proibido usar:
- f-strings com especificadores de formato (ex.: `f"{x:.2f}", f"{n:>5}")`);
- o método `.format()` (ex.: `"{:.2f}".format(x)`);
- o operador de formatação `%` (ex.: `"%.2f" % x`);
- especificadores de precisão, largura, alinhamento ou separador de milhar (ex.: `:.2f`, `:>10`, `:,`);
- os parâmetros `sep` e `end` do `print()` (ex.: `print(a, b, sep=", ")`).
- Os valores devem ser passados diretamente ao print() ou concatenados como strings simples.

## 6. Regras do enunciado

Estrutura, nesta ordem: narrativa curta, comando, fórmula (se houver), lista de entradas, lista de saídas.

- **Narrativa:** história breve que contextualiza o problema, sem enredo complexo. Deve mencionar uma figura ou elemento relevante da temática escolhida.
- **Comando:** o que o programa deve fazer, de forma direta. Deve deixar claro quais são entradas, o que o programa deve fazer com elas e quais são as saídas. Não deve depender da descrição de outras partes do enunciado.
- **Fórmulas:** se houver qualquer cálculo (mesmo simples), apresente a fórmula em LaTeX, com o código LaTeX, seguida de explicação breve.
- **Entradas e Saídas** em listas de tópicos separados; as palavras-chave **Entrada**, **Saída** em negrito; cada entrada deve ser descrita em um tópico (bullet) distinto; as descrições de cada entrada e saída devem ser breves e diretas. Deve resumir as entradas e saídas descritas na parte **Comando**.
- Frase final indicando o tópico avaliado (ex.: “Tópico: Condicional composta com if/else”).

## 7. Regras dos casos de teste (correção automática CodeBench)

- **Cobertura de ramos:** ao menos um caso por caminho (if, else).
- **Bordas:** inclua o valor no limite da condição e a condição inversa. Ex.: se a condição é `nota >= 7`, teste `nota = 7` e `nota = 6`.
- **Quantidade:** no mínimo 3 casos públicos (visíveis) e no mínimo 3 privados (para correção), no estilo beecrowd/codeforces. Indique ao lado de cada caso qual ramo ou borda ele cobre.
- **Regra anti-falso-positivo:** a saída de um ramo **não pode** ser substring nem prefixo da saída de outro ramo.
- **Formato exato:** saídas sem espaços extras, sem espaços em branco ao final de linha e com a mesma capitalização e pontuação do enunciado. Prontas para comparação textual direta.

## 8. Regras dos fragmentos de Parsons

- Cada fragmento deve ser curto (máx. ~120 caracteres) e autocontido.
- **Parsons 2D (indentação avaliada):** o cabeçalho de cada ramo (`if`, `else`) e cada linha do corpo são fragmentos separados, apresentados já com a indentação relativa correta que o aluno deverá reproduzir. O CodeBench cobra que o aluno posicione e indente cada fragmento.
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
- [ ]  Cada ramo tem ao menos um teste e as bordas foram cobertas.
- [ ]  Nenhuma saída de ramo é substring ou prefixo da saída de outro ramo.
- [ ]  Há exatamente 2 distratores, cada um pareado a uma linha correta, marcado e refletindo uma concepção da seção 4.
- [ ]  Fragmentos são autocontidos, curtos e estão embaralhados, com a indentação 2D correta em cada fragmento.
- [ ]  Nenhuma função proibida foi usada.
- [ ]  Rótulos de `input()` têm até 15 caracteres; saídas numéricas usam `round()` quando aplicável.
- [ ]  A saída contém apenas o conteúdo do contrato, sem texto extra.

## 11. Exemplo resolvido (modelo de formato, if/elif/else, nível Média)

**1. Título:** `Prioridade de Propostas - Versão A`

**2. Enunciado:**
Em um processo seletivo para Gerente de Software, duas engenheiras finalistas receberam notas para suas propostas de gestão. Para definir a ordem de avaliação, é preciso comparar as duas notas.

Escreva um programa que leia a nota da Proposta A e a nota da Proposta B e informe qual proposta tem prioridade.

**Entrada 1:** a nota inteira da Proposta A.
**Entrada 2:** a nota inteira da Proposta B.

**Saída:** se as notas forem iguais, imprima `Propostas iguais.`; se a Proposta A for maior, imprima `Proposta A tem prioridade.`; caso contrário, imprima `Proposta B tem prioridade.`

Tópico: Condicional composta com if/elif/else.

**3. Solução de referência:**

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
4. Explicação passo a passo:
As duas primeiras linhas leem as notas e as convertem para inteiro com int(), pois input() retorna string. A condição nota_a == nota_b usa o operador de igualdade == para testar empate. O elif cobre o caso em que A supera B; o else cobre o único caso restante, B maior que A. O código não valida entradas não numéricas: valores não inteiros gerariam erro na conversão.

**5. Casos de teste:**

Públicos:
- Entrada: `5` / `5` -> Saída: `Propostas iguais.` (ramo if, borda de igualdade)
- Entrada: `8` / `3` -> Saída: `Proposta A tem prioridade.` (ramo elif)
- Entrada: `2` / `9` -> Saída: `Proposta B tem prioridade.` (ramo else)

Privados:
- Entrada: `7` / `6` -> Saída: `Proposta A tem prioridade.` (borda, diferença mínima)
- Entrada: `6` / `7` -> Saída: `Proposta B tem prioridade.` (borda, diferença mínima)
- Entrada: `0` / `0` -> Saída: `Propostas iguais.` (borda, valor zero)

**6. Distratores (marcados):**

```
if nota_a = nota_b:              # DISTRATOR do fragmento "if nota_a == nota_b:" | Concepção 1: atribuição (=) no lugar de igualdade (==)
else nota_b > nota_a:            # DISTRATOR do fragmento "else:" | Concepção 5: else tratado como se aceitasse condição
```
**7. Dicas de resolução:**`input()` sempre retorna texto; use `int()` para comparar numericamente. Use `==` (dois iguais) para testar igualdade; um único `=` é atribuição. O `else` não recebe condição.

**8. Tópicos abordados:** (selecionar de `topicosCodeBench.md`, ex.: Leitura de dados, Conversão de tipos, Condicional composta if/elif/else, Operadores relacionais.)

---

Objetivo final: gerar 10 Problemas de Parsons completos sobre condicionais compostos (if/else), conforme todas as instruções acima, sem comentários adicionais ou texto fora do formato especificado.
