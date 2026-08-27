**1. Título:** `Desconto Ada Lovelace`

**2. Enunciado:**
Para assistir a uma palestra de Ada Lovelace sobre a Máquina Analítica, estudantes têm direito a um desconto fixo de R$ 15 no valor do ingresso.

Escreva um programa que leia o preço original do ingresso e a idade do comprador. Se a idade for menor que 18 anos, aplique o desconto de R$ 15 sobre o preço original e exiba o valor a pagar arredondado em 2 casas decimais. Caso contrário, exiba o preço original sem desconto arredondado em 2 casas decimais.

A fórmula do preço com desconto é:


$$P_{final} = P_{original} - 15$$


onde $P_{original}$ é o valor inicial do ingresso.

**Entrada 1:** o preço original do ingresso (número decimal).
**Entrada 2:** a idade do comprador (número inteiro).

**Saída:** o valor a ser pago pelo ingresso arredondado em 2 casas decimais.

Tópico: Condicional simples e composta com if/else.

**3. Solução de referência:**

```python
preco = float(input("Preco: "))
idade = int(input("Idade: "))
if idade < 18:
    final = round(preco - 15.0, 2)
    print(final)
else:
    final = round(preco, 2)
    print(final)

```

**4. Explicação passo a passo:**
As duas primeiras linhas leem o preço original como `float` e a idade como `int`, pois `input()` retorna uma string. A instrução `if idade < 18:` verifica se a pessoa é menor de idade. Se verdadeiro, calcula o valor final subtraindo 15.0 do preço e aplica `round()` para duas casas decimais, exibindo o resultado. No ramo `else:`, o valor sem desconto é arredondado e exibido. O programa assume entradas válidas e não trata valores não numéricos.

**5. Casos de teste:**

Públicos:

* Entrada: `50.0` / `16` -> Saída: `35.0` (ramo if)
* Entrada: `50.0` / `20` -> Saída: `50.0` (ramo else)
* Entrada: `40.0` / `18` -> Saída: `40.0` (ramo else, borda de idade)

Privados:

* Entrada: `40.0` / `17` -> Saída: `25.0` (ramo if, borda inferior de idade)
* Entrada: `100.5` / `12` -> Saída: `85.5` (ramo if, valor decimal)
* Entrada: `100.5` / `60` -> Saída: `100.5` (ramo else, valor decimal)

**6. Distratores (marcados):**

```python
if idade = 18:                  # DISTRATOR do fragmento "if idade < 18:" | Concepção 1: atribuição (=) no lugar de comparação
if idade < 18                   # DISTRATOR do fragmento "if idade < 18:" | Concepção 3: ausência dos dois-pontos (:) após a condição

```

**7. Dicas de resolução:**
`float()` converte texto para número decimal e `int()` para número inteiro. O operador de comparação menor que é `<`. A estrutura `if` exige dois-pontos `:` ao final do cabeçalho.

**8. Tópicos abordados:**
Leitura de dados, Conversão de tipos, Condicional simples e composta if/else, Operadores relacionais, Arredondamento com round.

---

**1. Título:** `Frequencia Turing`

**2. Enunciado:**
Alan Turing está analisando a frequência de pulsos de uma maquete do Enigma. A frequência determina a estabilidade do sistema.

Escreva um programa que leia a frequência dos pulsos como um número inteiro e classifique a estabilidade da máquina.

**Entrada:** a frequência do pulso em Hertz (número inteiro).

**Saída:** se a frequência for maior ou igual a 100, imprima `Frequencia alta e estavel`; se for maior ou igual a 50 e menor que 100, imprima `Frequencia media e regular`; caso contrário, imprima `Frequencia baixa e instavel`.

Tópico: Condicional composta com if/elif/else.

**3. Solução de referência:**

```python
frequencia = int(input("Frequencia: "))
if frequencia >= 100:
    print("Frequencia alta e estavel")
elif frequencia >= 50:
    print("Frequencia media e regular")
else:
    print("Frequencia baixa e instavel")

```

