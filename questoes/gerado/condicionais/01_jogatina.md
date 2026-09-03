1.Titulo-Jogatina na Vila
2.Enunciado
Astolfo quer alugar um jogo de tabuleiro na Vila Ludos da universidade. Ele precisa verificar se as moedas do seu bolso pagam o custo.Escreva um programa que leia as seguintes entradas:Dinheiro no bolso (em reais)Custo do aluguel (em reais)Como saída, exiba:A decisão do caixa:Se o dinheiro for maior ou igual ao custo, exiba: Diversao garantidaCaso contrário, calcule a dívida usando a fórmula$$Divida = custo - dinheiro$$e exiba: Faltam moedasO agradecimento padrão, exibindo sempre: Volte sempreCasos de Teste Públicos:Exemplo 1:Entradas: 20.0 \n 15.0Saídas: Diversao garantida \n Volte sempreExemplo 2:Entradas: 10.0 \n 15.0Saídas: Faltam moedas \n Volte sempreExemplo 3:Entradas: 15.0 \n 15.0Saídas: Diversao garantida \n Volte sempreCasos de Teste Privados:Caso 1:Entradas: 0.0 \n 10.0Saídas: Faltam moedas \n Volte sempreCaso 2:Entradas: 100.0 \n 50.0Saídas: Diversao garantida \n Volte sempreCaso 3:Entradas: 9.99 \n 10.0Saídas: Faltam moedas \n Volte sempreGabarito (Código Python):Pythongrana = float(input("Dinheiro (R$): "))
custo = float(input("Custo (R$): "))
2-Codigo
if grana >= custo:
    print("Diversao garantida")
else:
    divida = custo - grana
    print("Faltam moedas")
print("Volte sempre")
