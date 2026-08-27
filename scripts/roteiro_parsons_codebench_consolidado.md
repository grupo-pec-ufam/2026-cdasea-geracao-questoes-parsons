**Roteiro para elaborar e revisar Exercícios Parsons no CodeBench**

Introdução à Programação de Computadores (IPC)

## 

## **A. Enunciado**

1. Contextualize o problema com uma situação concreta, mas sem excesso de narrativa. No Parsons, história supérflua compete com a tarefa de ordenar blocos e apenas adiciona carga cognitiva extrínseca.

2. Descreva a entrada e a saída em períodos diferentes. Destaque em negrito a palavra principal de cada entrada e de cada saída.

3. Se houver mais de uma entrada ou saída, enumere-as em lista, na ordem esperada.

4. Nunca cite a linguagem de programação no enunciado; se necessário, apenas nas Dicas. A restrição vale para o texto, já que os blocos revelam a linguagem por natureza.

5. Especifique o comportamento esperado (entradas, saídas, regra de decisão), não a arquitetura da solução. Dizer "use um if e depois um elif" entrega a resposta, porque a estrutura do código é justamente o que o aluno deve construir.

6. Não descreva no enunciado o passo a passo algorítmico. Diferente da escrita de código, aqui isso equivale a numerar a resposta.

## **B. Desenho dos blocos**

7. Um enunciado lógico por bloco. Para o novato, o bloco é a menor unidade executável com sentido próprio (uma atribuição, um cabeçalho de laço, um print). Blocos grandes escondem decisões que se quer avaliar; blocos finos demais inflam a busca.

8. Poucos blocos nos módulos iniciais (sequencial, primeiras condicionais e primeira de laço); aumente a quantidade conforme o conteúdo avança.

9. Não deixe pistas de superfície resolverem a questão. Se a ordem correta puder ser inferida sem entender a lógica (variáveis em ordem alfabética, comentários numerados, um bloco visivelmente de abertura), o aluno acerta por padrão visual. Embaralhe também essas pistas.

10. Em condicionais, a solução deve exigir os dois ramos montados corretamente, o verdadeiro e o falso, e não apenas um.

11. Não se preocupe em garantir ordem única. Como a correção é por execução, qualquer ordenação que produza a saída correta é aceita. Blocos independentes (duas leituras, dois acumuladores) podem vir em qualquer ordem, sem trabalho extra de autoria.

## **C. Distratores (simples)**

12. Cada distrator deve materializar uma concepção alternativa documentada de novato, não um erro aleatório. Assim ele funciona como um instrumento de diagnóstico, e não como ruído.

13. Poucos e bem escolhidos: 1 a 2 por questão nos módulos iniciais. Distratores aumentam a carga e o tempo de resolução, com benefício de aprendizagem não garantido pela literatura.

14. Plausível: o distrator deve parecer algo que um aluno realmente escreveria.

15. Inequivocamente errado: um distrator não pode, em nenhuma montagem, produzir a saída correta em todos os casos, senão vira uma segunda solução válida aceita pela execução.

16. Classifique cada distrator em um de dois tipos e trate-o conforme:

* **Sintático:** causa erro de sintaxe ou de runtime. Pode ser detectado sozinho, sem caso de teste específico. Exemplos: if idade \= 18:, for letra in range(palavra):.

* **Semântico:** o programa executa, mas produz valor errado. O erro só é detectado se houver um caso de correção que o distinga da versão correta. Para cada distrator deste tipo, pergunte-se "qual caso de correção o desmascara?" e garanta que ele exista. Um distrator de valor sem caso discriminante induz falso positivo: o aluno erra, mas a questão passa.

17. Misconceptions frequentes por tópico do seu escopo, com um exemplo de distrator para cada:

* **Sequencial:** "a ordem das linhas não importa". Bloco que usa a variável antes de ela ser lida ou atribuída.

* **Condicionais:** elif trocado por if sequencial (perda de exclusividade dos ramos); \= no lugar de \==; fronteira \> no lugar de \>=.

* **Laços:** erro de fronteira no range (range(1, len(lista)) pula o índice 0; range(len(lista)+1) estoura o índice).

* **Vetores:** indexação a partir de 1 (lista\[1\] para o primeiro elemento).

* **Strings:** confusão de tipo na iteração (for letra in range(palavra):).

## **D. Casos de correção (execução)**

18. Cada questão deve ter pelo menos três casos de exemplo.

19. Cada questão deve ter no mínimo três casos de correção.

20. Em condicionais, os casos de correção devem incluir um resultado relativo ao ramo verdadeiro e outro ao ramo falso.

21. Pelo menos uma das saídas deve depender da(s) entrada(s). Saída apenas "sim" ou "nao" permite chute com 50% de acerto no modo proporcional.

22. Nas strings de entrada dos casos de correção, não use espaços. As strings de saída podem conter espaços.

23. Inclua um caso de teste na fronteira sempre que usar distrator de fronteira (\> versus \>=), e casos em que o índice 0 ou o primeiro elemento afetem a saída, para desmascarar distratores de valor.

## **E. Indentação 2D e carga cognitiva**

24. Não crie "blocos distratores de indentação". No 2D, a indentação é decisão do aluno (arrasto horizontal), não propriedade de um bloco. O erro de aninhamento é o aluno posicionar um bloco correto no nível errado.

25. Erro de indentação é detectado automaticamente pela execução: um print fora do laço ou um acumulador no nível errado geram saída errada ou erro de runtime. Não exige caso de teste especial na maioria das vezes.

26. O 2D soma uma dimensão de decisão (posição horizontal) e, com isso, mais carga. Mantenha o número de blocos modesto nos módulos iniciais e deixe montagens mais longas para quando o aninhamento já estiver consolidado.

27. Lembre que o formato Parsons já reduz a carga extrínseca, pois o aluno não recupera sintaxe de memória nem digita. Não desperdice esse ganho reintroduzindo carga desnecessária: narrativa longa, distratores em excesso ou pistas ambíguas.

## **F. Título, versões e formatação**

28. Crie um título único para cada versão, formatado como Header 3, para identificar a questão em reportes de problema sem depender do ID do CodeBench.

29. Entre versões de um mesmo problema, use personagens diferentes, com nomes incomuns e culturalmente diversos (mulheres da computação, filósofos gregos, guerreiros africanos, entre outros). Ressalva do Parsons: trocar só o nome não gera variação real, porque a estrutura de blocos permanece e a resposta continua compartilhável. Para variação efetiva, altere também a lógica (outra regra de decisão, outra fronteira) ou o conjunto de distratores.

30. Formate equações em LaTeX: \\\[ ... \\\] para equação em nova linha e \\( ... \\) para equação na mesma linha.

31. Não deixe linha em branco entre parágrafos consecutivos. No editor do CodeBench, um Enter separa um parágrafo do outro.

32. Nos campos de exemplo e de correção, discrimine cada entrada e cada saída em uma linha diferente, para que o aluno perceba de imediato quantas entradas e saídas são esperadas.

33. Analise o grau de dificuldade e a complexidade de interpretação da questão, e verifique se o conteúdo cobrado foi de fato o mesmo ministrado nas aulas.