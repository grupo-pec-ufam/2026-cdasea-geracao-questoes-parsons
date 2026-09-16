### 1. Título: Conta da Sinuca

Cálculo de custo com desconto condicional no centro acadêmico.

---

### 2. Enunciado:

Pitágoras e seus amigos estão jogando sinuca no Amazon Bownling do shopping Studio 5. O custo inicial do jogo é calculado multiplicando o tempo jogado pela tarifa cobrada por minuto. Para incentivar o lazer, se o valor total ultrapassar 30 reais, o grupo ganha um desconto fixo de 5 reais na conta. Escreva um programa que calcule a conta final e informe se o desconto foi aplicado. A fórmula do custo inicial é:

$$Custo = tempo \times tarifa$$

Entradas: 
1. Um número inteiro representando o **tempo** jogado (em minutos)[cite: 1, 2].
2. Um número decimal representando a **tarifa** (em reais por minuto)[cite: 1, 2].

Saídas: 
1. `Promocao aplicada.` se o custo inicial for maior que 30.0; `Preco normal.` se o custo for menor ou igual a 30.0[cite: 1, 2]. 
2. O valor final a ser pago, obrigatoriamente arredondado para 2 casas decimais[cite: 1, 2].

Tópico: Estrutura condicional composta (if/else) com atualização de variável.

---

### 3. Solução:

```python
tempo = int(input("Tempo (min): "))
tarifa = float(input("Tarifa (R$): "))
custo = tempo * tarifa
if custo > 30.0:
    print("Promocao aplicada.")
    final = custo - 5.0
else:
    print("Preco normal.")
    final = custo
print(round(final, 2))

```

---

### 4. Explicação:
Esta questão é classificada como de nível médio porque exige que o aluno gerencie diferentes tipos de dados matemáticos (`int` para tempo e `float` para tarifa) 
e mantenha o controle do estado de uma variável ao longo do programa. Primeiro, as entradas são convertidas e multiplicadas para descobrir o `custo` base. 
A estrutura condicional `f` verifica se esse custo é estritamente maior que 30.0. Se for, além de imprimir a mensagem de promoção, o aluno precisa realizar 
um cálculo matemático dentro do bloco `if` (`final = custo - 5.0`). 
Se a condição for falsa, o fluxo vai para o `else`, onde o valor permanece intacto (`final = custo`). 
O último desafio é aplicar a função embutida `round()` fora da estrutura condicional, garantindo que, independentemente do caminho escolhido pelo `if/else`, 
o programa devolva um valor financeiro formatado corretamente com duas casas decimais no final.

---

### 5. Casos de teste:

**Públicos:**
* **Entrada:** `100` e `0.50` ➔ **Saída:** `Promocao aplicada.` e `45.0` *(ramo if, custo inicial 50.0 sofre redução de 5)*
* **Entrada:** `60` e `0.50` ➔ **Saída:** `Preco normal.` e `30.0` *(ramo else, custo inicial bate exatamente na borda de 30.0, sem desconto)*
* **Entrada:** `40` e `0.80` ➔ **Saída:** `Promocao aplicada.` e `27.0` *(ramo if, custo inicial 32.0 ganha desconto)*

**Privados:**
* **Entrada:** `61` e `0.50` ➔ **Saída:** `Promocao aplicada.` e `25.5` *(ramo if, valor ultrapassa a borda por muito pouco)*
* **Entrada:** `10` e `1.25` ➔ **Saída:** `Preco normal.` e `12.5` *(ramo else, valor baixo sem promoção)*
* **Entrada:** `0` e `2.00` ➔ **Saída:** `Preco normal.` e `0.0` *(ramo else, tempo zerado)*

---

### 6. Distratores:

```python
tarifa = int(input("Tarifa (R$): "))  
# DISTRATOR do fragmento 'tarifa = float(input(...))' | Concepção 1: conversão para o tipo errado, tratando moeda (que exige decimais) 
como número inteiro (causando ValueError).

if custo >= 30.0:                     
# DISTRATOR do fragmento 'if custo > 30.0:' | Concepção 2: erro de borda. Inclui incorretamente o valor 30 na regra de desconto, 
quando o enunciado diz "ultrapassar 30".
```

---

### 7. Dicas de resolução:
Leia atentamente as unidades exigidas: o tempo é um valor exato (inteiro), enquanto o dinheiro requer precisão decimal (float). 
Certifique-se de usar int() e float() corretamente.
Crie uma nova variável (como final) dentro de cada ramo do if/else para guardar o resultado, facilitando o uso da função round(variavel, 2) 
apenas uma única vez na última linha do programa.

---

### 8. Tópicos abordados:
Tipos de dados básicos, Variáveis, Operadores aritméticos, Condicional composta (if/else), Operações de entrada e saída.