**4. Explicação passo a passo:**
A primeira linha lê a frequência do pulso e converte para número inteiro. A condição `if frequencia >= 100:` avalia se o valor atinge o limiar superior. Caso positivo, exibe a mensagem correspondente. Se falso, o `elif frequencia >= 50:` verifica se a frequência está na faixa intermediária. O ramo `else:` trata os valores estritamente menores que 50. O programa assume que a entrada será um inteiro válido.

**5. Casos de teste:**

Públicos:

* Entrada: `120` -> Saída: `Frequencia alta e estavel` (ramo if)
* Entrada: `75` -> Saída: `Frequencia media e regular` (ramo elif)
* Entrada: `30` -> Saída: `Frequencia baixa e instavel` (ramo else)

Privados:

* Entrada: `100` -> Saída: `Frequencia alta e estavel` (ramo if, borda 100)
* Entrada: `99` -> Saída: `Frequencia media e regular` (ramo elif, borda 99)
* Entrada: `50` -> Saída: `Frequencia media e regular` (ramo elif, borda 50)
* Entrada: `49` -> Saída: `Frequencia baixa e instavel` (ramo else, borda 49)

**6. Distratores (marcados):**

```python
elif frequencia > 50:            # DISTRATOR do fragmento "elif frequencia >= 50:" | Concepção 2: erro de borda no operador (> no lugar de >=)
else frequencia < 50:            # DISTRATOR do fragmento "else:" | Concepção 4: else tratado como se aceitasse condição

```

**7. Dicas de resolução:**
O operador `>=` significa maior ou igual. Estruturas `elif` e `else` exigem dois-pontos `:` e o `else` não recebe condição.

**8. Tópicos abordados:**
Leitura de dados, Conversão de tipos, Condicional composta if/elif/else, Operadores relacionais.

---

**1. Título:** `Classificacao Hopper`

**2. Enunciado:**
A Dra. Grace Hopper está catalogando falhas encontradas no computador Harvard Mark II. Cada falha recebe um código numérico de severidade de 1 a 10.

Escreva um programa que receba o código da falha e exiba a categoria do bug acompanhada do seu código ajustado (código somado a 10).

A fórmula para o código ajustado é:


$$C_{ajustado} = C_{falha} + 10$$


onde $C_{falha}$ é o código numérico original da falha.

**Entrada:** o código numérico da falha (número inteiro).

**Saída 1:** se o código for maior que 7, imprima `Severidade Critica`; se for maior que 3, imprima `Severidade Moderada`; caso contrário, imprima `Severidade Leve`.
**Saída 2:** o valor do código ajustado.

Tópico: Condicional composta com if/elif/else.

**3. Solução de referência:**

```python
codigo = int(input("Codigo: "))
if codigo > 7:
    print("Severidade Critica")
elif codigo > 3:
    print("Severidade Moderada")
else:
    print("Severidade Leve")
ajustado = codigo + 10
print(ajustado)

```

**4. Explicação passo a passo:**
A linha inicial lê o código e converte para número inteiro. As estruturas `if`, `elif` e `else` filtram o nível de severidade de forma mutuamente exclusiva e imprimem a mensagem adequada. Após o bloco condicional, a variável `ajustado` recebe a soma do código com 10. Por fim, o valor ajustado é impresso. Entradas não numéricas provocam erro na conversão.

**5. Casos de teste:**

Públicos:

* Entrada: `9` -> Saída: `Severidade Critica` / `19` (ramo if)
* Entrada: `5` -> Saída: `Severidade Moderada` / `15` (ramo elif)
* Entrada: `2` -> Saída: `Severidade Leve` / `12` (ramo else)

Privados:

* Entrada: `8` -> Saída: `Severidade Critica` / `18` (ramo if, borda 8)
* Entrada: `7` -> Saída: `Severidade Moderada` / `17` (ramo elif, borda 7)
* Entrada: `4` -> Saída: `Severidade Moderada` / `14` (ramo elif, borda 4)
* Entrada: `3` -> Saída: `Severidade Leve` / `13` (ramo else, borda 3)

**6. Distratores (marcados):**

```python
if codigo > 3:                   # DISTRATOR do fragmento "elif codigo > 3:" | Concepção 5: elif confundido com novo if independente (quebra de exclusividade)
codigo = input("Codigo: ")       # DISTRATOR do fragmento "codigo = int(input("Codigo: "))" | Concepção 8: conversão de tipo ausente ao ler input

```

