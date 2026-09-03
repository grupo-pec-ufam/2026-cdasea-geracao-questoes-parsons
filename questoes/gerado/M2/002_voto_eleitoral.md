## 1. Título: Voto eleitoral

## 2. Enunciado:
O sistema de um tribunal eleitoral precisa informar aos cidadãos de forma precisa qual é a sua
situação quanto à obrigatoriedade do voto, baseando-se unicamente em suas idades.
Leia a idade do cidadão. Se a idade estiver entre 18 e 70 anos (incluindo ambos), informe que o
voto é obrigatório. Caso contrário, indique que é facultativo.

**Entrada:** Um número inteiro.

**Saída:** Saída: Imprima Voto obrigatorio se a condição for verdadeira e Voto facultativo caso
não seja.

**Tópico:** Condição composta com and/or/not e if/else

## 3. Solução:

```python
idade = int(input("Idade: "))
if idade >= 18 and idade <= 70:
print("Voto obrigatorio")
else:
print("Voto facultativo")
```
## 5. Casos de teste:
## Públicos

Caso 1: Entrada: 25 | Saída: Voto obrigatorio
Caso 2: Entrada: 18 | Saída: Voto obrigatorio
Caso 3: Entrada: 17 | Saída: Voto facultativo

## Privados:

Caso 1: Entrada: 10.5 | Saída: Frete padrao (Cobre ramo else)
Caso 2: Entrada: 150.1 | Saída: Frete gratuito (Cobre ramo if)
Caso 3: Entrada: 0.0 | Saída: Frete padrao (Cobre ramo else)

## 6. Fragmentos de Parsons:
```python
if valor >= 150.00:
valor = float(input("Valor (R$): "))
else:
print("Frete padrao")
print("Frete gratuito")
Distratores
else valor < 150.00: (Relativo à linha 4 | Concepção: else tratado como se aceitasse
condição)
if valor > 150.00: (Relativo à linha 2 | Concepção: Operador de comparação com erro
de borda)
```
## 7. Dicas de resolução
Estruturas if/else são usadas para decisões mutuamente exclusivas. O else funciona como o
"caso contrário" e nunca recebe uma verificação matemática própria, devendo possuir apenas os :.