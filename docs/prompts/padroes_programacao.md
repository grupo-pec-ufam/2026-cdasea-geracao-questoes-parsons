Padrões de Programação 

**Módulo 1 \- Estruturas sequenciais** 

**M1.1 Cálculo de médias** 

Obs: Para este padrão, deve-se considerar que a quantidade de variáveis lidas é fixa. Caso contrário, o padrão passaria a envolver conceitos de laços de repetição para contagem. 

valor1 \= input() \# leitura de N inputs, N fixo no código 

valor2 \= input() 

\# ... 

resultado \= (valor1 \+ valor2 \+ ...) / N \# soma de N valores e divisão por N print(resultado) 

**M1.2 Conversão de unidades** 

valor \= input() \# valor a ser convertido: hora, temperatura, distância etc. resultado \= \<expressão aritmética de conversão\>(valor) 

print(resultado) \# valor convertido para a unidade correspondente 

**M1.3 Fórmulas matemáticas** 

valor1 \= input() \# N valores fixos de entrada: altura, raio, largura etc. valor2 \= input() 

\# ... 

resultado \= \<expressão de cálculo\>(valor1, valor2, ...) 

print(resultado) 

**M1.4 Leitura e impressão de dados formatados** 

nome \= input() \# tipos heterogêneos: string, inteiro, float... 

idade \= int(input()) 

salario \= float(input()) 

\# operação: nenhuma, ou cálculo/formatação simples (arredondar, casas decimais) print(f"{nome} {idade} {salario:.2f}") \# 1 print com múltiplos campos formatados  
**Módulo 2 \- Condicionais compostos (if/else) M2.1 Estrutura condicional básica**   
valor1 \= input() \# quantidade variável de inputs 

\# operações antes do condicional 

if condicao: 

\# input, print e/ou operação 

pass 

else: 

\# input, print e/ou operação 

pass 

\# operações após o condicional 

print(...) \# quantidade variável de prints após o condicional 

**M2.2 Estrutura condicional isolada** 

valor1 \= input() \# quantidade variável de inputs 

\# operações antes do condicional 

if condicao: 

\# input, print e/ou operação 

pass 

\# operações após o condicional, executadas independentemente da condição 

**Módulo 3 \- Condicionais encadeadas (elif) e aninhadas** 

**M3.1 Classificação de entradas (como, por exemplo: nome, idade)** 

valor1 \= input() \# quantidade variável de inputs 

\# operações antes do condicional 

if condicao1: 

\# input, print e/ou operação 

pass 

elif condicao2: 

\# input, print e/ou operação 

pass 

else: 

\# input, print e/ou operação 

pass 

\# operações após o condicional 

print(...) \# quantidade variável de prints após o condicional  
**M3.2 Dependência e hierarquia entre decisões** 

valor1 \= input() \# quantidade variável de inputs 

\# operações antes do condicional 

if condicao1: \# condição inicial 

if condicao2: \# condição dependente da primeira 

\# input, print e/ou operação 

pass 

else: 

\# input, print e/ou operação 

pass 

else: 

\# input, print e/ou operação 

pass 

\# operações após o condicional 

print(...) \# quantidade variável de prints após o condicional 

**Módulo 4 \- Repetição por condição (while) M4.1 Validação de entrada com repetição até valor válido** 

valor \= input() \# quantidade variável de inputs 

\# operações antes do laço 

while valor \!= valor\_esperado: 

\# leitura de um novo valor, atualização de contador etc. 

valor \= input() 

**M4.2 Exibição de menus** 

opcao \= None \# inicializador de estado da variável de leitura 

while True: \# mantém o laço em execução 

print("menu") \# série de impressões com as opções a serem selecionadas opcao \= input() \# quantidade variável de inputs 

if opcao \== "1": 

\# operações que definem o comportamento do laço, 

\# encerrando-o ou realizando outras funcionalidades 

pass 

elif opcao \== "2": 

pass 

\# ...  
**M4.3 Acumuladores** 

Obs: Acumuladores possuem diversas utilizações, sendo amplamente utilizados como artifício para manipulação de números, listas, algoritmos etc. Neste exemplo, o acumulador também funciona como um contador, pois seu valor é incrementado em uma unidade a cada repetição. 

valor \= int(input()) \# input que define o número-alvo (limite) do contador acumulador \= 0 \# valor inicial do acumulador 

while acumulador \< valor: \# condição de continuidade do laço 

acumulador \= acumulador \+ 1 \# incremento de uma unidade a cada repetição **M4.4 Repetição com condição interna e incremento** 

Obs: Padrão adicionado para cobrir o caso em que o incremento do contador, dentro do laço 

while, só ocorre se uma condição interna (um if) for satisfeita, diferindo do padrão de Acumuladores acima, no qual o incremento é incondicional a cada iteração. É o equivalente, em while, ao que o padrão de Contagem de Frequência (Módulo 5\) faz com for. 

contador \= 0 \# valor inicial do contador 

i \= 0 \# variável de controle do laço 

while i \< len(sequencia): \# percorre a sequência enquanto houver elementos if sequencia\[i\] \== alvo: \# condição interna que determina o incremento contador \= contador \+ 1 \# incrementa somente quando a condição é 

satisfeita 

i \= i \+ 1 \# avança para o próximo elemento 

