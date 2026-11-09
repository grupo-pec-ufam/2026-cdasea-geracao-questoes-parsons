**Título:** M3E Turno do RU

**Enunciado:**

Considere que o RU da UFAM serve dois turnos de refeição, e que o estudante informa o turno digitando um número. O programa deve informar ALMOCO se o número for 1, JANTAR se o número for 2 e FECHADO para qualquer outro número.

Entrada:
1. número do turno informado pelo estudante (inteiro).

Saída:
1. refeição servida no turno informado.

**Solução de referência:**

```python
turno = int(input("turno: "))
if turno == 1:
    print("ALMOCO")
elif turno == 2:
    print("JANTAR")
else:
    print("FECHADO")
```

**Casos de teste públicos:**

Entrada:
```text
1
```
Saída:
```text
ALMOCO
```

Entrada:
```text
2
```
Saída:
```text
JANTAR
```

Entrada:
```text
3
```
Saída:
```text
FECHADO
```

**Casos de teste privados:**

Entrada:
```text
0
```
Saída:
```text
FECHADO
```

Entrada:
```text
5
```
Saída:
```text
FECHADO
```

Entrada:
```text
-2
```
Saída:
```text
FECHADO
```
