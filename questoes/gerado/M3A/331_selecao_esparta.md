### 1. Título: Esparta - Seleção Militar
Avaliação de pré-requisito etário seguido de pontuação em testes físicos.

---

### 2. Enunciado:
Na antiga Esparta, apenas jovens que atingissem 20 anos ou mais podiam avançar no exército de combate. Desses que atingiam a idade, eles precisavam passar em exatamente 3 testes de sobrevivência para entrar na Tropa de Elite; caso contrário, iam para a infantaria comum.

Entradas: um número inteiro com a idade do jovem, seguido de um inteiro com a quantidade de testes aprovados.

Saída: Ainda em treinamento. se for menor de 20 anos; Tropa de Elite. se for maior ou igual a 20 e com 3 testes; Infantaria comum. se for maior ou igual a 20 mas não passou nos 3 testes.

Tópico: Condicionais aninhadas (if/if).

---

### 3. Solução:
```python
idade = int(input("Idade: "))
testes = int(input("Testes: "))
if idade >= 20:
    if testes == 3:
        print("Tropa de Elite.")
    else:
        print("Infantaria comum.")
else:
    print("Ainda em treinamento.")
```

---

### 4. Explicação:

Esta é uma questão de nível **Médio**. O aluno lida com o bloqueio de uma ramificação baseado no conceito maior-ou-igual.

A estrutura aninhada se dá pelo `if idade >= 20`. Quem é rejeitado (idade 19 ou menos) cai diretamente no `else` externo. Para os que passam pela barreira da idade, o `if` interno verifica a exatidão dos testes (`testes == 3`). Qualquer valor diferente aciona o `else` interno.

---

### 5. Casos de teste:

**Públicos:**

Entrada:

```text
21
3
```

Saída:

```text
Tropa de Elite.
```

Entrada:

```text
20
2
```

Saída:

```text
Infantaria comum.
```

Entrada:

```text
18
3
```

Saída:

```text
Ainda em treinamento.
```

**Privados:**

Entrada:

```text
20
3
```

Saída:

```text
Tropa de Elite.
```

Entrada:

```text
19
3
```

Saída:

```text
Ainda em treinamento.
```

Entrada:

```text
25
0
```

Saída:

```text
Infantaria comum.
```
---

### 6. Distratores:
```python
if idade > 20:    # DISTRATOR do fragmento 'if idade >= 20:' | Concepção 2: erro de borda (> no lugar de >=), barrando pessoas que têm exatamente 20 anos.
if testes = 3:    # DISTRATOR do fragmento 'if testes == 3:' | Concepção 1: atribuição (=) no lugar de igualdade (==).
```

---

### 7. Dicas de resolução:

Quando a regra fala "atingir 20 anos ou mais", o valor 20 está incluso na verificação. Use `>=`, unindo o sinal de maior ao sinal de igualdade, nesta exata ordem.

Para comparar um número exato de testes (exatamente 3), use a igualdade dupla `==`.

---
### 8. Tópicos abordados:
Variáveis, Operações de entrada e saída, Condicional composta (if/else), Escopo e Indentação de bloco.