**7. Dicas de resolução:**
Use `int()` para converter a entrada de texto em número. Use `elif` para garantir que apenas um dos ramos seja executado. Linhas fora da indentação do condicional serão executadas sempre.

**8. Tópicos abordados:**
Leitura de dados, Conversão de tipos, Condicional composta if/elif/else, Operadores relacionais, Operações aritméticas.

---

**1. Título:** `Bonus Katherine Johnson`

**2. Enunciado:**
Katherine Johnson precisa verificar a precisão dos cálculos de trajetória orbital. Se a precisão for maior ou igual a 98.0 e o tempo de processamento for menor ou igual a 5.0 segundos, a missão recebe um bônus de eficiência de R$ 500.00.

Escreva um programa que receba a precisão e o tempo de processamento, calcule o valor final do bônus e informe o status da missão.

A fórmula para o bônus final é:


$$B_{final} = B_{base} + 500.0$$


onde $B_{base}$ é o valor inicial do bônus.

**Entrada 1:** o valor inicial do bônus (número decimal).
**Entrada 2:** a precisão da trajetória em porcentagem (número decimal).
**Entrada 3:** o tempo de processamento em segundos (número decimal).

**Saída:** se ambas as condições forem atendidas, exiba `Missao Excelente` e na linha seguinte o valor do bônus final arredondado em 2 casas decimais. Caso contrário, exiba `Missao Padrão` e na linha seguinte o valor do bônus inicial sem alterações arredondado em 2 casas decimais.

Tópico: Operadores lógicos e estruturas condicionais.

**3. Solução de referência:**

```python
bonus_base = float(input("Bonus base: "))
precisao = float(input("Precisao: "))
tempo = float(input("Tempo: "))
if precisao >= 98.0 and tempo <= 5.0:
    bonus_final = round(bonus_base + 500.0, 2)
    print("Missao Excelente")
    print(bonus_final)
else:
    bonus_final = round(bonus_base, 2)
    print("Missao Padrão")
    print(bonus_final)

```

**4. Explicação passo a passo:**
As três primeiras linhas realizam a leitura do bônus base, da precisão e do tempo de processamento, convertendo todos para decimal com `float()`. A condição composta `if precisao >= 98.0 and tempo <= 5.0:` exige que ambos os critérios sejam satisfeitos simultaneamente. Se verdadeiro, adiciona 500.0 ao bônus e imprime a mensagem de sucesso seguida do valor final arredondado em 2 casas. No ramo `else:`, imprime a mensagem de missão padrão e o bônus base sem acréscimo.

**5. Casos de teste:**

Públicos:

* Entrada: `1000.0` / `99.0` / `4.0` -> Saída: `Missao Excelente` / `1500.0` (ramo if, ambas condições satisfeitas)
* Entrada: `1000.0` / `95.0` / `4.0` -> Saída: `Missao Padrão` / `1000.0` (ramo else, precisao insuficiente)
* Entrada: `1000.0` / `99.0` / `6.0` -> Saída: `Missao Padrão` / `1000.0` (ramo else, tempo excedido)

Privados:

* Entrada: `1000.0` / `98.0` / `5.0` -> Saída: `Missao Excelente` / `1500.0` (ramo if, bordas exatas 98.0 e 5.0)
* Entrada: `1000.0` / `97.9` / `5.0` -> Saída: `Missao Padrão` / `1000.0` (ramo else, borda precisao 97.9)
* Entrada: `1000.0` / `98.0` / `5.1` -> Saída: `Missao Padrão` / `1000.0` (ramo else, borda tempo 5.1)

**6. Distratores (marcados):**

```python
if precisao >= 98.0 or tempo <= 5.0:   # DISTRATOR do fragmento "if precisao >= 98.0 and tempo <= 5.0:" | Concepção 7: lógica booleana trocada (or no lugar de and)
if precisao == 98.0 and tempo <= 5.0:  # DISTRATOR do fragmento "if precisao >= 98.0 and tempo <= 5.0:" | Concepção 1: igualdade (==) no lugar de maior ou igual (>=)

```

