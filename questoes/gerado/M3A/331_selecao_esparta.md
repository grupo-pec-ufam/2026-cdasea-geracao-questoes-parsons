### 1. Título: Esparta - Seleção Militar
Avaliação de pré-requisito etário seguido de pontuação em testes físicos.

---

**ENTRADAS:**
1. Idade do jovem (em anos), valor inteiro.
2. Quantidade de testes aprovados (em contagem de testes), valor inteiro.

**SAÍDA:**
1. Status da patente militar, sem unidade, string. O programa deve imprimir:
   * `Ainda em treinamento.` se o jovem for menor de 20 anos.
   * `Tropa de Elite.` se o jovem tiver 20 anos ou mais e passou em exatamente 3 testes.
   * `Infantaria comum.` se o jovem tiver 20 anos ou mais, mas não passou nos 3 testes.

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

### 4. Casos de teste:

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

### 5. Distratores:
```python
if idade > 20:    # DISTRATOR do fragmento 'if idade >= 20:' | Concepção 2: erro de borda (> no lugar de >=), barrando pessoas que têm exatamente 20 anos.
if testes = 3:    # DISTRATOR do fragmento 'if testes == 3:' | Concepção 1: atribuição (=) no lugar de igualdade (==).
```
