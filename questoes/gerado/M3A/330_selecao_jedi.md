### 1. Título: Ordem Jedi - Seleção
Avaliação de midichlorians e estado emocional para patente Jedi.

---

### 2. Enunciado:
Durante a Batalha de Nova York, Thor está canalizando os raios da tempestade para dentro do seu martelo, o Mjolnir. O ataque especial em área só pode ser desferido se a quantidade de energia acumulada for estritamente maior que 5000 unidades. 

Escreva um programa que:
* Leia a quantidade de energia acumulada.
* Analise o valor lido e mostre a mensagem correspondente à liberação ou espera do golpe especial.

**ENTRADAS:**   
   
   Energia acumulada:
   1. Grandeza: Energia
   2. Unidade de medida: Unidades
   3. Tipo: Inteiro

**SAÍDAS:**  
1. Se a energia acumulada for estritamente maior que 5000, imprima:
* `Golpe liberado.`  
2. Caso contrário (se a energia for menor ou igual a 5000), imprima:
* `Carregando.`

Lista detalhada de saídas:
1. Status do golpe:
   * Grandeza: Mensagem de estado
   * Unidade de medida: N/A
   * Tipo: String
   * Número de casas decimais: N/A

Tópico: Estrutura condicional composta (if/else).

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
