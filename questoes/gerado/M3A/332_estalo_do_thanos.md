### 1. Título: Vingadores - O Estalo
Condições críticas para o uso da joias do infinito.

---

### 2. Enunciado:
Thanos está tentando realizar o estalo. Para que a manobra cósmica funcione, ele precisa primeiro estar vestindo a Manopla do Infinito. Além disso, ele precisa ter encaixado exatamente 6 joias nela. Escreva o painel de verificação do ataque.

Entradas: um número inteiro informando se veste a manopla (1-Sim, 0-Não), seguido de um número inteiro informando a quantidade de joias coletadas.

Saída: Corpo destrocado pela energia. se não tiver a manopla; O estalo aconteceu. se tiver a manopla e as 6 joias; Poder incompleto. se tiver a manopla, mas um número diferente de 6 joias.

Tópico: Condicionais aninhadas (if/if).

---

### 3. Solução:
```python
manopla = int(input("Manopla (1/0): "))
joias = int(input("Joias: "))
if manopla == 1:
    if joias == 6:
        print("O estalo aconteceu.")
    else:
        print("Poder incompleto.")
else:
    print("Corpo destrocado pela energia.")
```
---

### 4. Casos de teste:
Públicos:

Entradas: 1 e 6 ➔ Saída: O estalo aconteceu. (ramo if externo, if interno)

Entradas: 1 e 4 ➔ Saída: Poder incompleto. (ramo if externo, else interno, poucas joias)

Entradas: 0 e 6 ➔ Saída: Corpo destrocado pela energia. (ramo else externo)

Privados:

Entradas: 1 e 5 ➔ Saída: Poder incompleto. (ramo if externo, else interno, uma a menos)

Entradas: 0 e 1 ➔ Saída: Corpo destrocado pela energia. (ramo else externo)

Entradas: 1 e 0 ➔ Saída: Poder incompleto. (ramo if externo, else interno)

---

### 5. Distratores:
```python
else joias != 6:    # DISTRATOR do fragmento 'else:' (interno) | Concepção 4: else tratado como se aceitasse receber uma condição lógica após a palavra-chave.
if joias == 6       # DISTRATOR do fragmento 'if joias == 6:' | Concepção 3: Ausência dos dois-pontos delimitadores.
```
