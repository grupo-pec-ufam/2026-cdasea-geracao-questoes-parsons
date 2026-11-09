**Título:** M3A Crescimento da Planta

**Enunciado:**

Em uma estufa de biologia, o crescimento de uma planta depende das horas de luz por dia e da quantidade de água. Com 6 horas de luz ou mais, a água faz diferença: com 500 mililitros ou mais a planta cresce forte, e com menos que isso cresce de forma média. Com menos de 6 horas de luz, a planta cresce fraca, não importando a quantidade de água. O programa deve informar PLANTAFORTE, PLANTAMEDIA ou PLANTAFRACA conforme o crescimento da planta, seguindo essas regras.

Entrada:
1. horas de luz por dia (inteiro).
2. quantidade de água por dia, em mililitros (inteiro).

Saída:
1. crescimento da planta.

**Solução de referência:**

```python
luz = int(input("luz: "))
agua = int(input("agua: "))
if luz >= 6:
    if agua >= 500:
        print("PLANTAFORTE")
    else:
        print("PLANTAMEDIA")
else:
    print("PLANTAFRACA")
```

**Casos de teste públicos:**

Entrada:
```text
8
600
```
Saída:
```text
PLANTAFORTE
```

Entrada:
```text
6
499
```
Saída:
```text
PLANTAMEDIA
```

Entrada:
```text
5
900
```
Saída:
```text
PLANTAFRACA
```

**Casos de teste privados:**

Entrada:
```text
6
500
```
Saída:
```text
PLANTAFORTE
```

Entrada:
```text
10
0
```
Saída:
```text
PLANTAMEDIA
```

Entrada:
```text
0
0
```
Saída:
```text
PLANTAFRACA
```
