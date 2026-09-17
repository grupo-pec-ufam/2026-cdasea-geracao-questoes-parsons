### 1. Título: Esparta - Seleção Militar
Avaliação de pré-requisito etário seguido de pontuação em testes físicos.
---
### 2. Enunciado:
Na antiga Esparta, apenas jovens que atingissem 20 anos ou mais podiam avançar no exército de combate. Desses que atingiam a idade, eles precisavam passar em exatamente 3 testes de sobrevivência para entrar na Tropa de Elite; caso contrário, iam para a infantaria comum.

Entradas: um número inteiro com a idade do jovem, seguido de um inteiro com a quantidade de testes aprovados.

Saída: Ainda em treinamento. se for menor de 20 anos; Tropa de Elite. se for maior ou igual a 20 e com 3 testes; Infantaria comum. se for maior ou igual a 20 mas não passou nos 3 testes.

Tópico: Condicionais aninhadas (if/if).
---
3. Solução:
Python
idade = int(input("Idade: "))
testes = int(input("Testes: "))
if idade >= 20:
    if testes == 3:
        print("Tropa de Elite.")
    else:
        print("Infantaria comum.")
else:
    print("Ainda em treinamento.")
4. Explicação:
Esta é uma questão de nível Médio. O aluno lida com o bloqueio de uma ramificação baseado no conceito maior-ou-igual.

A estrutura aninhada se dá pelo if idade >= 20. Quem é rejeitado (idade 19 ou menos) cai diretamente no else externo. Para os que passam pela barreira da idade, o if interno verifica a exatidão dos testes (testes == 3). Qualquer valor diferente aciona o else interno.

5. Casos de teste:
Públicos:

Entradas: 21 e 3 ➔ Saída: Tropa de Elite. (ramo if externo, if interno)

Entradas: 20 e 2 ➔ Saída: Infantaria comum. (ramo if externo, else interno, borda de idade)

Entradas: 18 e 3 ➔ Saída: Ainda em treinamento. (ramo else externo)

Privados:

Entradas: 20 e 3 ➔ Saída: Tropa de Elite. (ramo if externo, if interno, borda de idade)

Entradas: 19 e 3 ➔ Saída: Ainda em treinamento. (ramo else externo, limite inferior de idade)

Entradas: 25 e 0 ➔ Saída: Infantaria comum. (ramo if externo, else interno)

6. Distratores:
Python
if idade > 20:    # DISTRATOR do fragmento 'if idade >= 20:' | Concepção 2: erro de borda (> no lugar de >=), barrando pessoas que têm exatamente 20 anos.
if testes = 3:    # DISTRATOR do fragmento 'if testes == 3:' | Concepção 1: atribuição (=) no lugar de igualdade (==).
7. Dicas de resolução:
Quando a regra fala "atingir 20 anos ou mais", o valor 20 está incluso na verificação. Use >=, unindo o sinal de maior ao sinal de igualdade, nesta exata ordem.

Para comparar um número exato de testes (exatamente 3), use a igualdade dupla ==.

8. Tópicos abordados:
Variáveis, Operações de entrada e saída, Condicional composta (if/else), Escopo e Indentação de bloco.
