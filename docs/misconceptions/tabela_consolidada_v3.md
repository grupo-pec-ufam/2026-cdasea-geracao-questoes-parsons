# Misconceptions de programação por módulo de IPC

Cruzamento dos catálogos de Sorva (2012, Apêndice A), Progmiscon/Chiodini et al. (2021, Python), Corinna List et al. (2026, Java/Processing, adaptado para Python), Caceffo et al. (Python, tópicos B, D e G) e Řechtáčková et al. (ITiCSE 2024). Entram apenas os itens que se encaixam em algum módulo de IPC (M1 a M6); os demais estão listados no final.

## Como ler a tabela

**Nº** segue o padrão *Módulo.Erro* (ex.: M2.E5 = módulo 2, erro 5). Cada item tem um único número, no módulo em que ele é mais central; a coluna **Outros módulos** indica onde mais ele aparece. Dentro de cada módulo, os itens seguem a ordem dos catálogos: Sorva, Progmiscon, Corinna List, Caceffo e Řechtáčková.

**Fonte(s)** traz o identificador do item em cada catálogo: número no Sorva, nome no Progmiscon e na Corinna List, código no Caceffo e código EduLint na Řechtáčková. Itens com mais de uma fonte aparecem em mais de um catálogo.

## Resumo por módulo

