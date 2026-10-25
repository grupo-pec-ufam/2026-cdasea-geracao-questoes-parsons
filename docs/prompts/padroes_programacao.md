# Padrões de programação por módulo de IPC

## Como usar este arquivo

- **Público:** estudantes de engenharias, matemática, biologia etc. que cursaram apenas Introdução à Programação (IP). Não são alunos de Ciência da Computação. Por isso, todo padrão aqui é uma **tarefa do cotidiano descritível em uma frase sem jargão** (troco, desconto, faixa de nota, senha, soma até digitar zero).
- **Cada padrão tem:** ID, nome, tarefa em uma frase, esqueleto e variações permitidas.
- **O esqueleto é a estrutura, não o texto final.** Nomes de variáveis, rótulos de `input()`, condições, constantes e mensagens de saída são substituídos conforme o tema da questão. As demais regras (rótulo de até 15 caracteres, `round()`, proibição de formatação no `print()`, mensagens sem acento) vêm do prompt.
- **Cada questão segue um padrão-base.** A dificuldade define o quanto se afasta dele:
  - **Fácil:** o padrão puro, sem variação.
  - **Média:** o padrão com uma variação listada.
  - **Difícil:** composição de dois padrões (ao menos um do módulo alvo, o outro do mesmo módulo ou de módulo anterior, nunca de módulo posterior).
- **Contagem de linhas:** em M5 e M6 a preparação da lista consome linhas. Para dificuldade Fácil, prefira padrões com texto (`texto = input(...)`) ou listas de 3 elementos.
- **Convenção do `#`:** o texto após `#` explica o esqueleto e não vai para a solução.

---

## Módulo 1 – Variáveis e programação sequencial

Em M1 a quantidade de valores lidos é sempre fixa e conhecida no código. Se a quantidade variasse, o padrão passaria a exigir laços.

### M1.1 Média de N valores
**Tarefa:** calcular a média de uma quantidade fixa de números (notas, temperaturas, preços).
```python
valor1 = float(input("valor 1: "))   # N leituras, com N fixo no código
valor2 = float(input("valor 2: "))
# ...
resultado = (valor1 + valor2) / 2    # soma dos N valores dividida por N
print(round(resultado, 2))
```
**Variações:** média ponderada (pesos fixos); média de 3 ou 4 valores.

### M1.2 Conversão de unidades
**Tarefa:** transformar um valor de uma unidade para outra (horas em minutos, °C em °F, km em milhas).
```python
valor = float(input("valor: "))
resultado = valor * 9 / 5 + 32       # expressão de conversão
print(round(resultado, 1))
```
**Variações:** conversão com dois passos (km/h → m/s); conversão inversa.

### M1.3 Fórmulas matemáticas
**Tarefa:** aplicar uma fórmula conhecida a valores informados (área, velocidade média, juros simples).
```python
base = float(input("base: "))        # N valores fixos de entrada
altura = float(input("altura: "))
resultado = base * altura / 2        # expressão de cálculo
print(round(resultado, 2))
```
**Variações:** fórmula com potência (`**`); fórmula com precedência que exija parênteses.

### M1.4 Leitura e impressão de dados
**Tarefa:** ler dados de pessoa ou item (nome, idade, salário) e mostrá-los na mesma linha.
```python
nome = input("nome: ")               # tipos diferentes: texto, inteiro, real
idade = int(input("idade: "))
salario = float(input("salario: "))
reajuste = round(salario * 1.1, 2)   # opcional: no máximo uma linha de cálculo
print(nome, idade, reajuste)         # valores passados direto ao print, sem formatação
```
**Variações:** sem cálculo; com cálculo sobre a idade (ex.: idade daqui a 10 anos).

### M1.5 Divisão inteira e resto
**Tarefa:** dividir uma quantidade em unidades maiores e o que sobra (segundos em horas, minutos e segundos; troco em notas e moedas).
```python
total = int(input("segundos: "))
horas = total // 3600
resto = total % 3600
minutos = resto // 60
segundos = resto % 60
print(horas)
print(minutos)
print(segundos)
```
**Variações:** dias e horas; reais em notas de 50, 10 e 1.