**7. Dicas de resolução:**
O operador lógico `and` exige que as duas expressões sejam verdadeiras ao mesmo tempo. Use `>=` para maior ou igual e `<=` para menor ou igual.

**8. Tópicos abordados:**
Leitura de dados, Conversão de tipos, Condicional composta if/else, Operadores lógicos, Operadores relacionais, Arredondamento com round.

---

**1. Título:** `Prioridade Hamilton`

**2. Enunciado:**
Margaret Hamilton desenvolveu o software de bordo do programa Apollo. O sistema atribui níveis de prioridade de interrupção com base na taxa de uso da CPU (0 a 100%).

Escreva um programa que receba a taxa de uso da CPU e determine o nível de alerta do sistema e a taxa ajustada com sobretaxa de 5% apenas para o nível máximo de alerta.

A fórmula da taxa ajustada é:


$$T_{ajustada} = T_{cpu} + 5.0$$


onde $T_{cpu}$ é a taxa de uso original.

**Entrada:** a taxa de uso da CPU em porcentagem (número decimal).

**Saída 1:** se a taxa for maior ou igual a 90.0, imprima `Alerta Critico Maximo`; se for maior ou igual a 70.0, imprima `Alerta Moderado`; caso contrário, imprima `Operacao Normal`.
**Saída 2:** caso o alerta seja crítico máximo, imprima também a taxa ajustada na linha seguinte com `round()` de 1 casa decimal.

Tópico: Condicional composta e ordem de condições.

**3. Solução de referência:**

```python
taxa_cpu = float(input("Taxa CPU: "))
if taxa_cpu >= 90.0:
    taxa_ajustada = round(taxa_cpu + 5.0, 1)
    print("Alerta Critico Maximo")
    print(taxa_ajustada)
elif taxa_cpu >= 70.0:
    print("Alerta Moderado")
else:
    print("Operacao Normal")

```

**4. Explicação passo a passo:**
A primeira linha obtém a taxa da CPU como número `float`. A estrutura testa primeiro a condição mais específica (`taxa_cpu >= 90.0`). Se atendida, calcula a taxa ajustada somando 5.0 e arredondando para 1 casa decimal, e imprime o alerta máximo com o novo valor. Se não for maior ou igual a 90.0, passa para o `elif taxa_cpu >= 70.0:`, que imprime o alerta moderado. Caso contrário, entra no `else:` imprimindo operação normal.

**5. Casos de teste:**

Públicos:

* Entrada: `92.0` -> Saída: `Alerta Critico Maximo` / `97.0` (ramo if)
* Entrada: `80.0` -> Saída: `Alerta Moderado` (ramo elif)
* Entrada: `50.0` -> Saída: `Operacao Normal` (ramo else)

Privados:

* Entrada: `90.0` -> Saída: `Alerta Critico Maximo` / `95.0` (ramo if, borda 90.0)
* Entrada: `89.9` -> Saída: `Alerta Moderado` (ramo elif, borda 89.9)
* Entrada: `70.0` -> Saída: `Alerta Moderado` (ramo elif, borda 70.0)
* Entrada: `69.9` -> Saída: `Operacao Normal` (ramo else, borda 69.9)

**6. Distratores (marcados):**

```python
elif taxa_cpu >= 90.0:           # DISTRATOR do fragmento "if taxa_cpu >= 90.0:" | Concepção 6: ordem das condições cria ramo morto (testar condição mais geral antes da específica)
elif taxa_cpu < 70.0:            # DISTRATOR do fragmento "elif taxa_cpu >= 70.0:" | Concepção 2: operador de comparação trocado (< no lugar de >=)

```

**7. Dicas de resolução:**
A ordem das condições em uma estrutura `if/elif` deve ir do caso mais restrito/específico para o mais geral. O operador `>=` verifica se o valor é maior ou igual.

**8. Tópicos abordados:**
Leitura de dados, Conversão de tipos, Condicional composta if/elif/else, Operadores relacionais, Arredondamento com round.

---

**1. Título:** `Nivel Al Khwarizmi`