print(contador) 

**M4.5 Repetição com condição interna e acúmulo** 

Obs: Padrão análogo ao anterior, mas em que o valor acumulado não é necessariamente \+1 a cada ocorrência, e sim a soma condicional de elementos que satisfazem um critério (por exemplo, somar apenas os valores pares de uma lista). 

acumulador \= 0 \# valor inicial do acumulador 

i \= 0 \# variável de controle do laço 

while i \< len(lista): \# percorre a lista enquanto houver elementos 

if condicao(lista\[i\]): \# condição interna que determina o acúmulo 

acumulador \= acumulador \+ lista\[i\] \# soma apenas quando a 

condição é satisfeita 

i \= i \+ 1 \# avança para o próximo elemento 

print(acumulador)  
**Módulo 5 \- Vetores e strings** 

**M5.1 Maior/Menor Elemento (iteração por índice)** 

Obs: Em Python, o termo mais adequado para se referir a essa estrutura é lista (list), e não vetor. A lista é uma estrutura que pode armazenar diferentes tipos de valores, como inteiros, floats, strings, dicionários etc. Embora o conceito de vetor seja utilizado de forma geral na programação, a estrutura nativa correspondente em Python é a lista. 

lista \= \[...\] \# lista contendo os valores lidos/inseridos 

maior \= lista\[0\] \# valor-base para comparação com o restante da lista 

for i in range(len(lista)): \# range gera os índices para percorrer a lista if lista\[i\] \> maior: 

maior \= lista\[i\] 

print(maior) 

\# print, inputs e/ou operações 

**M5.1.1 Maior/Menor Elemento (iteração por valor)** 

lista \= \[...\] \# lista contendo os valores lidos/inseridos 

maior \= lista\[0\] \# valor-base para comparação com o restante da lista 

for elemento in lista: \# dessa forma, o loop percorre diretamente pelos valores da lista invés de um índice 

if elemento \> maior: 

maior \= elemento 

print(maior) 

\# print, inputs e/ou operações 

**M5.2 Soma de Vetor (iteração por índice)** 

lista \= \[...\] \# lista contendo os valores lidos/inseridos 

total \= 0 \# acumulador do resultado 

for i in range(len(lista)): 

total \= total \+ lista\[i\] \# adiciona o elemento atual ao valor acumulado 

print(total) 

\# print, inputs e/ou operações  
**M5.2.1 Soma de Vetor (iteração por valor)** 

lista \= \[...\] \# lista contendo os valores lidos/inseridos 

total \= 0 \# acumulador do resultado 

for elemento in lista: \# percorre diretamente os valores da lista, sem índice total \= total \+ elemento \# adiciona o elemento atual ao valor acumulado print(total) \# print, inputs e/ou operações 

**M5.3 Contagem de Frequência (iteração por índice)** 

Obs: Na linguagem Python, strings e listas possuem algumas características semelhantes quanto à forma de acesso aos seus elementos: lista\[0\] e string\[0\], em ambos os casos, acessam o primeiro elemento da lista e da string, respectivamente. Além disso, esse tipo de padrão pode ser utilizado tanto para strings (contagem de palavras ou letras) quanto para listas. 

sequencia \= \[...\] \# lista ou string contendo os valores lidos/inseridos 

alvo \= input() \# valor a ser procurado na lista/string 

contador \= 0 \# contador de ocorrências do valor procurado 

for elemento in sequencia: 

if sequencia\[i\] \== alvo: 

contador \= contador \+ 1 \# incrementa quando o elemento atual é igual ao alvo 

print(contador) 

\# print, inputs e/ou operações 

**M5.3.1 Contagem de Frequência (iteração por valor)** 

sequencia \= \[...\] \# lista ou string contendo os valores lidos/inseridos 

alvo \= input() \# valor a ser procurado na lista/string 

contador \= 0 \# contador de ocorrências do valor procurado 

for elemento in sequencia: \# percorre diretamente os valores da sequência, sem índice 

if elemento \== alvo: 

contador \= contador \+ 1 \# incrementa quando o elemento 

atual é igual ao alvo 

print(contador) 

\# print, inputs e/ou operações  
**Módulo 6 \- Repetição por contagem (for) M6.1 Somatórios**   
Obs: Para este padrão, é preciso considerar que os valores do somatório estão contidos em uma lista. Caso contrário, poderiam ser utilizados diferentes padrões e estruturas, como somatório com limite de elementos, leitura até que um determinado valor seja informado etc. 

lista \= \[...\] \# lista contendo os valores lidos/inseridos 

somatorio \= 0 \# valor inicial do acumulador da soma 

for i in range(len(lista)): 

somatorio \= somatorio \+ lista\[i\] \# adiciona o elemento atual ao valor acumulado 

print(somatorio) 

\# print, inputs e/ou operações 

**M6.2 Séries numéricas (como, por exemplo: Fibonacci, fatorial)** 

valor \= int(input()) \# quantidade de termos ou valor-limite da série 

fatorial \= 1 \# valor inicial do acumulador da multiplicação 

for i in range(1, valor \+ 1): \# percorre de 1 até o valor informado 

fatorial \= fatorial \* i \# multiplica o acumulado pelo valor atual da sequência 

print(fatorial) 

\# print, inputs e/ou operações