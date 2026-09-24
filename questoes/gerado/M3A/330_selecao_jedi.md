### 1. Título: Ordem Jedi - Seleção
Avaliação de midichlorians e estado emocional para patente Jedi.

---

### 2. Enunciado:
No universo de Star Wars, o Conselho Jedi avalia sensitivos à Força. Primeiro, analisa se o jovem possui mais de 10000 midichlorians para ser treinado. Se possuir, o conselho verifica o controle emocional do indivíduo para decidir sua patente inicial.

**ENTRADAS:**  
1. Dois valores inteiros:
Quantidade de midichlorians.
Controle emocional (1 para calmo, 2 para instável).

**SAÍDAS:**  
1. Exibir "Novo Padawan." se a quantidade de midichlorians for maior que 10000 e o controle emocional for 1 (calmo).
2. Exibir "Risco de lado sombrio." se a quantidade de midichlorians for maior que 10000 e o controle emocional for 2 (instável).
3. Exibir "Treinamento negado." caso a quantidade de midichlorians seja menor ou igual a 10000.

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

### 4. Casos de teste:

**Públicos:**

Entrada:

```text
12000
1
```

Saída:

```text
Novo Padawan.
```

Entrada:

```text
15000
2
```

Saída:

```text
Risco de lado sombrio.
```

Entrada:

```text
9000
1
````

Saída:

```text
Treinamento negado.
```

**Privados:**

Entrada:

```text
10000
1
```

Saída:

```text
Treinamento negado.
```

Entrada:

```text
10001
2
```

Saída:

```text
Risco de lado sombrio.
```

Entrada:

```text
500
2
```

Saída:
```text
Treinamento negado.
```

---

### 5. Distratores:
```python
if midi > 10000        # DISTRATOR do fragmento 'if midi > 10000:' | Concepção 3: Ausência dos dois-pontos após a condição.
else controle == 2:    # DISTRATOR do fragmento 'else:' (interno) | Concepção 4: else tratado como se aceitasse condição.
```
