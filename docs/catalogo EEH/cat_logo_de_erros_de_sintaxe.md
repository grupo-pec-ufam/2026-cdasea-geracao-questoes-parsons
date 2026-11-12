| Módulo IPC | ID do Erro | Defeito | Descrição | Catálogo de Origem |
|---|---|---|---|---|
| M1 | M1.E1 | Atribuição guarda a expressão, não o valor | "=" guarda a expressão: a variável guarda uma referência à expressão. | Sorva, Progmiscon |
| M1 | M1.E2 | Valores atualizados automaticamente pelo contexto | Valores são atualizados automaticamente conforme um contexto lógico. | Sorva |
| M1 | M1.E4 | Várias linhas executando ao mesmo tempo | Paralelismo mágico: várias linhas de um programa simples podem estar ativas ao mesmo tempo. | Sorva |
| M1 | M1.E5 | Variável guarda vários valores / lembra valores antigos | Uma variável pode guardar vários valores ao mesmo tempo ou "lembrar" valores antigos. | Sorva |
| M1 | M1.E9 | Expressão sem noção de avaliação | Entendimento limitado de expressões, sem o conceito de avaliação. | Sorva |
| M1 | M1.E15 | Dificuldade com a sequência dos comandos | Dificuldade em entender a sequencialidade dos comandos. | Sorva |
| M1 | M1.E21 | String "456" confundida com o número 456 | Confundir representações textuais entre si, ex.: a string "456" com o número. | Sorva |
| M1 | M1.E23 | Palavra reservada usada como identificador | Qualquer sequência de letras e dígitos começando com letra ou _ pode ser usada como identificador. | Progmiscon |
| M1 | M1.E25 | Parênteses opcionais em chamada sem argumentos | Os () são opcionais em chamadas de função sem argumentos. | Progmiscon |
| M1 | M1.E27 | Espaço em branco inadequado: tabs e espaços misturados | Mistura de tabs e espaços. | Řechtáčková |
| M1 | M1.E30 | Caracteres não-ASCII no identificador | Uso de caracteres fora do ASCII no nome de identificadores. | Řechtáčková |
| M1 | M1.E35 | Espaço em branco inadequado: visível (PEP8) | Violação das convenções PEP 8 de espaçamento (indentação, espaços em torno de operadores, linhas em branco). | Řechtáčková |
| M1 | M1.E46 | Múltiplos comandos numa linha só | Mais de um comando na mesma linha. | Řechtáčková |
| M1 | M1.E52 | Espaço em branco inadequado: no final da linha | Violação de PEP 8 quanto a espaços no fim da linha/arquivo. | Řechtáčková |
| M1 | M1.E56 | If em vez de usar min/max | Uso de if pra achar máximo/mínimo, em vez da função max/min. | Řechtáčková |
| M2 | M2.E1 | Código depois do if não executa se o "then" executou | O código depois de um if não é executado se o ramo "then" foi executado. | Sorva |
| M2 | M2.E2 | If executa assim que a condição fica verdadeira | O if é executado assim que sua condição se torna verdadeira. | Sorva |
| M2 | M2.E3 | Condição falsa sem else encerra o programa | Uma condição falsa encerra o programa se não houver ramo else. | Sorva |
| M2 | M2.E6 | Else é opcional (o próximo comando é o else) | Usar else é opcional (o próximo comando é sempre o ramo else). | Sorva |
| M2 | M2.E11 | If-else redundante (retorna True/False) | Para transformar uma expressão booleana em bool, é necessário um if. | Progmiscon, Řechtáčková |
| M2 | M2.E12 | Comparação redundante (== True/False) | Para testar se uma expressão é True ou False, é preciso compará-la com True ou False. | Progmiscon, Řechtáčková |
| M2 | M2.E14 | If-else tratado como dois ifs em sequência | If-else é equivalente a uma sequência de dois ifs. | Progmiscon |
| M2 | M2.E17 | Ifs consecutivos com mesmo corpo | Ifs consecutivos com o mesmo corpo. | Řechtáčková |
| M2 | M2.E20 | Else/elif desnecessário | Uso redundante de else quando o ramo positivo já usa return/break/continue. | Řechtáčková |
| M2 | M2.E24 | Condição negada com cláusula else | If com ramo else cuja condição está negada. | Řechtáčková |
| M3E | M3E.E1 | And/or sempre avaliam os dois operandos | and/or sempre avaliam os dois operandos. | Progmiscon |
| M3E | M3E.E2 | Precedência incorreta de operadores booleanos | A ordem de precedência da expressão booleana é diferente da que era pretendida. | Caceffo |
| M3E | M3E.E3 | Elif redundante (condição sempre verdadeira) | Cláusula if com condição sempre verdadeira. | Řechtáčková |
| M3E | M3E.E4 | Else contendo só um if (deveria ser elif) | Cláusula else contendo só um bloco if-else (devia ser elif). | Řechtáčková |
| M3E | M3E.E5 | 'not' redundante | Expressão booleana com negação que podia ser aplicada de forma direta. | Řechtáčková |
| M3A | M3A.E1 | Ifs aninhados que podiam ser uma única expressão booleana | Uma expressão booleana é escrita como uma sequência de if-else aninhados. | Caceffo, Řechtáčková |
| M4 | M4.E2 | Código adjacente executa dentro do laço | Código adjacente ao laço executa dentro dele. | Sorva |
| M4 | M4.E3 | Controle volta ao início quando a condição é falsa | O controle volta ao início quando a condição é falsa. | Sorva |
| M4 | M4.E4 | While termina assim que a condição vira falsa | O laço while termina assim que a condição passa a ser falsa (no meio do bloco). | Sorva |
| M4 | M4.E5 | Corpo do if repetindo como se fosse laço | O corpo de um if executa repetidamente enquanto a condição for verdadeira. | Progmiscon |
| M4 | M4.E6 | Atualização incorreta do contador do loop | O contador do loop não é atualizado corretamente, causando um número errado de execuções. | Caceffo |
| M4 | M4.E7 | Uso do resultado do loop antes dele terminar | Resultados parciais encontrados durante as iterações são usados como se já fossem o resultado final. | Caceffo |
| M4 | M4.E9 | Ausência de loop onde um seria necessário | Nenhuma estrutura de loop é declarada, onde uma seria necessária para o programa funcionar corretamente. | Caceffo |
| M4 | M4.E12 | while usado no lugar de for | Laço while com número de iterações conhecido antes de começar. | Řechtáčková |
| M5 | M5.E1 | Atribuição copia o objeto | A atribuição copia o objeto. | Sorva, Progmiscon |
| M5 | M5.E4 | Variável contém o objeto inteiro | Uma variável contém um objeto inteiro. | Progmiscon |
| M5 | M5.E5 | Criar vetor de tamanho n com chaves | Acredita que as chaves {} criam um vetor de tamanho específico. | Corinna List |
| M5 | M5.E6 | Índice do vetor precisa de parênteses extras | Acredita que acessar um elemento exige parênteses extras em volta do índice. | Corinna List |
| M5 | M5.E9 | Vetor vazio ao ser criado | Acredita que vetores ficam completamente vazios após a criação. | Corinna List |
| M5 | M5.E11 | Vetor cresce sozinho ao atribuir índice novo | Acredita que o tamanho do vetor é flexível e que basta atribuir a um índice fora do limite para ampliá-lo. | Corinna List |
| M5 | M5.E14 | Extensão de lista inadequada (+= em vez de append) | Lista estendida com um único argumento em vez de usar append. | Řechtáčková |
| M6 | M6.E1 | Alterar a variável de controle do for (sem efeito) | As variáveis de controle do for não têm valor dentro do laço ou podem ser alteradas arbitrariamente. | Sorva, Řechtáčková |
| M6 | M6.E5 | Loop com número certo de iterações, mas range errado | Inicialização ou condição de parada do contador mal construída, gerando um número inesperado de iterações. | Caceffo |
| M6 | M6.E6 | For sobre elementos tratado como se fosse sobre índices | O for é declarado iterando sobre os elementos (sem range), mas o código usa o iterador como se fosse um índice, com colchetes. | Caceffo |
| M6 | M6.E11 | For redundante (0 ou 1 iteração) | Laço for com zero ou uma única iteração. | Řechtáčková |
