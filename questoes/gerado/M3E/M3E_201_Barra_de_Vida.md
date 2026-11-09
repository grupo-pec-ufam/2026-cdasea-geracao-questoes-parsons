**Título:** M3E Barra de Vida

**Enunciado:**

Em um jogo de luta, a barra de vida do lutador é mostrada em porcentagem, de 0 a 100. O programa deve informar SAUDAVEL se a vida for 70 ou mais, ATENCAO se for 30 ou mais e menor que 70, e CRITICO se for menor que 30.

Entrada:
1. vida do lutador, em porcentagem (inteiro).

Saída:
1. situação do lutador.

**Solução de referência:**

```python
vida = int(input("vida: "))
if vida >= 70:
    print("SAUDAVEL")
elif vida >= 30:
    print("ATENCAO")
else:
    print("CRITICO")
```

**Casos de teste públicos:**

Entrada:
```text
85
```
Saída:
```text
SAUDAVEL
```

Entrada:
```text
69
```
Saída:
```text
ATENCAO
```

Entrada:
```text
29
```
Saída:
```text
CRITICO
```

**Casos de teste privados:**

Entrada:
```text
70
```
Saída:
```text
SAUDAVEL
```

Entrada:
```text
30
```
Saída:
```text
ATENCAO
```

Entrada:
```text
0
```
Saída:
```text
CRITICO
```