### M1.6 Troca de valores entre duas variáveis
**Tarefa:** trocar o conteúdo de dois recipientes usando um terceiro de apoio.
```python
a = int(input("a: "))
b = int(input("b: "))
auxiliar = a
a = b
b = auxiliar
print(a)
print(b)
```
**Variações:** troca de textos (nomes); troca em três variáveis (rotação).

### M1.7 Fórmula com o módulo `math`
**Tarefa:** calcular uma grandeza que usa raiz quadrada ou π (hipotenusa, área do círculo, distância entre dois pontos).
```python
import math

raio = float(input("raio: "))
area = math.pi * raio ** 2
print(round(area, 2))
```
**Variações:** `math.sqrt()` (hipotenusa, distância); `math.floor()` ou `math.ceil()` quando o tema pedir arredondar para baixo ou para cima.

### M1.8 Operações simples com texto
**Tarefa:** informar características de uma palavra ou frase (tamanho, quantas vezes uma letra aparece, versão em maiúsculas).
```python
texto = input("texto: ")
letra = input("letra: ")
print(len(texto))
print(texto.upper())
print(texto.count(letra))
```
**Variações:** `.lower()`; `.find()` para a posição de uma letra; combinar `len()` com um cálculo simples.

---

## Módulo 2 – Condicionais compostas (if/else)

### M2.1 Condicional básica (dois caminhos)
**Tarefa:** decidir entre duas situações (pode ou não pode, passou ou não passou).
```python
valor = int(input("valor: "))        # quantidade variável de inputs
# operações antes do condicional
if valor >= 18:
    print("SIM")                     # input, print e/ou operação
else:
    print("NAO")
# operações após o condicional
print("FIM")                         # quantidade variável de prints depois
```
**Variações:** condição com `!=`; mais de um comando em cada ramo; cálculo antes do `if`.

### M2.2 Condicional isolada (sem else)
**Tarefa:** fazer algo extra só quando uma situação ocorre (avisar que está acima do limite).
```python
valor = int(input("valor: "))
if valor > 100:
    print("ACIMA DO LIMITE")         # só imprime quando a condição é verdadeira
# operações após o condicional, executadas independentemente da condição
print(valor)
```
**Variações:** `if` que altera uma variável (ver M2.6) antes do `print` final.

### M2.3 Par ou ímpar / divisibilidade
**Tarefa:** verificar se um número é par, ou se é divisível por outro (ano múltiplo de 4, turma que divide igualmente).
```python
numero = int(input("numero: "))
if numero % 2 == 0:
    print("PAR")
else:
    print("IMPAR")
```
**Variações:** divisível por outro número lido; verificar se o resto é diferente de zero.

### M2.4 Maior de dois valores
**Tarefa:** dizer qual de dois valores é o maior (duas notas, dois preços, dois tempos).
```python
a = float(input("valor a: "))
b = float(input("valor b: "))
if a > b:
    print(a)
else:
    print(b)
```
**Variações:** imprimir o nome de quem tem o maior valor; considerar o empate com uma mensagem própria (exige `elif`, portanto só a partir do M3E).

### M2.5 Comparação de textos
**Tarefa:** conferir uma senha ou resposta, ou dizer qual de duas palavras vem primeiro no dicionário.
```python
senha = input("senha: ")
if senha == "ufam2026":
    print("ACESSO LIBERADO")
else:
    print("ACESSO NEGADO")
```
**Variações:** ordem alfabética com `<` entre dois textos; comparação que diferencia maiúscula de minúscula.

### M2.6 Ajuste condicional de valor
**Tarefa:** modificar um valor apenas quando uma regra se aplica (desconto para quem compra muito, taxa extra de entrega).
```python
preco = float(input("preco: "))
if preco > 200:
    preco = preco * 0.9              # o desconto só acontece se a condição for verdadeira
print(round(preco, 2))
```
**Variações:** versão com `else` aplicando outro ajuste; acréscimo em vez de desconto.

---

## Módulo 3E – Condicionais encadeadas (elif)

