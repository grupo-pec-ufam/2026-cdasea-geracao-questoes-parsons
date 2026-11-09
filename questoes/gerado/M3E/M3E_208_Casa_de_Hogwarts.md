**Título:** M3E Casa de Hogwarts

**Enunciado:**

O Chapéu Seletor de Hogwarts escolhe a casa de cada novo aluno a partir de um número sorteado. O programa deve informar GRIFINORIA se o número for 1, SONSERINA se o número for 2 e OUTRACASA para qualquer outro número.

Entrada:
1. número sorteado para o aluno (inteiro).

Saída:
1. casa escolhida para o aluno.

**Solução de referência:**

```python
numero = int(input("numero: "))
if numero == 1:
    print("GRIFINORIA")
elif numero == 2:
    print("SONSERINA")
else:
    print("OUTRACASA")
```

**Casos de teste públicos:**

Entrada:
```text
1
```
Saída:
```text
GRIFINORIA
```

Entrada:
```text
2
```
Saída:
```text
SONSERINA
```

Entrada:
```text
3
```
Saída:
```text
OUTRACASA
```

**Casos de teste privados:**

Entrada:
```text
0
```
Saída:
```text
OUTRACASA
```

Entrada:
```text
7
```
Saída:
```text
OUTRACASA
```

Entrada:
```text
-1
```
Saída:
```text
OUTRACASA
```
