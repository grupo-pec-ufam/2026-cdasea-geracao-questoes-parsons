### 1. Título: Hogwarts - Chapéu Seletor
Subdivisões de classificação baseadas nos pontos das virtudes dos alunos.

---

### 2. Enunciado:
O Chapéu Seletor está indeciso. Ao analisar as mentes, ele verifica primeiro se o aluno tem muita coragem (maior ou igual a 80 pontos). Se tiver, ele confere se o aluno também tem bastante lealdade (maior ou igual a 90 pontos).

Entradas: um inteiro com os pontos de coragem, seguido de um inteiro com os pontos de lealdade.

Saída: Sonserina ou Corvinal. se a coragem for menor que 80; Gryffindor verdadeiro. se a coragem for adequada e a lealdade maior ou igual a 90; Gryffindor comum. se a coragem for adequada mas a lealdade for menor que 90.

Tópico: Condicionais aninhadas (if/if).

---

### 3. Solução:
```python
coragem = int(input("Coragem: "))
lealdade = int(input("Lealdade: "))
if coragem >= 80:
    if lealdade >= 90:
        print("Gryffindor verdadeiro.")
    else:
        print("Gryffindor comum.")
else:
    print("Sonserina ou Corvinal.")
```

---

### 4. Explicação:
Esta é uma questão de nível Médio. Requer cruzamento lógico de duas margens numéricas usando ramificações separadas e independentes.

O if mais externo faz o recorte inicial exigindo coragem >= 80. Todos os alunos abaixo dessa nota sofrem o corte e caem no else externo. Dentro da ramificação verdadeira (os que passaram em coragem), há uma subdivisão extra: o if interno verifica as notas de lealdade (>= 90) para dar o destaque supremo, e o resto (ainda no ramo verdadeiro de coragem) recebe classificação comum.

---

### 5. Casos de teste:
Públicos:

Entradas: 85 e 95 ➔ Saída: Gryffindor verdadeiro. (ramo if externo, if interno, ambos confortáveis)

Entradas: 80 e 80 ➔ Saída: Gryffindor comum. (ramo if externo, else interno)

Entradas: 60 e 99 ➔ Saída: Sonserina ou Corvinal. (ramo else externo, lealdade alta ignorada)

Privados:

Entradas: 79 e 100 ➔ Saída: Sonserina ou Corvinal. (ramo else externo, borda inferior da coragem)

Entradas: 80 e 90 ➔ Saída: Gryffindor verdadeiro. (ramo if externo, if interno, na borda exata para ambos)

Entradas: 100 e 89 ➔ Saída: Gryffindor comum. (ramo if externo, else interno, borda inferior da lealdade)

---

### 6. Distratores:
```python
if coragem > 80:    # DISTRATOR do fragmento 'if coragem >= 80:' | Concepção 2: erro de borda (> no lugar de >=), deixando a nota 80 exata de fora.
if lealdade > 90:   # DISTRATOR do fragmento 'if lealdade >= 90:' | Concepção 2: erro de borda (> no lugar de >=).
```

---


### 7. Tópicos abordados:
Variáveis, Operações de entrada e saída, Condicional composta (if/else), Escopo e Indentação de bloco.