### M3E.1 Classificação em categorias
**Tarefa:** colocar uma entrada em uma de várias categorias (nome da faixa etária, tipo de ingresso).
```python
valor = int(input("valor: "))        # quantidade variável de inputs
# operações antes do condicional
if valor == 1:
    print("CATEGORIA A")
elif valor == 2:
    print("CATEGORIA B")
else:
    print("OUTRA CATEGORIA")
# operações após o condicional
print("FIM")
```
**Variações:** categorias a partir de texto; dois ou três `elif`.

### M3E.2 Classificação por faixas numéricas
**Tarefa:** transformar um número em um conceito ou faixa (IMC, nota em conceito, preço de ingresso por idade).
```python
nota = float(input("nota: "))
if nota >= 9:
    print("EXCELENTE")
elif nota >= 7:
    print("BOM")
elif nota >= 5:
    print("REGULAR")
else:
    print("INSUFICIENTE")
```
**Observação:** as condições são testadas em ordem, das faixas mais altas para as mais baixas (ou o inverso). A ordem correta do `elif` é parte do que a questão avalia.
**Variações:** faixas crescentes (`<`); tabela de preço ou de desconto por faixa.

### M3E.3 Condição composta com and / or / not
**Tarefa:** decidir com base em duas ou mais regras ao mesmo tempo (aprovado se nota e frequência forem suficientes; ano bissexto; tipo de triângulo).
```python
nota = float(input("nota: "))
frequencia = int(input("frequencia: "))
if nota >= 6 and frequencia >= 75:
    print("APROVADO")
elif nota >= 6 or frequencia >= 75:
    print("RECUPERACAO")
else:
    print("REPROVADO")
```
**Variações:** uso de `not`; ano bissexto (`% 4`, `% 100`, `% 400`); triângulo (equilátero, isósceles, escaleno).

### M3E.4 Quantidade de soluções de uma equação (delta)
**Tarefa:** dizer quantas raízes reais tem uma equação do 2º grau e, se existirem, calculá-las.
```python
a = float(input("a: "))
b = float(input("b: "))
c = float(input("c: "))
delta = b ** 2 - 4 * a * c
if delta > 0:
    print("DUAS RAIZES")
elif delta == 0:
    print("UMA RAIZ")
else:
    print("SEM RAIZES")
```
**Variações:** imprimir as raízes com `math.sqrt(delta)` e `round()` (nesse caso, acrescentar `import math` no início).

---

## Módulo 3A – Condicionais aninhadas (if dentro de if)

### M3A.1 Decisão que depende de outra decisão
**Tarefa:** a segunda pergunta só faz sentido se a primeira for respondida de certa forma (maior de idade e, então, tem carteira?).
```python
valor1 = int(input("valor 1: "))
valor2 = int(input("valor 2: "))
if valor1 >= 18:                     # condição inicial
    if valor2 == 1:                  # condição dependente da primeira
        print("RESULTADO A")
    else:
        print("RESULTADO B")
else:
    print("RESULTADO C")
print("FIM")
```
**Variações:** inverter qual ramo (`if` ou `else`) contém o `if` interno.

### M3A.2 Segunda checagem dentro do else
**Tarefa:** verificar uma regra principal e, só se ela falhar, olhar uma regra de reserva (login: usuário errado, senão senha).
```python
usuario = input("usuario: ")
senha = input("senha: ")
if usuario != "admin":
    print("USUARIO INVALIDO")
else:
    if senha == "1234":
        print("ENTRADA LIBERADA")
    else:
        print("SENHA INCORRETA")
```
**Variações:** saldo e valor da compra; estoque e pedido.

### M3A.3 Faixas dentro de uma categoria
**Tarefa:** classificar de formas diferentes conforme a categoria da pessoa ou do item (ingresso estudante ou comum; cada um com seus preços por idade).
```python
categoria = input("categoria: ")
idade = int(input("idade: "))
if categoria == "ESTUDANTE":
    if idade < 12:
        print("GRATIS")
    elif idade < 60:
        print("MEIA")
    else:
        print("GRATIS")
else:
    if idade < 12:
        print("MEIA")
    else:
        print("INTEIRA")
```
**Variações:** troca da categoria externa por uma comparação numérica.

---

## Módulo 4 – Repetição por condição (while)

