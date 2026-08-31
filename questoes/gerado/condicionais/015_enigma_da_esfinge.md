## 1. Título: Enigma da Esfinge

## teste teste teste de integração 

## 2. Enunciado:
A Esfinge propõe um enigma a Cleópatra: ela deve adivinhar um número secreto entre 1 e 10. O número secreto é 7. Escreva um programa que leia o palpite de Cleópatra e informe se ela acertou, se o palpite foi muito alto ou muito baixo.

**Entrada:** um numero inteiro (1 a 10).

**Saída:** Acertou se palpite igual a 7; Muito alto se palpite > 7; Muito baixo se palpite < 7.

**Tópico:** Condicional encadeada com if/elif/else.


## 3. Solução:

```python
palpite = int(input("Palpite: "))
if palpite == 7:
    print("Acertou")
elif palpite > 7:
    print("Muito alto")
else:
    print("Muito baixo")
```


## 5. Casos de teste:
### Públicos:

Entrada: 7 -> Saída: Acertou (ramo if)

Entrada: 8 -> Saída: Muito alto (ramo elif, borda >7)

Entrada: 6 -> Saída: Muito baixo (ramo else, borda <7)

### Privados:

Entrada: 10 -> Saída: Muito alto (limite superior)

Entrada: 1 -> Saída: Muito baixo (limite inferior)

Entrada: 0 -> Saída: Muito baixo (fora do intervalo, mas tratado)

## 6. Distratores:

```python
if palpite = 7:                # DISTRATOR do fragmento "if palpite == 7:" | Concepção 1: atribuição (=) no lugar de ==
elif palpite >= 7:             # DISTRATOR do fragmento "elif palpite > 7:" | Concepção 2: erro de borda (>= no lugar de >)
```
## 7. Dicas de resolução:

Use `==` para comparar igualdade.

elif permite testar outra condição caso a anterior seja falsa.

## 8. Tópicos abordados: 
Condicional encadeada (`if/elif/else`), Operadores relacionais, Conversão de tipos (int).

