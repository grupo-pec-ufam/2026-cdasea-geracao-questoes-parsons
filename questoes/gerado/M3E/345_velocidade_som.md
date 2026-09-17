18. Título: Velocidade do Som
Formatação de condicionais alocadas em tramas aerodinâmicas da ciência.

2. Enunciado:
Engenheiros de aviônica avaliam aeronaves pela distância percorrida e tempo efetuado de voo. A velocidade do som na atmosfera terrestre é padronizada rigorosamente como 343.0 metros por segundo.

Entradas: um número decimal com a distância em metros e um decimal com a medição do tempo marcado em segundos.

Saída: se a velocidade da aeronave for estritamente maior que 343.0, imprima Voo supersonico.. Se bater a exatidão cravada do limite de 343.0, imprima Estouro da barreira.. Se rodar abaixo da marca limite, imprima Voo subsonico..

Tópico: Condicionais encadeadas (if/elif/else).

3. Solução:
Python
dist = float(input("Distancia (m): "))
tempo = float(input("Tempo (s): "))
vel = dist / tempo
if vel > 343.0:
    print("Voo supersonico.")
elif vel == 343.0:
    print("Estouro da barreira.")
else:
    print("Voo subsonico.")
4. Explicação:
Esta é uma questão de nível Médio. Ela une uma formulação aritmética simples com as extremidades dos tipos relacionais matemáticos da tricotomia (maior, igual, menor).

Tendo finalizado a alocação do cálculo da vel, a verificação em cadeia adentra na busca. O if engole qualquer ponto flutuante super-rápido (>). O elif isola perfeitamente os bravos voos que atingiram a igualdade extrema (==). Conclusão lógica: se o avião não andou mais rápido que o limite e não correu exatamente na marca limite, o resgate obrigatório do else avisa da normalidade.

5. Casos de teste:
Públicos:

Entradas: 400.0 e 1.0 ➔ Saída: Voo supersonico. (ramo if)

Entradas: 343.0 e 1.0 ➔ Saída: Estouro da barreira. (ramo elif, bate no limite certinho exato)

Entradas: 100.0 e 2.0 ➔ Saída: Voo subsonico. (ramo else)

Privados:

Entradas: 686.0 e 2.0 ➔ Saída: Estouro da barreira. (ramo elif, borda com cálculo mascarado nas proporções)

Entradas: 343.1 e 1.0 ➔ Saída: Voo supersonico. (ramo if, rompimento sutil)

Entradas: 342.9 e 1.0 ➔ Saída: Voo subsonico. (ramo else, tentativa frustrada falha abaixo do som)

6. Distratores:
Python
vel = dist // tempo    # DISTRATOR do fragmento 'vel = dist / tempo' | Concepção 8: Confusão entre os sinais de operadores matemáticos, aplicando a divisão inteira (//) em um voo de decimais sensíveis.
elif vel = 343.0:      # DISTRATOR do fragmento 'elif vel == 343.0:' | Concepção 1: Atribuição (=) em vez de comparador de igualdade (==).
7. Dicas de resolução:
Quando a divisão requer cálculos que mantém e honram as casas decimais flutuantes do usuário não se limite ou invente métodos. A barra simples (/) do divisor de pontuação cuidará do resultado perfeito.

8. Tópicos abordados:
Variáveis, Operadores aritméticos, Condicionais encadeadas (elif).