### M4.1 Validação de entrada: repetir até um valor válido
**Tarefa:** pedir um dado de novo enquanto ele estiver inválido (senha errada, nota fora de 0 a 10).
```python
valor = int(input("valor: "))        # quantidade variável de inputs
# operações antes do laço
while valor != 10:                   # valor esperado
    valor = int(input("valor: "))    # nova leitura dentro do laço
print("VALOR VALIDO")
```
**Variações:** condição de intervalo (`valor < 0 or valor > 10`); contar quantas tentativas foram feitas.

### M4.2 Menu de opções
**Tarefa:** mostrar um menu e repetir até o usuário escolher sair.
```python
opcao = ""                           # estado inicial da variável de leitura
while opcao != "3":
    print("1 SOMAR")                 # série de impressões com as opções
    print("2 SUBTRAIR")
    print("3 SAIR")
    opcao = input("opcao: ")
    if opcao == "1":
        print("SOMANDO")             # comportamento de cada opção
    elif opcao == "2":
        print("SUBTRAINDO")
```
**Variações:** menu que acumula um valor (saldo); opção inválida com mensagem própria.
**Observação:** a forma `while True` com interrupção só deve ser usada se a questão exigir explicitamente a interrupção do laço.

### M4.3 Contador (contar repetições até um limite)
**Tarefa:** repetir uma ação um número de vezes informado (contagem regressiva, número de voltas).
```python
limite = int(input("limite: "))      # número-alvo
contador = 0                         # valor inicial
while contador < limite:             # condição de continuidade
    contador = contador + 1          # incremento de uma unidade a cada repetição
    print(contador)
```
**Variações:** contagem regressiva; contador que começa em 1.

### M4.4 Contagem com condição interna
**Tarefa:** contar quantos números de 1 até um limite atendem a uma regra (quantos são pares, quantos são múltiplos de 3).
```python
limite = int(input("limite: "))
contador = 0                         # conta apenas os que atendem à regra
i = 1                                # variável de controle
while i <= limite:
    if i % 2 == 0:                   # condição que decide se conta ou não
        contador = contador + 1
    i = i + 1                        # avança sempre, atendendo ou não à regra
print(contador)
```
**Variações:** múltiplos de outro número lido; contar os que são maiores que um valor.
**Diferença para o M4.3:** aqui o incremento do contador é condicional, enquanto `i` avança sempre.

### M4.5 Acúmulo com condição interna
**Tarefa:** somar apenas os números de 1 até um limite que atendem a uma regra (soma dos pares, soma dos múltiplos de 5).
```python
limite = int(input("limite: "))
soma = 0
i = 1
while i <= limite:
    if i % 2 == 0:                   # condição interna que decide o acúmulo
        soma = soma + i
    i = i + 1
print(soma)
```
**Variações:** soma dos múltiplos de um número lido; soma dos números que não são múltiplos.

### M4.6 Soma até um valor de parada
**Tarefa:** somar números digitados até que o usuário digite um valor que indica fim (zero).
```python
valor = int(input("valor: "))
soma = 0
while valor != 0:                    # 0 é o valor de parada, não entra na soma
    soma = soma + valor
    valor = int(input("valor: "))
print(soma)
```
**Variações:** média dos valores lidos (soma e contador juntos; tratar o caso de nenhum valor com `if`); maior valor lido até a parada.

### M4.7 Contagem de dígitos
**Tarefa:** descobrir quantos algarismos tem um número, ou somar seus algarismos.
```python
numero = int(input("numero: "))
quantidade = 0
while numero > 0:
    numero = numero // 10            # descarta o último algarismo
    quantidade = quantidade + 1
print(quantidade)
```
**Variações:** soma dos algarismos (`numero % 10` acumulado); número informado com sinal tratado por `abs()`.

### M4.8 Potência e tabuada com while
**Tarefa:** calcular uma potência por multiplicações repetidas, ou mostrar a tabuada de um número.
```python
base = int(input("base: "))
expoente = int(input("expoente: "))
resultado = 1
contador = 0
while contador < expoente:
    resultado = resultado * base
    contador = contador + 1
print(resultado)
```
**Variações:** tabuada (`print(numero * i)` dentro do laço, com `i` de 1 a 10); fatorial.

---

## Módulo 5 – Vetores (listas) e strings