**2. Enunciado:**
O matemático Al-Khwarizmi organizou os métodos de resolução de equações por complexidade do texto explicativo.

Escreva um programa que receba a palavra-chave da categoria e a quantidade de passos do método, e classifique a complexidade do algoritmo.

**Entrada 1:** a palavra-chave do método (texto: `direto` ou `avancado`).
**Entrada 2:** a quantidade total de passos (número inteiro).

**Saída:** se a palavra-chave for `avancado` e a quantidade de passos for maior que 10, imprima `Algoritmo Complexo`; caso contrário, imprima `Algoritmo Simples`.

Tópico: Comparação de strings e estrutura condicional.

**3. Solução de referência:**

```python
categoria = input("Categoria: ")
passos = int(input("Passos: "))
if categoria == "avancado" and passos > 10:
    print("Algoritmo Complexo")
else:
    print("Algoritmo Simples")

```

**4. Explicação passo a passo:**
A primeira linha lê a palavra-chave como string com `input()`. A segunda lê a quantidade de passos e converte para número inteiro. A instrução `if` compara se a string `categoria` é exatamente igual a `"avancado"` e se a variável `passos` supera 10. Se ambas forem verdadeiras, exibe `Algoritmo Complexo`. Caso contrário, cai no ramo `else:` e exibe `Algoritmo Simples`.

**5. Casos de teste:**

Públicos:

* Entrada: `avancado` / `15` -> Saída: `Algoritmo Complexo` (ramo if)
* Entrada: `avancado` / `5` -> Saída: `Algoritmo Simples` (ramo else, passos <= 10)
* Entrada: `direto` / `20` -> Saída: `Algoritmo Simples` (ramo else, categoria diferente)

Privados:

* Entrada: `avancado` / `11` -> Saída: `Algoritmo Complexo` (ramo if, borda passos 11)
* Entrada: `avancado` / `10` -> Saída: `Algoritmo Simples` (ramo else, borda passos 10)
* Entrada: `Avancado` / `15` -> Saída: `Algoritmo Simples` (ramo else, sensibilidade a maiúscula)

**6. Distratores (marcados):**

```python
if categoria == "Avancado" and passos > 10:  # DISTRATOR do fragmento "if categoria == "avancado" and passos > 10:" | Concepção 9: valor de comparação de string errado (sensibilidade a maiúscula/minúscula)
if categoria == "avancado" and passos > 10   # DISTRATOR do fragmento "if categoria == "avancado" and passos > 10:" | Concepção 3: ausência dos dois-pontos (:) ao final da condição

```

**7. Dicas de resolução:**
Em Python, a comparação de textos é sensível a maiúsculas e minúsculas (`"avancado"` é diferente de `"Avancado"`). Condições `if` precisam terminar com dois-pontos `:`.

**8. Tópicos abordados:**
Leitura de dados, Conversão de tipos, Comparação de strings, Condicional simples e composta if/else, Operadores lógicos.

---

**1. Título:** `Ponderacao Hypatia`

**2. Enunciado:**
Hypatia de Alexandria está registrando a luminosidade de corpos celestes observados pelo astrolábio.

Escreva um programa que receba a luminosidade observada e calcule a pontuação ajustada do astro. Se a luminosidade for maior ou igual a 50.0, adicione um fator de ajuste de 12.5; caso contrário, adicione um fator de 5.0.

A fórmula da pontuação é:


$$P = L + F$$


onde $L$ é a luminosidade observada e $F$ é o fator de ajuste.

**Entrada:** a luminosidade observada (número decimal).

**Saída 1:** se a luminosidade for maior ou igual a 50.0, imprima `Luminosidade Alta`; caso contrário, imprima `Luminosidade Baixa`.
**Saída 2:** a pontuação final arredondada em 2 casas decimais.

Tópico: Condicional composta e arredondamento com round.

**3. Solução de referência:**

```python
luminosidade = float(input("Luminosidade: "))
if luminosidade >= 50.0:
    fator = 12.5
    print("Luminosidade Alta")
else:
    fator = 5.0
    print("Luminosidade Baixa")
pontuacao = round(luminosidade + fator, 2)
print(pontuacao)

```

