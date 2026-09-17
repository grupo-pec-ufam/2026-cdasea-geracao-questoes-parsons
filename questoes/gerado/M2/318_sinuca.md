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

### 4. Casos de teste:

**Públicos:**

Entrada:

```text
100
0.50
```

Saída:

```text
Promocao aplicada.
45.0
```

Entrada:

```text
60
0.50
```

Saída:

```text
Preco normal.
30.0
```

Entrada:

```text
40
0.80
```

Saída:

```text
Promocao aplicada.
27.0
```

**Privados:**

Entrada:

```text
61
0.50
```

Saída:

```text
Promocao aplicada.
25.5
```

Entrada:

```text
10
1.25
```

Saída:

```text
Preco normal.
12.5
```

Entrada:

```text
0
2.00
```

Saída:

```text
Preco normal.
0.0
```

---

### 5. Distratores:

```python
tarifa = int(input("Tarifa (R$): "))  
# DISTRATOR do fragmento 'tarifa = float(input(...))' | Concepção 1: conversão para o tipo errado, tratando moeda (que exige decimais) como número inteiro (causando ValueError).

if custo >= 30.0:                     
# DISTRATOR do fragmento 'if custo > 30.0:' | Concepção 2: erro de borda. Inclui incorretamente o valor 30 na regra de desconto, quando o enunciado diz "ultrapassar 30".
```