**Nota sobre os termos:** em Python o nome da estrutura é *lista* (`list`), não vetor. No enunciado use palavras do cotidiano (“lista de notas”, “sequência de valores”).

**Nota sobre o laço em M5:** a tabela de construções do módulo permite o percurso de listas e textos com `while` e índice. O `for` (por índice com `range` e por valor) é conteúdo do M6, onde há uma versão de cada um destes padrões.

### Bloco de preparação da lista (usado nos padrões M5.1 a M5.6)

**Opção A – tamanho fixo (listas de 3 a 5 elementos):**
```python
n1 = int(input("valor 1: "))
n2 = int(input("valor 2: "))
n3 = int(input("valor 3: "))
lista = [n1, n2, n3]
```
**Opção B – tamanho informado pelo usuário:**
```python
quantidade = int(input("quantidade: "))
lista = []
i = 0
while i < quantidade:
    lista.append(int(input("valor: ")))
    i = i + 1
```
Nas questões de strings, a preparação é só `texto = input("texto: ")`.

### M5.1 Maior (ou menor) elemento
**Tarefa:** descobrir o maior valor de uma sequência (maior nota, menor preço).
```python
# preparação da lista (A ou B)
maior = lista[0]                     # valor-base de comparação
i = 1
while i < len(lista):
    if lista[i] > maior:
        maior = lista[i]
    i = i + 1
print(maior)
```
**Variações:** menor valor; maior valor entre os que atendem a uma regra.

### M5.2 Soma dos elementos
**Tarefa:** somar todos os valores de uma sequência (total de vendas da semana).
```python
# preparação da lista (A ou B)
total = 0                            # acumulador
i = 0
while i < len(lista):
    total = total + lista[i]
    i = i + 1
print(total)
```
**Variações:** soma dos que atendem a uma regra (pares, acima de um limite).

### M5.3 Contagem de ocorrências
**Tarefa:** contar quantas vezes um valor aparece em uma lista, ou uma letra em uma palavra.
```python
# preparação: lista (A ou B) ou texto = input("texto: ")
alvo = input("letra: ")
contador = 0
i = 0
while i < len(texto):                # vale também para uma lista
    if texto[i] == alvo:
        contador = contador + 1
    i = i + 1
print(contador)
```
**Observação:** acessar `lista[0]` e `texto[0]` é igual: nos dois casos se obtém o primeiro elemento.
**Variações:** contar vogais (`if texto[i] in "aeiou"`); contar números acima de um limite; comparar contagem com um valor e imprimir mensagem.

### M5.4 Média dos elementos
**Tarefa:** calcular a média dos valores de uma sequência (média da turma).
```python
# preparação da lista (A ou B)
total = 0
i = 0
while i < len(lista):
    total = total + lista[i]
    i = i + 1
media = total / len(lista)
print(round(media, 2))
```
**Variações:** usar `sum(lista) / len(lista)`; informar quantos valores ficaram acima da média (compõe com M5.3).

### M5.5 Busca: o valor existe na lista?
**Tarefa:** responder se um valor aparece ou não em uma sequência (a matrícula está na lista de presença?).
```python
# preparação da lista (A ou B)
procurado = int(input("procurado: "))
encontrado = False
i = 0
while i < len(lista):
    if lista[i] == procurado:
        encontrado = True
    i = i + 1
if encontrado:
    print("ENCONTRADO")
else:
    print("NAO ENCONTRADO")
```
**Variações:** usar o operador `in` (`if procurado in lista:`); informar a posição da primeira ocorrência com `lista.index()` após testar com `in`.

### M5.6 Posição do maior elemento
**Tarefa:** dizer em que posição está o maior valor (qual dia teve a maior temperatura).
```python
# preparação da lista (A ou B)
posicao = 0
i = 1
while i < len(lista):
    if lista[i] > lista[posicao]:
        posicao = i
    i = i + 1
print(posicao)
```
**Variações:** posição do menor valor; mostrar a posição contando a partir de 1 (`posicao + 1`).

