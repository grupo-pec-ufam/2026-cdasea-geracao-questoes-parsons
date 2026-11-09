**Título:** M4 Ingressos de Parintins

**Enunciado:**

Durante o Festival de Parintins, o caixa registra o valor, em reais, de cada ingresso vendido, um por vez. Quando o caixa digita 0, o registro termina (o 0 não é o valor de nenhum ingresso). O programa deve mostrar o total arrecadado com todos os ingressos registrados.

Entrada:
1. valores dos ingressos vendidos, um por vez, terminando com 0 (inteiro).

Saída:
1. total arrecadado, em reais (inteiro).

**Solução de referência:**

```python
venda = int(input("venda: "))
total = 0
while venda != 0:
    total = total + venda
    venda = int(input("venda: "))
print(total)
```

**Casos de teste públicos:**

Entrada:
```text
120
80
50
0
```
Saída:
```text
250
```

Entrada:
```text
0
```
Saída:
```text
0
```

Entrada:
```text
300
0
```
Saída:
```text
300
```

**Casos de teste privados:**

Entrada:
```text
15
25
35
45
0
```
Saída:
```text
120
```

Entrada:
```text
100
100
100
0
```
Saída:
```text
300
```

Entrada:
```text
1000
0
```
Saída:
```text
1000
```
