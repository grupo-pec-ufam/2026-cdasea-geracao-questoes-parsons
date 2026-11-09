**Título:** M4 Pesagem no Porto

**Enunciado:**

No porto de Manaus, um fiscal pesa pacotes, um por vez, e digita o peso de cada um em quilos. Quando o fiscal digita 0, a pesagem termina (o 0 não é o peso de nenhum pacote). O programa deve mostrar o peso total de todos os pacotes pesados.

Entrada:
1. pesos dos pacotes, um por vez, terminando com 0 (inteiro).

Saída:
1. peso total dos pacotes, em quilos (inteiro).

**Solução de referência:**

```python
peso = int(input("peso: "))
total = 0
while peso != 0:
    total = total + peso
    peso = int(input("peso: "))
print(total)
```

**Casos de teste públicos:**

Entrada:
```text
5
3
2
0
```
Saída:
```text
10
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
40
0
```
Saída:
```text
40
```

**Casos de teste privados:**

Entrada:
```text
7
8
9
10
0
```
Saída:
```text
34
```

Entrada:
```text
1
1
1
1
1
0
```
Saída:
```text
5
```

Entrada:
```text
250
750
0
```
Saída:
```text
1000
```