### M5.7 Inverter um texto
**Tarefa:** escrever uma palavra de trás para frente e, se quiser, dizer se é palíndromo.
```python
texto = input("texto: ")
invertido = ""
i = len(texto) - 1
while i >= 0:
    invertido = invertido + texto[i]
    i = i - 1
print(invertido)
```
**Variações:** comparar `texto == invertido` para o palíndromo (compõe com M2.1); usar fatiamento `texto[::-1]` somente se o enunciado exigir fatiamento.

---

## Módulo 6 – Repetição por contagem (for)

### M6.1 Soma de N valores lidos
**Tarefa:** somar uma quantidade informada de números digitados.
```python
quantidade = int(input("quantidade: "))
soma = 0
for i in range(quantidade):
    valor = float(input("valor: "))
    soma = soma + valor
print(round(soma, 2))
```
**Variações:** `range(1, quantidade + 1)` para usar `i` como número do item; soma só dos valores que atendem a uma regra.

### M6.2 Séries numéricas
**Tarefa:** calcular fatorial, soma de 1 até N, termos de uma sequência (Fibonacci).
```python
valor = int(input("valor: "))        # quantidade de termos ou valor-limite
fatorial = 1                         # valor inicial do acumulador da multiplicação
for i in range(1, valor + 1):
    fatorial = fatorial * i
print(fatorial)
```
**Variações:** soma de 1 a N; Fibonacci com duas variáveis auxiliares; soma dos quadrados.

### M6.3 Média de N valores lidos
**Tarefa:** calcular a média de uma quantidade informada de valores (média das temperaturas da semana).
```python
quantidade = int(input("quantidade: "))
soma = 0
for i in range(quantidade):
    soma = soma + float(input("valor: "))
media = soma / quantidade
print(round(media, 2))
```
**Variações:** média só dos valores acima de um limite (conta e soma juntos, com `if`).

### M6.4 Soma ou contagem com passo no `range`
**Tarefa:** somar ou contar números de um intervalo que seguem um intervalo regular (pares, múltiplos de 5, de 10 em 10).
```python
limite = int(input("limite: "))
soma = 0
for i in range(2, limite + 1, 2):    # início, fim e passo
    soma = soma + i
print(soma)
```
**Variações:** múltiplos de 5; contagem regressiva com passo negativo (`range(limite, 0, -1)`).

### M6.5 Tabuada
**Tarefa:** mostrar a tabuada de um número.
```python
numero = int(input("numero: "))
for i in range(1, 11):
    print(numero * i)
```
**Variações:** tabuada de soma ou de potência; parar em um limite lido.

### M6.6 Soma de uma lista (por índice)
**Tarefa:** somar os valores de uma lista já preparada.
```python
# preparação da lista (bloco A ou B do M5; no bloco B pode-se usar for com range)
total = 0
for i in range(len(lista)):
    total = total + lista[i]
print(total)
```
**Variações:** soma dos valores em posições pares; soma dos que atendem a uma regra.

### M6.6.1 Soma de uma lista (por valor)
```python
# preparação da lista
total = 0
for elemento in lista:               # percorre direto os valores, sem índice
    total = total + elemento
print(total)
```

### M6.7 Maior (ou menor) elemento (por índice)
**Tarefa:** descobrir o maior valor de uma lista.
```python
# preparação da lista
maior = lista[0]
for i in range(len(lista)):
    if lista[i] > maior:
        maior = lista[i]
print(maior)
```
**Variações:** menor valor; posição do maior (compõe com M5.6).

### M6.7.1 Maior (ou menor) elemento (por valor)
```python
# preparação da lista
maior = lista[0]
for elemento in lista:
    if elemento > maior:
        maior = elemento
print(maior)
```

### M6.8 Contagem por categorias
**Tarefa:** contar quantos itens de uma lista caem em cada categoria (aprovados, em recuperação e reprovados em uma turma).
```python
# preparação da lista de notas
aprovados = 0
recuperacao = 0
reprovados = 0
for nota in lista:
    if nota >= 7:
        aprovados = aprovados + 1
    elif nota >= 5:
        recuperacao = recuperacao + 1
    else:
        reprovados = reprovados + 1
print(aprovados)
print(recuperacao)
print(reprovados)
```
**Variações:** duas categorias (`if/else`); percurso por índice com `range(len(lista))`; categorias em texto (contar vogais e consoantes).
