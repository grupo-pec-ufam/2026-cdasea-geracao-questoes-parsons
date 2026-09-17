### 1. Título: Velocidade do Som
Formatação de condicionais alocadas em tramas aerodinâmicas da ciência.

---

### 2. Enunciado:
Engenheiros de aviônica avaliam aeronaves pela distância percorrida e tempo efetuado de voo. A velocidade do som na atmosfera terrestre é padronizada rigorosamente como 343.0 metros por segundo.

Entradas: um número decimal com a distância em metros e um decimal com a medição do tempo marcado em segundos.

Saída: se a velocidade da aeronave for estritamente maior que 343.0, imprima Voo supersonico.. Se bater a exatidão cravada do limite de 343.0, imprima Estouro da barreira.. Se rodar abaixo da marca limite, imprima Voo subsonico..

Tópico: Condicionais encadeadas (if/elif/else).

---

### 3. Solução:
```python
dist = float(input("Distancia (m): "))
tempo = float(input("Tempo (s): "))
vel = dist / tempo
if vel > 343.0:
    print("Voo supersonico.")
elif vel == 343.0:
    print("Estouro da barreira.")
else:
    print("Voo subsonico.")
```

---

### 4. Casos de teste:
**Públicos:**

Entrada:

```text
400.0
1.0
```
Saída:

```text
Voo supersonico.
```
Entrada:

```text
343.0
1.0
```
Saída:

```text
Estouro da barreira.
```
Entrada:

```text
100.0
2.0
```
Saída:

```text
Voo subsonico.
```

**Privados:**

Entrada:

```text
686.0
2.0
```
Saída:

```text
Estouro da barreira.
```
Entrada:

```text
343.1
1.0
```
Saída:

```text
Voo supersonico.
```
Entrada:

```text
342.9
1.0
```
Saída:

```text
Voo subsonico.
```

---

5. Distratores:
```python
vel = dist // tempo    # DISTRATOR do fragmento 'vel = dist / tempo' | Concepção 8: Confusão entre os sinais de operadores matemáticos, aplicando a divisão inteira (//) em um voo de decimais sensíveis.
elif vel = 343.0:      # DISTRATOR do fragmento 'elif vel == 343.0:' | Concepção 1: Atribuição (=) em vez de comparador de igualdade (==).
```
