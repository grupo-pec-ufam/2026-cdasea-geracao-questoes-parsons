### 1. Título: Acampamento Meio-Sangue
Somatória de pontuações de batalha e partição de casas míticas.

---

### 2. Enunciado:
Quíron está dividindo os novos semideuses em chalés. A pontuação de poder define o chalé pai. A pontuação final é calculada somando os pontos físicos e os pontos mágicos do guerreiro. Se o total atingir 150 ou mais, é do Chalé de Zeus. Se ficar entre 100 e menor que 150, Chalé de Atena. Abaixo de 100, Chalé de Hermes. Ao final, Quíron saúda todos com uma mensagem padronizada.

**ENTRADAS:**  
1. Dois valores inteiros:
   * Pontos físicos.
   * Pontos mágicos.

**SAÍDAS:**  
1. Se a pontuação total (físicos + mágicos) for maior ou igual a 150, imprima:  
   `Chale de Zeus.`  

2. Se a pontuação total for maior ou igual a 100 e menor que 150, imprima:  
   `Chale de Atena.`  

3. Se a pontuação total for menor que 100, imprima:  
   `Chale de Hermes.`  

4. Ao final, de modo independente, para todos os casos, imprima:  
   `Bem-vindo ao acampamento.`

Tópico: Condicionais encadeadas (if/elif/else).

---

### 3. Solução:
```python
fisico = int(input("Fisico: "))
magico = int(input("Magico: "))
total = fisico + magico
if total >= 150:
    print("Chale de Zeus.")
elif total >= 100:
    print("Chale de Atena.")
else:
    print("Chale de Hermes.")

print("Bem-vindo ao acampamento.")
```

---

### 4. Casos de teste:
**Públicos:**

Entrada:

```text
100
60
```

Saída:

```text
Chale de Zeus.
Bem-vindo ao acampamento.
```

Entrada:

```text
50
70
```

Saída:

```text
Chale de Atena.
Bem-vindo ao acampamento.
```

Entrada:

```text
40
30
```

Saída:

```text
Chale de Hermes.
Bem-vindo ao acampamento.
```

**Privados:**

Entrada:

```text
100
50
```

Saída:

```text
Chale de Zeus.
Bem-vindo ao acampamento.
```

Entrada:

```text
50
50
```

Saída:

```text
Chale de Atena.
Bem-vindo ao acampamento.
```

Entrada:

```text
50
49
```

Saída:

```text
Chale de Hermes.
Bem-vindo ao acampamento.
```
---

### 5. Distratores:
```python
elif total > 100:
# DISTRATOR do fragmento 'elif total >= 100:' | Concepção 2: erro de borda (> em vez de >=), enviando guerreiros nota 100 para o chalé inferior.

print("Bem-vindo ao acampamento.")
# DISTRATOR do fragmento 'print("Bem-vindo ao acampamento.")' | Concepção: erro de escopo de bloco (indentação falsa), atrelando a saudação estritamente ao else.
```
