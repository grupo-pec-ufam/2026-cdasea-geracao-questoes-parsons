### 1. Título: Enigma da Esfinge

teste teste teste de integração

---

### 2. Enunciado:

A Esfinge propõe um enigma a Cleópatra: ela deve adivinhar um número secreto entre 1 e 10. O número secreto é 7. Escreva um programa que leia o palpite de Cleópatra e informe se ela acertou, se o palpite foi muito alto ou muito baixo.

Entrada: um numero inteiro (1 a 10).

Saída: Acertou se palpite igual a 7; Muito alto se palpite > 7; Muito baixo se palpite < 7.

Tópico: Condicional encadeada com if/elif/else.

---

### 3. Solução:

```python
palpite = int(input("Palpite: "))
if palpite == 7:
    print("Acertou")
elif palpite > 7:
    print("Muito alto")
else:
    print("Muito baixo")
