**Título:** M2 Poder de Luta

**Enunciado:**

Em uma luta de Dragon Ball, o scanner mede o nível de poder de dois guerreiros. O programa deve mostrar o maior dos dois níveis de poder. Se os dois níveis forem iguais, deve mostrar esse valor.

Entrada:
1. nível de poder do primeiro guerreiro (inteiro).
2. nível de poder do segundo guerreiro (inteiro).

Saída:
1. maior nível de poder entre os dois (inteiro).

**Solução de referência:**

```python
poder1 = int(input("poder 1: "))
poder2 = int(input("poder 2: "))
if poder1 > poder2:
    print(poder1)
else:
    print(poder2)
```

**Casos de teste públicos:**

Entrada:
```text
9000
8000
```
Saída:
```text
9000
```

Entrada:
```text
8000
9000
```
Saída:
```text
9000
```

Entrada:
```text
5000
5000
```
Saída:
```text
5000
```

**Casos de teste privados:**

Entrada:
```text
120
3500
```
Saída:
```text
3500
```

Entrada:
```text
15000
14999
```
Saída:
```text
15000
```

Entrada:
```text
1
2
```
Saída:
```text
2
```
