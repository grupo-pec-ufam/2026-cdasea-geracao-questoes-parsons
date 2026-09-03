# 1. Título
Jogatina na Villa

## 2. Enunciado
Astolfo quer alugar um jogo de tabuleiro na Villa Ludos da universidade. Ele precisa verificar se as moedas do seu bolso pagam o custo.

Escreva um programa que leia as seguintes entradas:
* *Dinheiro no bolso* (em reais)
* *Custo do aluguel* (em reais)

### Condições de saída:
* Exiba: A decisão do caixa
* Se o dinheiro for maior ou igual ao custo, exiba: Diversao garantida
* Caso contrário, calcule a dívida usando a fórmula:  
  Divida = custo - dinheiro  
  E exiba: Faltam moedas

---

## 3. Casos de Teste Públicos

### Exemplo 1
* *Entradas:* 20.0 \n 15.0
* *Saídas:* Diversao garantida \n Volte sempre

### Exemplo 2
* *Entradas:* 10.0 \n 15.0
* *Saídas:* Faltam moedas \n Volte sempre

### Exemplo 3
* *Entradas:* 15.0 \n 15.0
* *Saídas:* Diversao garantida \n Volte sempre

---

## 4. Casos de Teste Privados

### Caso 1
* *Entradas:* 0.0 \n 10.0
* *Saídas:* Faltam moedas \n Volte sempre

### Caso 2
* *Entradas:* 100.0 \n 50.0
* *Saídas:* Diversao garantida \n Volte sempre

---

## 5. Gabarito (Código Python)

python
grana = float(input("Dinheiro (R$): "))
custo = float(input("Custo (R$): "))

if grana >= custo:
    print("Diversao garantida")
else:
    divida = custo - grana
    print("Faltam moedas")

print("Volte sempre")


### O que foi corrigido para o preview funcionar?
* *Criação de Títulos:* Uso de # e ## para separar seções (Título, Enunciado, Testes).
* *Quebras de Linha:* Separar o texto corrido em parágrafos e listas com marcadores (*).
* *Bloco de Código:* Uso de três crases (```python) para que o código Python fique colorido e endentado corretamente no preview.