**4. Explicação passo a passo:**
A primeira linha converte a leitura de entrada para `float`. Se a luminosidade for maior ou igual a 50.0, o programa define o `fator` como 12.5 e exibe a mensagem de alta luminosidade. Caso contrário, no ramo `else:`, define o `fator` como 5.0 e exibe a mensagem de baixa luminosidade. Após a estrutura condicional, a única linha de cálculo obtém a pontuação somando a luminosidade ao fator e arredondando para 2 casas decimais, exibindo o resultado final.

**5. Casos de teste:**

Públicos:

* Entrada: `60.0` -> Saída: `Luminosidade Alta` / `72.5` (ramo if)
* Entrada: `25.0` -> Saída: `Luminosidade Baixa` / `30.0` (ramo else)
* Entrada: `50.0` -> Saída: `Luminosidade Alta` / `62.5` (ramo if, borda 50.0)

Privados:

* Entrada: `49.9` -> Saída: `Luminosidade Baixa` / `54.9` (ramo else, borda 49.9)
* Entrada: `100.25` -> Saída: `Luminosidade Alta` / `112.75` (ramo if, decimal)
* Entrada: `0.0` -> Saída: `Luminosidade Baixa` / `5.0` (ramo else, valor zero)

**6. Distratores (marcados):**

```python
    print(round(luminosidade + fator, 2))  # DISTRATOR do fragmento "pontuacao = round(luminosidade + fator, 2)" | Concepção 10: efeito colateral no ramo errado (imprimir dentro do ramo quando o cálculo deveria ocorrer depois da condição)
else luminosidade < 50.0:                  # DISTRATOR do fragmento "else:" | Concepção 4: else tratado como se aceitasse condição

```

**7. Dicas de resolução:**
O bloco `else` serve para capturar qualquer caso que não satisfez o `if` e não recebe uma condição. Cálculos que dependem de variáveis definidas nos ramos devem ser feitos após o condicional ou com os valores devidamente atribuídos.

**8. Tópicos abordados:**
Leitura de dados, Conversão de tipos, Condicional simples e composta if/else, Operadores relacionais, Operações aritméticas, Arredondamento com round.

---

**1. Título:** `Servidor Berners Lee`

**2. Enunciado:**
Tim Berners-Lee precisa monitorar o tráfego do primeiro servidor web no CERN. A taxa de requisições por segundo indica a carga de processamento.

Escreva um programa que receba a quantidade de requisições por segundo como número decimal e informe o status do servidor.

**Entrada:** a quantidade de requisições por segundo (número decimal).

**Saída:** se o valor for maior que 1000.0, imprima `Status Crítico - Sobrecarga`; se for maior que 500.0 e menor ou igual a 1000.0, imprima `Status Alerta - Carga Alta`; caso contrário, imprima `Status Estavel - Carga Normal`.

Tópico: Conversão de tipos e condicional composta if/elif/else.

**3. Solução de referência:**

```python
requisicoes = float(input("Requisicoes: "))
if requisicoes > 1000.0:
    print("Status Crítico - Sobrecarga")
elif requisicoes > 500.0:
    print("Status Alerta - Carga Alta")
else:
    print("Status Estavel - Carga Normal")

```

**4. Explicação passo a passo:**
A primeira linha obtém o valor numérico decimal das requisições via `float(input())`. O primeiro teste `if requisicoes > 1000.0:` verifica se há sobrecarga extrema. Se falso, avança para o `elif requisicoes > 500.0:`, que avalia a faixa intermediária. Caso nenhuma das anteriores seja atendida, executa o `else:` classificando a carga como normal. Entradas não numéricas geram erro de execução.

**5. Casos de teste:**

Públicos:

* Entrada: `1200.0` -> Saída: `Status Crítico - Sobrecarga` (ramo if)
* Entrada: `750.0` -> Saída: `Status Alerta - Carga Alta` (ramo elif)
* Entrada: `200.0` -> Saída: `Status Estavel - Carga Normal` (ramo else)

Privados:


