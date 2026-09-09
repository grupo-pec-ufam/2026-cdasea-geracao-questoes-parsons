### 1. Título: Painel de Vidro Triangular

Cálculo de área geométrica para definição de suporte estrutural.

---

### 2. Enunciado:

Cássio está projetando um painel de vidro triangular para o teto da estufa de botânica da universidade. 
Se a área da peça de vidro ultrapassar 15.0 metros quadrados, será obrigatória a instalação de um suporte 
de aço extra por questões de segurança. Escreva um programa que calcule a área geométrica e informe o 
tipo de estrutura necessária, exibindo ao final o valor arredondado com 2 casas decimais. 
A fórmula da área de um triângulo é:

$$Area = \frac{base \times altura}{2}$$

Entradas: 
1. Um número decimal representando a **base** do triângulo (em metros)[cite: 1, 2].
2. Um número decimal representando a **altura** do triângulo (em metros)[cite: 1, 2].

Saídas: 
1. `Suporte de aco.` se a área calculada for maior que 15.0; `Vidro simples.` se a área for menor ou igual a 15.0[cite: 1, 2]. 
2. O valor final da área, obrigatoriamente arredondado para 2 casas decimais[cite: 1, 2].

Tópico: Estrutura condicional composta (if/else) com cálculo geométrico e formatação.

---

### 3. Solução:

```python
base = float(input("Base (m): "))
altura = float(input("Altura (m): "))
area = (base * altura) / 2
if area > 15.0:
    print("Suporte de aco.")
else:
    print("Vidro simples.")
print(round(area, 2))

```

---

### 4. Explicação:

Esta questão é classificada como de nível médio pois exige que o aluno estruture uma fórmula geométrica aplicando a divisão corretamente antes de iniciar a tomada de decisão. 
Primeiro, as dimensões são lidas e convertidas para `float()`. A `area` é calculada multiplicando a base pela altura e dividindo tudo por 2 (usando o operador de divisão decimal `/`). 
A estrutura condicional `if` avalia se essa área supera a barreira de 15.0 usando o operador estritamente maior (`>`). Se for verdadeiro, o sistema exige o suporte de aço. Caso contrário, o fluxo é direcionado ao `else`, que aprova o vidro simples. Na última linha, o comando independente `print(round(area, 2))` garante a exibição padronizada da metragem quadrada para qualquer um dos casos.

---

### 5. Casos de teste:

**Públicos:**
* **Entrada:** `6.0` e `6.0` ➔ **Saída:** `Suporte de aco.` e `18.0` *(ramo if, área de 18.0 supera o limite exigido)*
* **Entrada:** `5.0` e `4.0` ➔ **Saída:** `Vidro simples.` e `10.0` *(ramo else, área geométrica segura)*
* **Entrada:** `6.0` e `5.0` ➔ **Saída:** `Vidro simples.` e `15.0` *(ramo else, borda exata de 15.0 não exige aço)*

**Privados:**
* **Entrada:** `7.5` e `4.1` ➔ **Saída:** `Suporte de aco.` e `15.38` *(ramo if, ultrapassa a borda e exige arredondamento de casas decimais)*
* **Entrada:** `4.0` e `7.4` ➔ **Saída:** `Vidro simples.` e `14.8` *(ramo else, área muito próxima ao limite superior)*
* **Entrada:** `0.0` e `10.0` ➔ **Saída:** `Vidro simples.` e `0.0` *(ramo else, base zerada, validando tratamento matemático do zero)*

---

### 6. Distratores:
```python
area = (base * altura) // 2    
# DISTRATOR do fragmento 'area = (base * altura) / 2' | Concepção 1: confusão entre operadores de divisão, 
utilizando a divisão inteira (//) em vez da divisão decimal (/), o que trunca resultados como 15.5 para 15.0.
```

---

### 7. Dicas de resolução:

No cálculo da fórmula matemática, certifique-se de usar a barra simples (`/`) para realizar uma divisão precisa com decimais. 
A barra dupla (`//`) serve apenas para descobrir o quociente inteiro de uma divisão.

A função `round(area, 2)` deve ficar posicionada totalmente à esquerda (sem recuo/indentação), garantindo que ela seja executada 
de forma autônoma após a conclusão do bloco `if/else`.

---

### 8. Tópicos abordados:
Variáveis, Tipos de dados básicos, Operadores aritméticos, Expressões matemáticas, Condicional composta (if/else), 
Operadores relacionais, Funções embutidas (round).
