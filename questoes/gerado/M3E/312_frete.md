20. Título: Custo de Frete
Somas e multiplicações calculadas em tramas encadeadas de delivery.

2. Enunciado:
O restaurante universitário passou a oferecer um serviço de delivery experimental que cobra os discentes por peso vezes a localidade (kg x km). O custo base se inicia pela multiplicação estrita do peso e da distância. Se o resultado for menor que 50.0 reais, o frete é batizado de "Frete baixo". Se ficar de 50.0 até 150.0 (inclusive), a emissão é "Frete medio". Valores bizarros e excessivos marcam o despacho com o "Frete caro".

Entradas: flutuante contendo o número referente ao peso (kg), seguido da distância (km) traçada.

Saída: Frete baixo., Frete medio., ou Frete caro..

Tópico: Condicionais encadeadas (if/elif/else).

3. Solução:
Python
peso = float(input("Peso (kg): "))
dist = float(input("Dist (km): "))
custo = peso * dist
if custo < 50.0:
    print("Frete baixo.")
elif custo <= 150.0:
    print("Frete medio.")
else:
    print("Frete caro.")
4. Explicação:
Esta é uma questão de nível Médio. Trabalha-se a ordem limitadora cortando os degraus e escalonando os tetos encadeados sequencialmente.

As duas peças se fundem na variável custo. O if engasga de cara filtrando a entrada de qualquer cálculo abaixo da régua restritiva mínima (< 50.0). O elif, atracado sob o teto anterior, abocanha com segurança até a restrição unificada englobando valores menores e iguais (<= 150.0). O escape else acolhe o frete caríssimo além do esperado.

5. Casos de teste:
Públicos:

Entradas: 2.0 e 10.0 ➔ Saída: Frete baixo. (ramo if, custo barateado de 20.0)

Entradas: 5.0 e 20.0 ➔ Saída: Frete medio. (ramo elif, custo 100)

Entradas: 10.0 e 20.0 ➔ Saída: Frete caro. (ramo else, custo exorbitante)

Privados:

Entradas: 5.0 e 10.0 ➔ Saída: Frete medio. (ramo elif, cravando as garras exatas matemáticas na bordinha estrita)

Entradas: 15.0 e 10.0 ➔ Saída: Frete medio. (ramo elif, bordinha do teto colada pontualmente grudando na parede do limitador 150)

Entradas: 15.1 e 10.0 ➔ Saída: Frete caro. (ramo else, descarrilhou por décimos)

6. Distratores:
Python
custo = peso % dist    # DISTRATOR do fragmento 'custo = peso * dist' | Concepção 8: Confusão destrutiva operante do operador cruzador, usando o módulo/resto da divisão (%).
if custo <= 150.0:     # DISTRATOR do fragmento 'elif custo <= 150.0:' | Concepção 5: Troca de elifs cruciais por um novo abridor (if), destruindo e maculando a exclusão do funil.
7. Dicas de resolução:
Quando encadear limites numéricos sequenciais: teste os valores usando elif. Eles formam um funil onde, se a condição anterior falhou, o limite implícito dela protege automaticamente a nova condição.

8. Tópicos abordados:
Variáveis, Operadores aritméticos, Condicionais encadeadas (elif).
