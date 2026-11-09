**Título:** M3A Visita a Cleopatra

**Enunciado:**

Cleópatra recebe embaixadores no palácio. Quem chega sem presente é recusado na porta. Quem traz presente é recebido, mas fica sob vigilância se vier acompanhado de mais de 50 soldados. O programa deve informar RECUSADO se o embaixador não trouxe presente, VIGIADO se trouxe presente e veio com mais de 50 soldados, e BEMVINDO se trouxe presente e veio com 50 soldados ou menos.

Entrada:
1. situação do presente (inteiro; 1 significa que trouxe presente e qualquer outro valor significa que não trouxe).
2. quantidade de soldados que acompanham o embaixador (inteiro).

Saída:
1. recepção do embaixador.

**Solução de referência:**

```python
presente = int(input("presente: "))
soldados = int(input("soldados: "))
if presente != 1:
    print("RECUSADO")
else:
    if soldados > 50:
        print("VIGIADO")
    else:
        print("BEMVINDO")
```

**Casos de teste públicos:**

Entrada:
```text
0
10
```
Saída:
```text
RECUSADO
```

Entrada:
```text
1
51
```
Saída:
```text
VIGIADO
```

Entrada:
```text
1
50
```
Saída:
```text
BEMVINDO
```

**Casos de teste privados:**

Entrada:
```text
2
100
```
Saída:
```text
RECUSADO
```

Entrada:
```text
1
0
```
Saída:
```text
BEMVINDO
```

Entrada:
```text
1
200
```
Saída:
```text
VIGIADO
```
