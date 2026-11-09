**Título:** M3A Hercules e a Hidra

**Enunciado:**

Hércules enfrenta a Hidra, um monstro cujas cabeças renascem quando são cortadas, a menos que o corte seja selado com fogo. Ele só ousa lutar se sua força for 90 ou mais. O programa deve informar FUGIR se a força for menor que 90, HIDRAVENCIDA se a força for 90 ou mais e Hércules tiver uma tocha, e HIDRARENASCE se a força for 90 ou mais e ele não tiver tocha.

Entrada:
1. força de Hércules (inteiro).
2. situação da tocha (inteiro; 1 significa que Hércules tem a tocha e qualquer outro valor significa que não tem).

Saída:
1. resultado do encontro com a Hidra.

**Solução de referência:**

```python
forca = int(input("forca: "))
tocha = int(input("tocha: "))
if forca >= 90:
    if tocha == 1:
        print("HIDRAVENCIDA")
    else:
        print("HIDRARENASCE")
else:
    print("FUGIR")
```

**Casos de teste públicos:**

Entrada:
```text
90
1
```
Saída:
```text
HIDRAVENCIDA
```

Entrada:
```text
90
0
```
Saída:
```text
HIDRARENASCE
```

Entrada:
```text
89
1
```
Saída:
```text
FUGIR
```

**Casos de teste privados:**

Entrada:
```text
100
1
```
Saída:
```text
HIDRAVENCIDA
```

Entrada:
```text
50
0
```
Saída:
```text
FUGIR
```

Entrada:
```text
95
2
```
Saída:
```text
HIDRARENASCE
```
