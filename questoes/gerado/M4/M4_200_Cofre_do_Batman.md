**Título:** M4 Cofre do Batman

**Enunciado:**

O cofre da Batcaverna só abre quando o código correto, 1939, é digitado. Se o código digitado estiver errado, o cofre pede o código novamente. O programa deve continuar pedindo o código até que o correto seja digitado e, então, informar COFRE ABERTO.

Entrada:
1. códigos digitados, um por vez, até que o código correto seja digitado (inteiro).

Saída:
1. situação do cofre.

**Solução de referência:**

```python
codigo = int(input("codigo: "))
while codigo != 1939:
    codigo = int(input("codigo: "))
print("COFRE ABERTO")
```

**Casos de teste públicos:**

Entrada:
```text
1939
```
Saída:
```text
COFRE ABERTO
```

Entrada:
```text
1
1939
```
Saída:
```text
COFRE ABERTO
```

Entrada:
```text
5
6
7
1939
```
Saída:
```text
COFRE ABERTO
```

**Casos de teste privados:**

Entrada:
```text
0
-1939
1939
```
Saída:
```text
COFRE ABERTO
```

Entrada:
```text
1938
1940
1939
```
Saída:
```text
COFRE ABERTO
```

Entrada:
```text
10000
1939
```
Saída:
```text
COFRE ABERTO
```
