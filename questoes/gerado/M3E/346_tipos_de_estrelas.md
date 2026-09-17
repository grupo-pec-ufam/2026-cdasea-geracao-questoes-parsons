19. Título: Tipos de Estrelas
Fatiamento estelar sequencial delimitado por massas.

2. Enunciado:
Astrônomos definem o fim de uma estrela usando uma medição particular a partir da sua massa volumétrica. Se o corpo estelar for classificado numa medição estritamente menor que 0.5, é denominada como "Ana vermelha". Se encaixar de 0.5 até 8.0 (inclusive), passa a ser a "Estrela tipo Sol". Disparando acima de 8.0 massas, a metamorfose transforma-a categoricamente numa "Supergigante".

Entrada: registro numérico decimal contendo a massa estelar.

Saída: Ana vermelha., Estrela tipo Sol. ou Supergigante..

Tópico: Condicionais encadeadas (if/elif/else).

3. Solução:
Python
massa = float(input("Massa estelar: "))
if massa < 0.5:
    print("Ana vermelha.")
elif massa <= 8.0:
    print("Estrela tipo Sol.")
else:
    print("Supergigante.")
4. Explicação:
Esta é uma questão de nível Médio. Explora a propriedade inerente dos encadeamentos do interpretador: ocultar o limite baixo de uma regra central porque o if de cima já cobriu (fatiou) essa barreira.

Cortamos perfeitamente o lado minúsculo varrendo os dados no massa < 0.5. Os remanescentes estelares escorregam ao bloco intermédio e ficam isolados sendo interceptados pelo topo elif massa <= 8.0. Sem mistérios para os corpos maiores e pesados: o escape é acionado no genérico varredouro else.

5. Casos de teste:
Públicos:

Entrada: 0.2 ➔ Saída: Ana vermelha. (ramo if)

Entrada: 1.0 ➔ Saída: Estrela tipo Sol. (ramo elif)

Entrada: 15.0 ➔ Saída: Supergigante. (ramo else)

Privados:

Entrada: 0.5 ➔ Saída: Estrela tipo Sol. (ramo elif, tocando a borda frágil da ponta mínima do espectro)

Entrada: 8.0 ➔ Saída: Estrela tipo Sol. (ramo elif, topo central que beija os limites estelares)

Entrada: 8.1 ➔ Saída: Supergigante. (ramo else, excedeu por muito ínfima flutuação)

6. Distratores:
Python
elif massa < 8.0:    # DISTRATOR do fragmento 'elif massa <= 8.0:' | Concepção 2: operador com erro e falha cega da borda (< no lugar de <= exato e requisitado).
else massa > 8.0:    # DISTRATOR do fragmento 'else:' | Concepção 4: Uso disforme de um "else:" com condições numéricas embutidas na linha.
7. Dicas de resolução:
Para regras que vão de um valor "até X (inclusive)", garanta sempre que você use o limitador de união com sinal de menor e igualdade (<=) que absorverá o X exato sem pulá-lo.

8. Tópicos abordados:
Variáveis, Operações de entrada e saída, Condicionais encadeadas (elif), Operadores relacionais.