* Entrada: `1000.0` -> Saída: `Status Alerta - Carga Alta` (ramo elif, borda 1000.0)
* Entrada: `1000.1` -> Saída: `Status Crítico - Sobrecarga` (ramo if, borda 1000.1)
* Entrada: `500.0` -> Saída: `Status Estavel - Carga Normal` (ramo else, borda 500.0)
* Entrada: `500.1` -> Saída: `Status Alerta - Carga Alta` (ramo elif, borda 500.1)

**6. Distratores (marcados):**

```python
requisicoes = input("Requisicoes: ")     # DISTRATOR do fragmento "requisicoes = float(input("Requisicoes: "))" | Concepção 8: conversão de tipo ausente ao comparar entrada com número
if requisicoes > 500.0:                  # DISTRATOR do fragmento "elif requisicoes > 500.0:" | Concepção 5: elif confundido com novo if independente

```

**7. Dicas de resolução:**
Use `float()` para ler números com ponto decimal. O encadeamento `if/elif/else` garante que apenas uma das opções seja impressa.

**8. Tópicos abordados:**
Leitura de dados, Conversão de tipos, Condicional composta if/elif/else, Operadores relacionais.

---

**1. Título:** `Sinal Hedy Lamarr`

**2. Enunciado:**
Hedy Lamarr inventou a tecnologia de salto em frequência para comunicação secreta. O sistema valida se um sinal é seguro com base na frequência em Megahertz (MHz) ou na potência em Watts (W).

Escreva um programa que receba a frequência e a potência do sinal. Se a frequência for exatamente 88.0 ou a potência for maior ou igual a 100.0, calcule o sinal ajustado somando 10.0 à potência e exiba o resultado.

A fórmula do sinal ajustado é:


$$S_{ajustado} = P + 10.0$$


onde $P$ é a potência recebida.

**Entrada 1:** a frequência do sinal em MHz (número decimal).
**Entrada 2:** a potência do sinal em W (número decimal).

**Saída:** se o sinal for seguro, imprima `Sinal Valido` e na linha seguinte o valor do sinal ajustado com `round()` de 1 casa decimal. Caso contrário, imprima `Sinal Invalido` e na linha seguinte a potência original sem alteração com `round()` de 1 casa decimal.

Tópico: Operadores lógicos or e estrutura condicional.

**3. Solução de referência:**

```python
frequencia = float(input("Frequencia: "))
potencia = float(input("Potencia: "))
if frequencia == 88.0 or potencia >= 100.0:
    ajustado = round(potencia + 10.0, 1)
    print("Sinal Valido")
    print(ajustado)
else:
    ajustado = round(potencia, 1)
    print("Sinal Invalido")
    print(ajustado)

```

**4. Explicação passo a passo:**
As duas primeiras linhas leem a frequência e a potência como decimal. O comando `if frequencia == 88.0 or potencia >= 100.0:` usa o operador lógico `or`, de modo que basta uma das condições ser verdadeira para validar o sinal. Caso atenda, calcula o sinal ajustado (soma 10.0 à potência), imprime `Sinal Valido` e o valor arredondado. No `else:`, imprime `Sinal Invalido` e a potência original arredondada.

**5. Casos de teste:**

Públicos:

* Entrada: `88.0` / `50.0` -> Saída: `Sinal Valido` / `60.0` (ramo if, frequencia atende)
* Entrada: `90.0` / `120.0` -> Saída: `Sinal Valido` / `130.0` (ramo if, potencia atende)
* Entrada: `90.0` / `50.0` -> Saída: `Sinal Invalido` / `50.0` (ramo else, nenhuma atende)

Privados:

* Entrada: `88.0` / `100.0` -> Saída: `Sinal Valido` / `110.0` (ramo if, ambas atendem e borda de potencia 100.0)
* Entrada: `90.0` / `100.0` -> Saída: `Sinal Valido` / `110.0` (ramo if, borda de potencia 100.0)
* Entrada: `90.0` / `99.9` -> Saída: `Sinal Invalido` / `99.9` (ramo else, borda de potencia 99.9)

**6. Distratores (marcados):**

