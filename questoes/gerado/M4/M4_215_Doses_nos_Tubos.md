**Título:** M4 Doses nos Tubos

**Enunciado:**

Em um laboratório, 10 tubos de ensaio são enchidos em sequência: o tubo de número i recebe i vezes a dose-base de reagente. O programa deve mostrar o volume de cada tubo, um por linha, do tubo 1 ao tubo 10, e depois a palavra FIM.

Fórmula: `volume = dose * i`

Entrada:
1. dose-base de reagente, em mililitros (inteiro).

Saída:
1. volume de cada tubo, em mililitros (inteiro).
2. mensagem de encerramento do programa.

**Solução de referência:**

```python
dose = int(input("dose: "))
i = 1
while i <= 10:
    volume = dose * i
    print(volume)
    i = i + 1
print("FIM")
```

**Casos de teste públicos:**

Entrada:
```text
1
```
Saída:
```text
1
2
3
4
5
6
7
8
9
10
FIM
```

Entrada:
```text
5
```
Saída:
```text
5
10
15
20
25
30
35
40
45
50
FIM
```

Entrada:
```text
12
```
Saída:
```text
12
24
36
48
60
72
84
96
108
120
FIM
```

**Casos de teste privados:**

Entrada:
```text
7
```
Saída:
```text
7
14
21
28
35
42
49
56
63
70
FIM
```

Entrada:
```text
100
```
Saída:
```text
100
200
300
400
500
600
700
800
900
1000
FIM
```

Entrada:
```text
3
```
Saída:
```text
3
6
9
12
15
18
21
24
27
30
FIM
```