| Módulo | Tema | Misconceptions |
|---|---|---|
| [M1](#m1) | Variáveis e programação sequencial | 57 |
| [M2](#m2) | Estruturas condicionais compostas | 25 |
| [M3E](#m3e) | Estruturas condicionais encadeadas (elif) | 5 |
| [M3A](#m3a) | Estruturas condicionais aninhadas (if/if) | 1 |
| [M4](#m4) | Repetição por condição (while) | 12 |
| [M5](#m5) | Vetores e strings | 16 |
| [M6](#m6) | Repetição por contagem (for) | 11 |
| **Total** | | **127** |

## M1

**Variáveis e programação sequencial**

| Nº | Misconception | Descrição | Fonte(s) | Outros módulos | Observação |
|---|---|---|---|---|---|
| **M1.E1** | Atribuição guarda a expressão, não o valor | "=" guarda a expressão: a variável guarda uma referência à expressão. | Sorva #15<br>Progmiscon `VariablesHoldExpressions` | — |  |
| **M1.E2** | Valores atualizados automaticamente pelo contexto | Valores são atualizados automaticamente conforme um contexto lógico. | Sorva #3 | — | Tema próximo do PB.6 do Caceffo (removido por depender de função). |
| **M1.E3** | Computador entende inglês | A máquina entende inglês. | Sorva #7 | — |  |
| **M1.E4** | Várias linhas executando ao mesmo tempo | Paralelismo mágico: várias linhas de um programa simples podem estar ativas ou conhecidas ao mesmo tempo. | Sorva #8 | — |  |
| **M1.E5** | Variável guarda vários valores / lembra valores antigos | Uma variável pode guardar vários valores ao mesmo tempo ou "lembrar" valores antigos. | Sorva #9 | — |  |
| **M1.E6** | Variável recebe valor padrão ao ser criada | Variáveis sempre recebem um valor padrão ao serem criadas. | Sorva #10 | — |  |
| **M1.E7** | Atribuição funciona na direção oposta | A atribuição de tipos primitivos funciona na direção oposta. | Sorva #11 | — |  |
| **M1.E8** | Atribuição funciona nos dois sentidos (troca) | A atribuição de tipos primitivos funciona nos dois sentidos (troca os valores). | Sorva #12 | — |  |
| **M1.E9** | Expressão sem noção de avaliação | Entendimento limitado de expressões, sem o conceito de avaliação. | Sorva #13 | — |  |
| **M1.E10** | Variável é só um par nome–valor, fora do computador | Uma variável seria apenas o par de um nome com um valor modificável (com tipo), e não algo guardado dentro do computador. | Sorva #14 | — |  |
| **M1.E11** | Atribuição move o valor de uma variável para outra | A atribuição move um valor de uma variável para outra. | Sorva #16 | — |  |
| **M1.E12** | Significado do nome da variável afeta o valor recebido | A semântica em língua natural dos nomes de variáveis afeta qual valor vai para qual variável. | Sorva #17 | — |  |
| **M1.E13** | Ordem de declaração das variáveis afeta o valor recebido | A ordem de declaração dos nomes de variáveis afeta qual valor é atribuído a qual variável. | Sorva #18 | — |  |
| **M1.E14** | Variável sem limite de tamanho ou precisão | Não há limite de tamanho ou precisão para os valores que uma variável pode guardar. | Sorva #19 | — |  |
| **M1.E15** | Dificuldade com a sequência dos comandos | Dificuldade em entender a sequencialidade dos comandos. | Sorva #23 | — |  |
| **M1.E16** | Dificuldade com o efeito de input() na execução | Dificuldade em entender o efeito das chamadas de função de entrada na execução. | Sorva #150 | — |  |
| **M1.E17** | Números são só números (por que int e float?) | Números são apenas números (por que ter int e float separados?). | Sorva #155 | — |  |
| **M1.E18** | Tipo é um conjunto de restrições sobre valores | Um tipo é um conjunto de restrições sobre valores. | Sorva #156 | — |  |
| **M1.E19** | Confusão entre dado na memória e dado na tela | Confusão entre dados na memória e dados na tela. | Sorva #158 | — |  |
| **M1.E20** | Computador guarda na memória o que foi impresso | O computador mantém na memória o que foi impresso. | Sorva #159 | — |  |
| **M1.E21** | String "456" confundida com o número 456 | Confundir representações textuais entre si, ex.: a string "456" com o número. | Sorva #160 | M5 |  |
| **M1.E22** | Expressão precisa ter mais de uma parte | Expressões precisam ser formadas por mais de uma parte. | Progmiscon `NoAtomicExpression` | — |  |
| **M1.E23** | Palavra reservada usada como identificador | Qualquer sequência de letras e dígitos começando com letra ou _ pode ser usada como identificador. | Progmiscon `NoReservedWords` | — | Parecido com "nome que é built-in do Python" (Řechtáčková), mas aqui é palavra reservada, não nome de função built-in. |
| **M1.E24** | Chamadas aninhadas avaliadas de fora para dentro | Chamadas de função aninhadas são executadas de fora para dentro. | Progmiscon `OutsideInFunctionNesting`<br>Corinna List *Function Calls Read Outside In* | — | Item da Corinna List adaptado: o conceito vale para built-ins aninhados em Python. |
| **M1.E25** | Parênteses opcionais em chamada sem argumentos | Os () são opcionais em chamadas de função sem argumentos. | Progmiscon `ParenthesesOnlyIfArgument` | — |  |
| **M1.E26** | Chamadas de função não podem ser aninhadas | Acredita que uma chamada de função não pode ficar dentro da lista de argumentos de outra. | Corinna List *No Nested Function Calls* | — | Item da Corinna List adaptado para built-ins de Python. ⚠ Conferir o nome exato no repositório da Corinna List (no artigo aparece "No Function Calls Inside Functions", que é sobre chamar função dentro de outra função, não dentro de argumentos). |
| **M1.E27** | Espaço em branco inadequado: tabs e espaços misturados | Mistura de tabs e espaços. | Řechtáčková E101,E223,E224,E273,E274 | — |  |
| **M1.E28** | Uso de identificadores não-ingleses | O código usa nomes de função/variável que não estão em inglês. | Řechtáčková (sem código EduLint) | — | ⚠ Revisar: M1 cobre regras de nomeação, mas em IPC os alunos normalmente usam identificadores em português, então este item pode não fazer sentido para a disciplina. |
| **M1.E29** | Nome de variável fácil de confundir (I, l, O) | O código contém uma variável chamada I, l ou O. | Řechtáčková E741, E743 | — |  |
| **M1.E30** | Caracteres não-ASCII no identificador | Uso de caracteres fora do ASCII no nome de identificadores. | Řechtáčková C0144 | — |  |
| **M1.E31** | Nome de variável com uma letra só | Nome de variável com uma única letra (com exceções usuais como i, j e n). | Řechtáčková (sem código EduLint) | — |  |
| **M1.E32** | Expressão duplicada | Ocorrências repetidas da mesma expressão (complexa). | Řechtáčková R6597 | — |  |
| **M1.E33** | Nome que é built-in do Python | Nome de variável igual ao de uma função built-in. | Řechtáčková W0622 | — |  |
| **M1.E34** | Comando sem efeito | O código contém um comando que não tem efeito na execução. | Řechtáčková W0104 | — |  |
| **M1.E35** | Espaço em branco inadequado: visível (PEP8) | Violação das convenções PEP 8 de espaçamento (indentação, espaços em torno de operadores, linhas em branco). | Řechtáčková E305,E302,E303,E231,E225,E211,E228,E251,E203,E202,E201,E301,E227,E306,E252,E275,E117,E128,E116,E114,E127,E113,E122,E112,E125,E115,E131,E129 | — |  |
| **M1.E36** | Identificador que quebra convenção de nomenclatura | O código contém identificador que não segue as convenções de nomenclatura. | Řechtáčková C0103 | — |  |
| **M1.E37** | Reimplementação de biblioteca padrão | O código reimplementa funcionalidade já disponível numa biblioteca padrão. | Řechtáčková (sem código EduLint) | — |  |
| **M1.E38** | Variável não utilizada | Variável definida mas nunca lida. | Řechtáčková F841 | — |  |
| **M1.E39** | Linha longa (>100 caracteres) | Linha com mais de 100 caracteres. | Řechtáčková C0301 | — |  |
| **M1.E40** | Atribuição que podia ser aumentada (x += n) | Atualização de variável que podia usar operador de atribuição aumentada (+=, -=). | Řechtáčková R6609 | — |  |
| **M1.E41** | Import não utilizado | Módulo importado mas não usado. | Řechtáčková F401 | — |  |
| **M1.E42** | Script longo (>20 comandos fora de função) | Programa com mais de 20 comandos fora de funções. | Řechtáčková R6701 | — |  |
| **M1.E43** | Operador desnecessário (+ ou dupla negação) | O código usa sinal de mais desnecessário ou dupla negação. | Řechtáčková WPS330 | — |  |
| **M1.E44** | Aritmética redundante (identidade) | Operação de identidade ou expressão de valor constante (ex: 1*x). | Řechtáčková R6608 | — |  |
| **M1.E45** | Parênteses desnecessários | Parênteses usados em torno de um único item após if, for ou outra palavra-chave. | Řechtáčková C0325 | — |  |
| **M1.E46** | Múltiplos comandos numa linha só | Mais de um comando na mesma linha. | Řechtáčková E702, E704, E701 | — |  |
| **M1.E47** | Comentário trivial | Comentário trivial que só repete o que o comando já diz. | Řechtáčková (sem código EduLint) | — |  |
| **M1.E48** | Variável/atributo redundante | Duas variáveis/atributos onde um pode ser facilmente calculado a partir do outro. | Řechtáčková (sem código EduLint) | — |  |
| **M1.E49** | Uso de valor já conhecido como se fosse variável | Uso de uma expressão que já foi testada antes para um valor específico. | Řechtáčková (sem código EduLint) | — |  |
| **M1.E50** | Operação aritmética repetida | Uso repetido da mesma operação aritmética sobre a mesma expressão. | Řechtáčková R6607 | — |  |
| **M1.E51** | Código comentado (morto) | O código contém trechos comentados (código morto). | Řechtáčková E800 | — |  |
| **M1.E52** | Espaço em branco inadequado: no final da linha | Violação de PEP 8 quanto a espaços no fim da linha/arquivo. | Řechtáčková W291,W292,W391,W293 | — |  |
| **M1.E53** | Uso de divisão float convertida pra int | Uso de divisão float com conversão imediata pra int. | Řechtáčková R6602 | — |  |
| **M1.E54** | Comparação explícita de tipo (em vez de isinstance) | O código compara tipos em vez de usar isinstance. | Řechtáčková C0123 | — | ⚠ Revisar: isinstance() não está na ementa de M1. Sugestão: descartar. |
| **M1.E55** | Import fora do nível principal do módulo | Import de módulo feito fora do nível principal do arquivo. | Řechtáčková C0415 | — |  |
| **M1.E56** | Valor absoluto (condição composta que vira abs()) | Condição composta equivalente a uma única condição com valor absoluto. | Řechtáčková (sem código EduLint) | M2 |  |
| **M1.E57** | If em vez de usar min/max | Uso de if pra achar máximo/mínimo, em vez da função max/min. | Řechtáčková R1731, R1730 | M2 |  |

## M2

**Estruturas condicionais compostas**

| Nº | Misconception | Descrição | Fonte(s) | Outros módulos | Observação |
|---|---|---|---|---|---|
| **M2.E1** | Código depois do if não executa se o "then" executou | O código depois de um if não é executado se o ramo "then" foi executado. | Sorva #24 | — |  |
| **M2.E2** | If executa assim que a condição fica verdadeira | O if é executado assim que sua condição se torna verdadeira. | Sorva #25 | M4 |  |
| **M2.E3** | Condição falsa sem else encerra o programa | Uma condição falsa encerra o programa se não houver ramo else. | Sorva #26 | — |  |
| **M2.E4** | Os dois ramos (then e else) executam | Os ramos "then" e "else" são ambos executados. | Sorva #27 | — |  |
| **M2.E5** | O ramo "then" sempre executa | O ramo "then" é sempre executado. | Sorva #28 | — |  |
| **M2.E6** | Else é opcional (o próximo comando é o else) | Usar else é opcional (o próximo comando é sempre o ramo else). | Sorva #29 | — |  |
| **M2.E7** | Print executa sempre, independente dos desvios | Comandos de impressão sempre executam, independentemente dos comandos de desvio. | Sorva #35 | — |  |
| **M2.E8** | Todos os comandos executam ao menos uma vez | Todos os comandos de um programa são executados pelo menos uma vez. | Sorva #36 | — |  |
| **M2.E9** | Valores de expressões condicionais são impressos | Os valores de expressões condicionais são impressos. | Sorva #154 | — |  |
| **M2.E10** | Booleano é só para condicionais, não é dado | Valores booleanos seriam apenas algo usado em condicionais, e não dados comparáveis a números ou strings. | Sorva #161 | — |  |
| **M2.E11** | If-else redundante (retorna True/False) | Para transformar uma expressão booleana em bool, é necessário um if. | Progmiscon `MapToBooleanWithIf`<br>Řechtáčková R6201 | — | Mesmo erro: a Progmiscon descreve a crença do aluno e a Řechtáčková, como ela aparece no código. |
| **M2.E12** | Comparação redundante (== True/False) | Para testar se uma expressão é True ou False, é preciso compará-la com True ou False. | Progmiscon `ComparisonWithBoolLiteral`<br>Řechtáčková E712, R6613 | — | Mesmo erro visto de dois ângulos: a Progmiscon descreve a crença do aluno e a Řechtáčková, como ela aparece no código. |
| **M2.E13** | Operador "=" tratado como comparação | "=" compara dois valores. | Progmiscon `AssignCompares` | — |  |
| **M2.E14** | If-else tratado como dois ifs em sequência | If-else é equivalente a uma sequência de dois ifs. | Progmiscon `ConditionalIsSequence` | — |  |
| **M2.E15** | Expressão booleana reavaliada a cada iteração do loop, sem necessidade | Um loop é usado onde uma expressão booleana precisaria ser avaliada só uma vez. | Caceffo PG.4 | M4, M6 | (Tema parecido com 'while que deveria ser for' [R6305] da Řechtáčková, mas não é o mesmo erro.) Tema de reavaliação em loop é próximo, mas motivação e construção diferentes. |
| **M2.E16** | Bloco sem efeito | Um if ou loop não tem efeito nenhum. | Řechtáčková WPS328 | M4, M6 |  |
| **M2.E17** | Ifs consecutivos com mesmo corpo | Ifs consecutivos com o mesmo corpo. | Řechtáčková R6596 | M3E |  |
| **M2.E18** | Bloco duplicado dentro de if/else | Blocos duplicados dentro de if/elif/else, quando a condição podia ser avaliada dentro do bloco. | Řechtáčková (sem código EduLint) | — |  |
| **M2.E19** | Todos os ramos do if começam/terminam com código idêntico | Todos os ramos do if/elif/else começam ou terminam com o mesmo código, que podia ser movido pra fora do bloco. | Řechtáčková R6595 | — |  |
| **M2.E20** | Else/elif desnecessário | Uso redundante de else quando o ramo positivo já usa return/break/continue. | Řechtáčková R1705, R1723 | M3E |  |
| **M2.E21** | If vazio (ramo com só pass) | Ramo redundante contendo só 'pass'. | Řechtáčková R6205 | — |  |
| **M2.E22** | Condição redundante (seguida de loop) | Condição que pode ser removida porque o loop seguinte não executaria nenhuma iteração de qualquer forma. | Řechtáčková (sem código EduLint) | M4, M6 |  |
| **M2.E23** | Comparações combináveis (== múltiplas) | Comparar a mesma expressão a múltiplos valores. | Řechtáčková R1714 | M5 |  |
| **M2.E24** | Condição negada com cláusula else | If com ramo else cuja condição está negada. | Řechtáčková WPS504 | — |  |
| **M2.E25** | Argumento não vem primeiro na comparação | Comparação onde a constante vem primeiro e a variável só depois. | Řechtáčková WPS309 | — |  |

## M3E

**Estruturas condicionais encadeadas (elif)**

| Nº | Misconception | Descrição | Fonte(s) | Outros módulos | Observação |
|---|---|---|---|---|---|
| **M3E.E1** | And/or sempre avaliam os dois operandos | and/or sempre avaliam os dois operandos. | Progmiscon `NoShortCircuit` | M3A |  |
| **M3E.E2** | Precedência incorreta de operadores booleanos | A ordem de precedência da expressão booleana é diferente da que era pretendida. | Caceffo PG.1 | M3A |  |
| **M3E.E3** | Elif redundante (condição sempre verdadeira) | Cláusula if com condição sempre verdadeira. | Řechtáčková R6611 | — |  |
| **M3E.E4** | Else contendo só um if (deveria ser elif) | Cláusula else contendo só um bloco if-else (devia ser elif). | Řechtáčková R6605 | — |  |
| **M3E.E5** | 'not' redundante | Expressão booleana com negação que podia ser aplicada de forma direta. | Řechtáčková C0113 | M3A |  |

## M3A

**Estruturas condicionais aninhadas (if/if)**

| Nº | Misconception | Descrição | Fonte(s) | Outros módulos | Observação |
|---|---|---|---|---|---|
| **M3A.E1** | Ifs aninhados que podiam ser uma única expressão booleana | Uma expressão booleana é escrita como uma sequência de if-else aninhados. | Caceffo PG.2<br>Řechtáčková R6207 | — | Mesmo erro: if aninhado que podia virar uma expressão booleana única com 'and'. |

## M4

**Repetição por condição (while)**

| Nº | Misconception | Descrição | Fonte(s) | Outros módulos | Observação |
|---|---|---|---|---|---|
| **M4.E1** | Incrementar contador é operação indivisível | Incrementar um contador é uma operação indivisível (sem avaliar separadamente o lado direito). | Sorva #20 | — |  |
| **M4.E2** | Código adjacente executa dentro do laço | Código adjacente ao laço executa dentro dele. | Sorva #30 | M6 |  |
| **M4.E3** | Controle volta ao início quando a condição é falsa | O controle volta ao início quando a condição é falsa. | Sorva #31 | — |  |
| **M4.E4** | While termina assim que a condição vira falsa | O laço while termina assim que a condição passa a ser falsa (no meio do bloco). | Sorva #33 | — |  |
| **M4.E5** | Corpo do if repetindo como se fosse laço | O corpo de um if executa repetidamente enquanto a condição for verdadeira. | Progmiscon `IfIsLoop` | — |  |
| **M4.E6** | Atualização incorreta do contador do loop | O contador do loop não é atualizado corretamente, causando um número errado de execuções. | Caceffo PD.1 | — | (Tema parecido com 'mudança da variável de controle de um for (sem efeito)' [R6304] da Řechtáčková, mas não é o mesmo erro.) Tema de contador de loop é próximo, mas Řechtáčková cobre só for-loops (mudança sem efeito); Caceffo é erro real de atualização incorreta. |
| **M4.E7** | Uso do resultado do loop antes dele terminar | Resultados parciais encontrados durante as iterações são usados como se já fossem o resultado final. | Caceffo PD.2 | M6 |  |
| **M4.E8** | Controle de fluxo errado dentro do loop | O número de vezes que o loop executa está errado. | Caceffo PD.4 | M6 |  |
| **M4.E9** | Ausência de loop onde um seria necessário | Nenhuma estrutura de loop é declarada, onde uma seria necessária para o programa funcionar corretamente. | Caceffo PD.5 | M6 | (Tema parecido com 'for redundante (0 ou 1 iteração)' [R6606] da Řechtáčková, mas não é o mesmo erro.) Řechtáčková marca loop com 0/1 iteração como redundante (código correto); Caceffo é ausência total do loop quando seria necessário (bug). |
| **M4.E10** | Loop bem construído mas desconectado da lógica geral | O loop em si está bem construído, mas há erro de lógica ao considerar como ele se conecta com o código antes/depois dele. | Caceffo PD.6 | M6 |  |
| **M4.E11** | Sequência de comandos duplicada | Sequência de comandos (ou blocos) iguais ou que diferem em um único valor. | Řechtáčková R6599 | M6 |  |
| **M4.E12** | while usado no lugar de for | Laço while com número de iterações conhecido antes de começar. | Řechtáčková R6305 | M6 |  |

## M5

**Vetores e strings**

| Nº | Misconception | Descrição | Fonte(s) | Outros módulos | Observação |
|---|---|---|---|---|---|
| **M5.E1** | Atribuição copia o objeto | A atribuição copia o objeto. | Sorva #66<br>Progmiscon `AssignmentCopiesObject` | — |  |
| **M5.E2** | Confusão entre o vetor e uma célula dele | Confusão entre um vetor e uma de suas células. | Sorva #151 | — |  |
| **M5.E3** | Dificuldade com vetores que guardam índices como dados | Dificuldade com vetores que contêm índices como dados. | Sorva #153 | — |  |
| **M5.E4** | Variável contém o objeto inteiro | Uma variável contém um objeto inteiro. | Progmiscon `VariablesHoldObjects` | — |  |
| **M5.E5** | Criar vetor de tamanho n com chaves | Acredita que as chaves {} criam um vetor de tamanho específico (ex.: { 5 } criaria vetor de tamanho 5). | Corinna List *Array Init Needs Curly Brackets* | — | Adaptado de Java/Processing: o conceito vale para listas em Python. Em Python o equivalente é achar que [5] cria uma lista de 5 posições. |
| **M5.E6** | Índice do vetor precisa de parênteses extras | Acredita que acessar um elemento exige parênteses extras em volta do índice. | Corinna List *Array Indexing Needs Parentheses* | — | Adaptado de Java/Processing: o conceito vale para listas em Python. Avaliação Corinna List (Descobribilidade/Barreira/Frequência): L/L/L. |
| **M5.E7** | Tamanho do vetor escrito como número fixo | Acredita que o tamanho do vetor deve ser escrito como número fixo, e não obtido pela propriedade de tamanho (len() em Python). | Corinna List *Array Length as Number* | M6 | Adaptado de Java/Processing: o conceito vale para listas em Python. Avaliação Corinna List (Descobribilidade/Barreira/Frequência): L/H/H. |
| **M5.E8** | Tamanho do vetor só serve em condição de laço | Acredita que o tamanho do vetor só pode ser usado dentro de condições de laço. | Corinna List *Array Length Only in Loop Conditions* | M6 | Adaptado de Java/Processing: o conceito vale para listas em Python. Avaliação Corinna List (Descobribilidade/Barreira/Frequência): M/H/H. |
| **M5.E9** | Vetor vazio ao ser criado | Acredita que vetores ficam completamente vazios após a criação (em Java, recebem valores padrão). | Corinna List *Arrays Empty At Beginning* | — | Adaptado de Java/Processing: o conceito vale para listas em Python. Em Python o equivalente é a criação com [0]*n. Avaliação Corinna List (Descobribilidade/Barreira/Frequência): L/L/L. |
| **M5.E10** | Laço para acessar elemento de índice conhecido | Acredita que é sempre preciso um laço para acessar um elemento, mesmo já sabendo o índice. | Corinna List *Loops for Array Index Access* | M6 | Adaptado de Java/Processing: o conceito vale para listas em Python. |
| **M5.E11** | Vetor cresce sozinho ao atribuir índice novo | Acredita que o tamanho do vetor é flexível e que basta atribuir a um índice fora do limite para ampliá-lo. | Corinna List *Arrays Grow* | — | Adaptado de Java/Processing: o conceito vale para listas em Python. Em Python o resultado é IndexError. |
| **M5.E12** | Lista usada pra testar associação (devia ser set) | O código testa associação numa lista repetidamente, quando podia ser um set. | Řechtáčková (sem código EduLint) | — | ⚠ Revisar: a correção sugerida usa set, que não está na ementa de M5. Sugestão: descartar. |
| **M5.E13** | Comparação de tamanho zero (em vez de bool direto) | Testar se container está vazio comparando tamanho a zero, em vez do jeito pythonico. | Řechtáčková C1803 | M2 |  |
| **M5.E14** | Uso de len(container) sem comparação | Testar vazio pegando o tamanho e convertendo implicitamente pra bool. | Řechtáčková C1802 | M2 |  |
| **M5.E15** | Extensão de lista inadequada (+= em vez de append) | Lista estendida com um único argumento em vez de usar append. | Řechtáčková R6601 | — |  |
| **M5.E16** | Componente redundante em fatiamento (slice) | O código explicita limites implícitos num fatiamento de lista. | Řechtáčková WPS349 | — |  |

## M6

**Repetição por contagem (for)**

| Nº | Misconception | Descrição | Fonte(s) | Outros módulos | Observação |
|---|---|---|---|---|---|
| **M6.E1** | Alterar a variável de controle do for (sem efeito) | As variáveis de controle do for não têm valor dentro do laço ou podem ser alteradas arbitrariamente. | Sorva #34<br>Řechtáčková R6304 | — | Faltava como linha própria na Řechtáčková; cruzada com Sorva 34. |
| **M6.E2** | Dificuldade com mudança automática da variável do for | Dificuldade em entender as mudanças automáticas da variável de controle do laço for. | Sorva #32 | — |  |
| **M6.E3** | Variável do for restringe valores lidos dentro do laço | A variável de controle do for restringe os valores que podem ser lidos dentro do laço. | Sorva #162 | — |  |
| **M6.E4** | Um laço separado para cada vetor | Acredita que são necessários laços separados para percorrer vetores logicamente ligados e de mesmo tamanho. | Corinna List *One Loop per Array* | M5 | Adaptado de Java/Processing: o conceito vale para listas em Python. Avaliação Corinna List (Descobribilidade/Barreira/Frequência): M/L/H. |
| **M6.E5** | Loop com número certo de iterações, mas range errado | Inicialização ou condição de parada do contador mal construída, gerando um número inesperado de iterações. | Caceffo PD.3 | — |  |
| **M6.E6** | For sobre elementos tratado como se fosse sobre índices | O for é declarado iterando sobre os elementos (sem range), mas o código usa o iterador como se fosse um índice, com colchetes. | Caceffo PD.7 | M5 | (Tema parecido com 'for com indexação redundante' [R6101] da Řechtáčková, mas não é o mesmo erro.) Mesmo tema (índice vs. elemento em for), mas direção oposta: aqui é bug de tipo, não estilo. |
| **M6.E7** | For sobre índices (range) tratado como se fosse sobre elementos | O for é declarado iterando sobre um range (índices), mas o código usa o iterador como se fosse o próprio elemento. | Caceffo PD.8 | M5 | (Tema parecido com 'for com indexação redundante' [R6101] da Řechtáčková, mas não é o mesmo erro.) Mesmo tema, direção oposta, bug de tipo. |
| **M6.E8** | Nome enganoso (i/j usado para item, não índice) | Nome i ou j usado ao percorrer itens, não índices. | Řechtáčková (sem código EduLint) | M1 |  |
| **M6.E9** | Variável de controle não utilizada | Variável de controle do loop não é usada dentro dele. | Řechtáčková (sem código EduLint) | — |  |
| **M6.E10** | For com indexação redundante | Percorrer índices e acessar (sem modificar) só o item do índice atual. | Řechtáčková R6101 | M5 | Faltava como linha própria; antes só aparecia citado na observação de PD.7/PD.8. |
| **M6.E11** | For redundante (0 ou 1 iteração) | Laço for com zero ou uma única iteração. | Řechtáčková R6606 | — |  |

## Itens descartados (fora dos módulos M1 a M6)

| Catálogo | Entraram | Descartados | Motivo |
|---|---|---|---|
| Sorva (Apêndice A) | 41 de 162 | 121 | Orientação a objetos (71), referências e objetos (16), chamadas de subprograma (16), recursão (8), específicos de Java (21, 22), vagos demais (1, 2, 4, 5, 6), ordem de subprogramas (37), matriz 2D e mudança de tipo em Java (152, 157). |
| Progmiscon (Python) | 13 de 30 | 17 | Orientação a objetos, `__init__`, `self` e encadeamento de atributos (CannotChainAttributeAccesses, CannotChainAttributeToObjectInstantiation, InitCreates, InitReturnsObject, NoEmptyInit, ObjectsMustBeNamed, SelfAssignable, SelfNoExpression, StringLiteralNoObject, RightToLeftChaining); funções definidas pelo aluno e recursão (DeferredReturn, MultipleValuesReturn, RecursiveFunctionNeedsIfElse, ReturnCall, ReturnUnwindsMultipleFrames); fora do conteúdo (MapToBooleanWithTernaryOperator, NoSingleLogicAnd). |
| Corinna List (Java/Processing) | 10 de 30 | 20 | Os 18 itens de Functions que dependem de função definida pelo aluno (parâmetro, return, assinatura), Inner Arrays Uniform (matriz) e Arrays Always Contain Data (objetos). |
| Caceffo (Python, B/D/G) | 11 de 15 | 4 | PB.1, PB.3, PB.5 e PB.6, que dependem de função ou escopo de função. |
| Řechtáčková | 59 de 80 | 21 | Itens sobre funções, docstrings, anotação de tipo, arquivos, f-strings e afins, além de R6401 (variáveis globais, escopo de função). |

## Correspondência com a numeração anterior

<details><summary>Numeração da versão anterior (v3) → numeração atual</summary>

| Nº anterior | Nº atual |
|---|---|
| M4.E1 | M4.E6 |
| M4.E2 / M6.E1 | M4.E7 |
| M6.E2 | M6.E5 |
| M4.E3 / M6.E3 | M4.E8 |
| M4.E4 / M6.E4 | M4.E9 |
| M4.E5 / M6.E5 | M4.E10 |
| M6.E6 / M5.E1 | M6.E6 |
| M6.E7 / M5.E2 | M6.E7 |
| M3E.E1 / M3A.E1 | M3E.E2 |
| M3A.E2 | M3A.E1 |
| M2.E1 / M4.E6 / M6.E8 | M2.E15 |
| M2.E2 | M2.E11 |
| M1.E1 | M1.E27 |
| M1.E2 | M1.E28 |
| M1.E3 | M1.E29 |
| M1.E4 | M1.E30 |
| M1.E5 | M1.E31 |
| M1.E6 | M1.E32 |
| M1.E7 | M1.E33 |
| M4.E7 / M6.E9 | M4.E11 |
| M2.E3 / M4.E8 / M6.E10 | M2.E16 |
| M1.E8 | M1.E34 |
| M1.E9 | M1.E35 |
| M1.E10 | M1.E36 |
| M6.E11 / M1.E11 | M6.E8 |
| M2.E4 / M3E.E2 | M2.E17 |
| M1.E12 | M1.E37 |
| M2.E5 | M2.E18 |
| M2.E6 | M2.E19 |
| M2.E7 | M2.E12 |
| M1.E13 | M1.E38 |
| M2.E8 / M3E.E3 | M2.E20 |
| M1.E14 | M1.E39 |
| M1.E15 | M1.E40 |
| M1.E16 | M1.E41 |
| M1.E17 | M1.E42 |
| M3E.E4 | M3E.E3 |
| M1.E18 | M1.E43 |
| M1.E19 | M1.E44 |
| M2.E9 | M2.E21 |
| M1.E20 | M1.E45 |
| M1.E21 | M1.E46 |
| M1.E22 | M1.E47 |
| M1.E23 | M1.E48 |
| M1.E24 | M1.E49 |
| M2.E10 / M4.E9 / M6.E12 | M2.E22 |
| M5.E3 | M5.E12 |
| M3E.E5 | M3E.E4 |
| M1.E25 | M1.E50 |
| M1.E26 | M1.E51 |
| M2.E11 / M5.E4 | M2.E23 |
| M3E.E6 / M3A.E3 | M3E.E5 |
| M5.E5 / M2.E12 | M5.E13 |
| M6.E13 | M6.E9 |
| M1.E27 | M1.E52 |
| M2.E13 | M2.E24 |
| M2.E14 | M2.E25 |
| M1.E28 | M1.E53 |
| M1.E29 | M1.E54 |
| M5.E6 / M2.E15 | M5.E14 |
| M1.E30 | M1.E55 |
| M5.E7 | M5.E15 |
| M5.E8 | M5.E16 |
| M1.E31 / M2.E16 | M1.E56 |
| M1.E32 / M2.E17 | M1.E57 |
| M2.E18 | M2.E13 |
| M2.E19 | M2.E14 |
| M4.E10 | M4.E5 |
| M1.E33 | M1.E22 |
| M1.E34 | M1.E23 |
| M3E.E7 / M3A.E4 | M3E.E1 |
| M1.E35 | M1.E24 |
| M1.E36 | M1.E26 |
| M1.E37 | M1.E25 |
| M1.E38 | M1.E1 |
| M5.E9 | M5.E4 |
| M5.E10 | M5.E1 |
| M6.E14 / M5.E11 | M6.E10 |
| M4.E11 / M6.E15 | M4.E12 |
| M6.E16 | M6.E1 |
| M6.E17 | M6.E11 |
| M5.E12 | M5.E5 |
| M5.E13 | M5.E6 |
| M5.E14 / M6.E18 | M5.E7 |
| M5.E15 / M6.E19 | M5.E8 |
| M5.E16 | M5.E9 |
| M5.E17 / M6.E20 | M5.E10 |
| M6.E21 / M5.E18 | M6.E4 |
| M5.E19 | M5.E11 |
| M1.E39 | M1.E2 |
| M1.E40 | M1.E3 |
| M1.E41 | M1.E4 |
| M1.E42 | M1.E5 |
| M1.E43 | M1.E6 |
| M1.E44 | M1.E7 |
| M1.E45 | M1.E8 |
| M1.E46 | M1.E9 |
| M1.E47 | M1.E10 |
| M1.E48 | M1.E11 |
| M1.E49 | M1.E12 |
| M1.E50 | M1.E13 |
| M1.E51 | M1.E14 |
| M4.E12 | M4.E1 |
| M1.E52 | M1.E15 |
| M2.E20 | M2.E1 |
| M2.E21 / M4.E13 | M2.E2 |
| M2.E22 | M2.E3 |
| M2.E23 | M2.E4 |
| M2.E24 | M2.E5 |
| M2.E25 | M2.E6 |
| M4.E14 / M6.E22 | M4.E2 |
| M4.E15 | M4.E3 |
| M6.E23 | M6.E2 |
| M4.E16 | M4.E4 |
| M2.E26 | M2.E7 |
| M2.E27 | M2.E8 |
| M1.E53 | M1.E16 |
| M5.E20 | M5.E2 |
| M5.E21 | M5.E3 |
| M2.E28 | M2.E9 |
| M1.E54 | M1.E17 |
| M1.E55 | M1.E18 |
| M1.E56 | M1.E19 |
| M1.E57 | M1.E20 |
| M1.E58 / M5.E22 | M1.E21 |
| M2.E29 | M2.E10 |
| M6.E24 | M6.E3 |

</details>