```python
if frequencia == 88.0 and potencia >= 100.0: # DISTRATOR do fragmento "if frequencia == 88.0 or potencia >= 100.0:" | Concepção 7: lógica booleana trocada (and no lugar de or) 
if frequencia = 88.0 or potencia >= 100.0:  # DISTRATOR do fragmento "if frequencia == 88.0 or potencia >= 100.0:" | Concepção 1: atribuição (=) no lugar de igualdade (==)

``` 

**7. Dicas de resolução:**
O operador `or` retorna verdadeiro se ao menos uma das condições for verdadeira. Para testar igualdade, utilize `==` (dois sinais de igual).

**8. Tópicos abordados:**
Leitura de dados, Conversão de tipos, Condicional simples e composta if/else, Operadores lógicos, Operadores relacionais, Arredondamento com round.

---

**1. Título:** `Simetria Emmy Noether`

**2. Enunciado:**
A matemática Emmy Noether demonstrou a conexão entre simetrias e leis de conservação na física. Um experimento calcula o índice de conservação do sistema.

Escreva um programa que receba a energia de entrada e a energia de saída de um sistema físico, calcule a taxa de conservação e classifique a estabilidade da simetria.

A fórmula da taxa de conservação é:


$$T_{conservacao} = E_{saida} - E_{entrada}$$


onde $E_{saida}$ e $E_{entrada}$ são as energias do sistema.

**Entrada 1:** a energia de entrada (número decimal).
**Entrada 2:** a energia de saída (número decimal).

**Saída 1:** se a taxa for exatamente 0.0, imprima `Simetria Perfeita`; se for maior que 0.0, imprima `Ganho de Energia`; caso contrário, imprima `Perda de Energia`.
**Saída 2:** a taxa de conservação arredondada em 2 casas decimais.

Tópico: Condicional composta e ordem de avaliação.

**3. Solução de referência:**

```python
e_entrada = float(input("E Entrada: "))
e_saida = float(input("E Saida: "))
taxa = round(e_saida - e_entrada, 2)
if taxa == 0.0:
    print("Simetria Perfeita")
elif taxa > 0.0:
    print("Ganho de Energia")
else:
    print("Perda de Energia")
print(taxa)

```

**4. Explicação passo a passo:**
As duas primeiras linhas leem os valores numéricos decimais de energia de entrada e saída. A linha seguinte calcula a diferença entre a energia de saída e a de entrada e arredonda o resultado em 2 casas decimais na variável `taxa`. Em seguida, a estrutura `if/elif/else` verifica se a taxa é nula (simetria perfeita), positiva (ganho) ou negativa (perda). Por fim, o valor da taxa é impresso de forma incondicional.

**5. Casos de teste:**

Públicos:

* Entrada: `100.0` / `100.0` -> Saída: `Simetria Perfeita` / `0.0` (ramo if, taxa zero)
* Entrada: `100.0` / `105.0` -> Saída: `Ganho de Energia` / `5.0` (ramo elif, taxa positiva)
* Entrada: `100.0` / `95.0` -> Saída: `Perda de Energia` / `-5.0` (ramo else, taxa negativa)

Privados:

* Entrada: `50.5` / `50.5` -> Saída: `Simetria Perfeita` / `0.0` (ramo if, decimais iguais)
* Entrada: `10.0` / `10.01` -> Saída: `Ganho de Energia` / `0.01` (ramo elif, borda positiva mínima)
* Entrada: `10.0` / `9.99` -> Saída: `Perda de Energia` / `-0.01` (ramo else, borda negativa mínima)

**6. Distratores (marcados):**

```python
if taxa = 0.0:                           # DISTRATOR do fragmento "if taxa == 0.0:" | Concepção 1: atribuição (=) no lugar de igualdade (==)
    print(taxa)                          # DISTRATOR do fragmento "print(taxa)" | Concepção 10: efeito colateral no ramo errado (imprimir dentro do ramo quando a impressão deveria ocorrer ao final)

```

**7. Dicas de resolução:**
Use `==` para testar igualdade numérica em condições `if`. Instruções fora da indentação dos blocos `if/elif/else` são executadas sempre ao final do programa.

**8. Tópicos abordados:**
Leitura de dados, Conversão de tipos, Condicional composta if/elif/else, Operadores relacionais, Operações aritméticas, Arredondamento com round.