### 1. Título: Carga do Mjolnir

Verificação de energia acumulada para o ataque especial do Thor.

---

### 2. Enunciado:

Durante a Batalha de Nova York, Thor está canalizando os raios da tempestade para dentro do seu martelo, o Mjolnir. O ataque especial em área só pode ser desferido se a quantidade de energia acumulada for estritamente maior que 5000 unidades. Escreva um programa que leia o valor de energia canalizada e informe ao Deus do Trovão se ele já pode realizar o ataque.

Entrada: um número inteiro representando a quantidade de **energia** acumulada.

Saída: `Golpe liberado.` se a energia for maior que 5000; `Carregando.` se a energia for menor ou igual a 5000.

Tópico: Estrutura condicional composta (if/else).

---

### 3. Solução:

```python
energia = int(input("Energia: "))
if energia > 5000:
    print("Golpe liberado.")
else:
    print("Carregando.")
```

---

### 4. Explicação:

Esta é uma questão de nível **Fácil**. Ela exige uma carga cognitiva muito baixa, pois o aluno só precisa ler 
uma única variável e não há necessidade de estruturar nenhuma conta matemática (como somas ou divisões) antes de realizar a verificação lógica.

Primeiro, a função `input()` lê a digitação do usuário, e a função `int()` converte esse texto para número inteiro, armazenando na variável `energia`. A estrutura condicional `if` testa se esse número é estritamente maior que (`>`) 5000. Se for verdadeiro, a arma tem carga suficiente e o programa imprime a autorização do golpe. Caso a energia seja igual a 5000 ou inferior, a condição do `if` falha e o código desvia automaticamente para o bloco `else`, informando que ainda está carregando.

---

### 5. Casos de teste:

**Públicos:**
* **Entrada:** `8000` ➔ **Saída:** `Golpe liberado.` *(ramo if, energia muito acima do limite necessário)*
* **Entrada:** `3000` ➔ **Saída:** `Carregando.` *(ramo else, energia insuficiente)*
* **Entrada:** `5000` ➔ **Saída:** `Carregando.` *(ramo else, borda exata não permite o ataque)*

**Privados:**
* **Entrada:** `5001` ➔ **Saída:** `Golpe liberado.` *(ramo if, limite superior logo acima da borda)*
* **Entrada:** `4999` ➔ **Saída:** `Carregando.` *(ramo else, limite inferior logo abaixo da borda)*
* **Entrada:** `0` ➔ **Saída:** `Carregando.` *(ramo else, nenhuma energia canalizada)*

---

### 6. Distratores:
```python
if energia >= 5000:
# DISTRATOR do fragmento 'if energia > 5000:' | Concepção 1: erro de borda (>= no lugar de >), liberando o golpe precocemente quando a energia está exatamente em 5000.
```

---

### 7. Dicas de resolução:
Lembre-se de usar a função `int()` para converter a entrada do usuário. Mjolnir acumula cargas inteiras e as comparações matemáticas só funcionam com números, não com textos.

Preste muita atenção ao texto "estritamente maior que". Isso significa que o valor de 5000 não é suficiente para o ataque, o que obriga o uso do operador matemático `>`, sem o sinal de igualdade.

---

### 8. Tópicos abordados:
Variáveis, Condicional composta (if/else), Operadores relacionais, Conversão de tipos (int), Operações de entrada e saída.
