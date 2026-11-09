**Título:** M3A Estado Avatar

**Enunciado:**

Na série Avatar, Aang só consegue entrar no Estado Avatar se sua energia estiver em 80% ou mais e ele estiver em perigo. Com energia suficiente, mas sem perigo, ele prefere descansar. Com energia abaixo de 80%, ele não tem força para nada. O programa deve informar ESTADOAVATAR se a energia for 80% ou mais e houver perigo, DESCANSAR se a energia for 80% ou mais e não houver perigo, e SEMENERGIA se a energia for menor que 80%.

Entrada:
1. energia de Aang, em porcentagem (inteiro).
2. situação de perigo (inteiro; 1 significa que há perigo e qualquer outro valor significa que não há).

Saída:
1. decisão de Aang.

**Solução de referência:**

```python
energia = int(input("energia: "))
perigo = int(input("perigo: "))
if energia >= 80:
    if perigo == 1:
        print("ESTADOAVATAR")
    else:
        print("DESCANSAR")
else:
    print("SEMENERGIA")
```

**Casos de teste públicos:**

Entrada:
```text
80
1
```
Saída:
```text
ESTADOAVATAR
```

Entrada:
```text
80
0
```
Saída:
```text
DESCANSAR
```

Entrada:
```text
79
1
```
Saída:
```text
SEMENERGIA
```

**Casos de teste privados:**

Entrada:
```text
100
1
```
Saída:
```text
ESTADOAVATAR
```

Entrada:
```text
95
2
```
Saída:
```text
DESCANSAR
```

Entrada:
```text
0
1
```
Saída:
```text
SEMENERGIA
```
