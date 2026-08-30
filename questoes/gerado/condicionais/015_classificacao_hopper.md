1. Título: Ponderacao Hypatia
2. Enunciado:Hypatia de Alexandria está registrando a luminosidade de corpos celestes observados pelo astrolábio.Escreva um programa que receba a luminosidade observada e calcule a pontuação ajustada do astro. Se a luminosidade for maior ou igual a 50.0, adicione um fator de ajuste de 12.5; caso contrário, adicione um fator de 5.0.A fórmula da pontuação é:$$P = L + F$$onde $L$ é a luminosidade observada e $F$ é o fator de ajuste.Entrada: a luminosidade observada (número decimal).Saída 1: se a luminosidade for maior ou igual a 50.0, imprima Luminosidade Alta; caso contrário, imprima Luminosidade Baixa.Saída 2: a pontuação final arredondada em 2 casas decimais.Tópico: Condicional composta e arredondamento com round.
3. Solução de referência:

```

```
python 
Pythonluminosidade = float(input("Luminosidade: "))
if luminosidade >= 50.0:
    fator = 12.5
    print("Luminosidade Alta")
else:
    fator = 5.0
    print("Luminosidade Baixa")
pontuacao = round(luminosidade + fator, 2)
print(pontuacao)

'''

4. Explicação passo a passo:A primeira linha converte a leitura de entrada para float. Se a luminosidade for maior ou igual a 50.0, o programa define o fator como 12.5 e exibe a mensagem de alta luminosidade. Caso contrário, no ramo else:, define o fator como 5.0 e exibe a mensagem de baixa luminosidade. Após a estrutura condicional, a única linha de cálculo obtém a pontuação somando a luminosidade ao fator e arredondando para 2 casas decimais, exibindo o resultado final.
5. Casos de teste:

Públicos:

Entrada: 60.0 -> Saída: Luminosidade Alta / 72.5 (ramo if)

Entrada: 25.0 -> Saída: Luminosidade Baixa / 30.0 (ramo else)

Entrada: 50.0 -> Saída: Luminosidade Alta / 62.5 (ramo if, borda 50.0)

Privados:

Entrada: 49.9 -> Saída: Luminosidade Baixa / 54.9 (ramo else, borda 49.9)

Entrada: 100.25 -> Saída: Luminosidade Alta / 112.75 (ramo if, decimal)

Entrada: 0.0 -> Saída: Luminosidade Baixa / 5.0 (ramo else, valor zero)

6. Distratores (marcados):

Python
    print(round(luminosidade + fator, 2))  # DISTRATOR do fragmento "pontuacao = round(luminosidade + fator, 2)" | Concepção 10: efeito colateral no ramo errado (imprimir dentro do ramo quando o cálculo deveria ocorrer depois da condição)
else luminosidade < 50.0:                  # DISTRATOR do fragmento "else:" | Concepção 4: else tratado como se aceitasse condição
7. Dicas de resolução:
O bloco else serve para capturar qualquer caso que não satisfez o if e não recebe uma condição. Cálculos que dependem de variáveis definidas nos ramos devem ser feitos após o condicional ou com os valores devidamente atribuídos.