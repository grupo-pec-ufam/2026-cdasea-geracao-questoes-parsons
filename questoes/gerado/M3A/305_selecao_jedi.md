### 1. Título: Ordem Jedi - Seleção
Avaliação de midichlorians e estado emocional para patente Jedi.

---

### 2. Enunciado:
No universo de Star Wars, o Conselho Jedi avalia sensitivos à Força. Primeiro, analisa se o jovem possui mais de 10000 midichlorians para ser treinado. Se possuir, o conselho verifica o controle emocional do indivíduo para decidir sua patente inicial.

Entradas: um número inteiro representando os midichlorians, seguido de um número inteiro indicando o controle emocional (1 para calmo, 2 para instável).

Saída: Treinamento negado. se não tiver midichlorians suficientes; Novo Padawan. se tiver e for calmo (1); Risco de lado sombrio. se tiver e for instável (2).

Tópico: Condicionais aninhadas (if/if).

---

### 3. Solução:
```python
midi = int(input("Midichlorians: "))
controle = int(input("Controle: "))
if midi > 10000:
    if controle == 1:
        print("Novo Padawan.")
    else:
        print("Risco de lado sombrio.")
else:
    print("Treinamento negado.")
```
---

### 4. Explicação:
Esta é uma questão de nível Médio. Ela introduz a lógica de interrupção precoce: a segunda checagem só deve ocorrer se a primeira for aprovada.

O bloco if externo avalia a quantidade estritamente maior que 10000. O else alinhado a ele lida com a rejeição imediata. Apenas os aprovados adentram o escopo interno, onde o if controle == 1 classifica como Padawan, e seu respectivo else interno trata o estado instável.

---

### 5. Casos de teste:
Públicos:

Entradas: 12000 e 1 ➔ Saída: Novo Padawan. (ramo if externo, if interno)

Entradas: 15000 e 2 ➔ Saída: Risco de lado sombrio. (ramo if externo, else interno)

Entradas: 9000 e 1 ➔ Saída: Treinamento negado. (ramo else externo)

Privados:

Entradas: 10000 e 1 ➔ Saída: Treinamento negado. (ramo else externo, borda exata)

Entradas: 10001 e 2 ➔ Saída: Risco de lado sombrio. (ramo if externo, else interno, borda superior)

Entradas: 500 e 2 ➔ Saída: Treinamento negado. (ramo else externo)

### 6. Distratores:
```python
if midi > 10000        # DISTRATOR do fragmento 'if midi > 10000:' | Concepção 3: Ausência dos dois-pontos após a condição.
else controle == 2:    # DISTRATOR do fragmento 'else:' (interno) | Concepção 4: else tratado como se aceitasse condição.
```
---

### 7. Dicas de resolução:
A restrição "mais de 10000" exclui o próprio número 10000 da condição verdadeira. Utilize o operador > em vez de >=.

Sempre coloque dois-pontos : no final das linhas que contém if ou else. O comando else nunca aceita uma verificação lógica ao lado dele.

---

### 8. Tópicos abordados:
Variáveis, Condicional composta (if/else), Operadores relacionais, Escopo e Indentação de bloco.
