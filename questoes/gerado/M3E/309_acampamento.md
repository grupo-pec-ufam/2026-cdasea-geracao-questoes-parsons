13. Título: Acampamento Meio-Sangue
Somatória de pontuações de batalha e partição de casas míticas.

2. Enunciado:
Quíron está dividindo os novos semideuses em chalés. A pontuação de poder define o chalé pai. A pontuação final é calculada somando os pontos físicos e os pontos mágicos do guerreiro. Se o total atingir 150 ou mais, é do Chalé de Zeus. Se ficar entre 100 e menor que 150, Chalé de Atena. Abaixo de 100, Chalé de Hermes. Ao final, Quíron saúda todos com uma mensagem padronizada.

Entradas: número inteiro com os pontos físicos, seguido de número inteiro com os pontos mágicos.

Saídas: primeiro imprima Chale de Zeus., Chale de Atena. ou Chale de Hermes.. Ao final de tudo, de modo independente, imprima sempre Bem-vindo ao acampamento..

Tópico: Condicionais encadeadas (if/elif/else).

3. Solução:
Python
fisico = int(input("Fisico: "))
magico = int(input("Magico: "))
total = fisico + magico
if total >= 150:
    print("Chale de Zeus.")
elif total >= 100:
    print("Chale de Atena.")
else:
    print("Chale de Hermes.")
print("Bem-vindo ao acampamento.")
4. Explicação:
Esta é uma questão de nível Médio. Ela trabalha a capacidade do aluno de quebrar lógicas continuadas e formatar comandos que independem dos condicionais.

Após calcular a soma na variável total, estruturamos os limites superiores para os inferiores. O if absorve o pico (>= 150). O elif absorve o total restante entre 100 e 149. O nível mais fraco recai no else. O último print fica completamente alinhado à margem esquerda, sem recuo, disparando a saudação para todos os chalés.

5. Casos de teste:
Públicos:

Entradas: 100 e 60 ➔ Saídas: Chale de Zeus. e Bem-vindo ao acampamento. (ramo if)

Entradas: 50 e 70 ➔ Saídas: Chale de Atena. e Bem-vindo ao acampamento. (ramo elif)

Entradas: 40 e 30 ➔ Saídas: Chale de Hermes. e Bem-vindo ao acampamento. (ramo else)

Privados:

Entradas: 100 e 50 ➔ Saídas: Chale de Zeus. e Bem-vindo ao acampamento. (ramo if, borda exata 150)

Entradas: 50 e 50 ➔ Saídas: Chale de Atena. e Bem-vindo ao acampamento. (ramo elif, borda exata 100)

Entradas: 50 e 49 ➔ Saídas: Chale de Hermes. e Bem-vindo ao acampamento. (ramo else, pontuação 99)

6. Distratores:
Python
elif total > 100:
# DISTRATOR do fragmento 'elif total >= 100:' | Concepção 2: erro de borda (> em vez de >=), enviando guerreiros nota 100 para o chalé inferior.

    print("Bem-vindo ao acampamento.")
# DISTRATOR do fragmento 'print("Bem-vindo ao acampamento.")' | Concepção: erro de escopo de bloco (indentação falsa), atrelando a saudação estritamente ao else.
7. Dicas de resolução:
Quando for montar as condições numéricas, faça sempre do maior valor testado até chegar ao menor. Fatiar os valores em ordem descrescente ajuda o elif a bloquear o excesso de forma natural.

Retire a indentação (o recuo) do último print() para que ele obedeça a regra "ao final de tudo, de modo independente".

8. Tópicos abordados:
Variáveis, Operadores aritméticos, Condicionais encadeadas (elif), Escopo e Indentação de bloco.
