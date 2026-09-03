Olivia está preparando um prato e o sistema da cozinha inteligente precisa verificar se o tempero principal inserido foi a páprica, para garantir o sabor ideal da receita. 
Escreva um programa que:
Leia o nome do tempero. Compare a palavra inserida e mostre a mensagem correspondente. 
ENTRADAS: 
Nome do tempero (texto). 
SAÍDAS: 
Se o tempero for igual a "paprica", imprima: Receita salva. Se o tempero for diferente, imprima: Falta sabor.
Blocos Corretos (Para ordenação): 
tempero = input("Tempero: ") 
if tempero == "paprica": 
    print("Receita salva.") 
else: 
    print("Falta sabor.") 
Distrator: if tempero = "paprica": (Misconception alvo: Atribuição no lugar de igualdade — uso de = em vez de == na condição).
