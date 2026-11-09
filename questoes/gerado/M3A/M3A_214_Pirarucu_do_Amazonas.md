**Título:** M3A Pirarucu do Amazonas

**Enunciado:**

Um biólogo mede peixes em um rio do Amazonas. Para o pirarucu, ele classifica como adulto o peixe com 100 quilos ou mais e como jovem o peixe com menos de 100 quilos. Peixes de outras espécies não são classificados. O programa deve informar ADULTO se a espécie for PIRARUCU e o peso for 100 quilos ou mais, JOVEM se a espécie for PIRARUCU e o peso for menor que 100 quilos, e OUTRAESPECIE se a espécie não for PIRARUCU.

Entrada:
1. espécie do peixe, em letras maiúsculas (string).
2. peso do peixe, em quilos (inteiro).

Saída:
1. classificação do peixe.

**Solução de referência:**

```python
especie = input("especie: ")
peso = int(input("peso: "))
if especie == "PIRARUCU":
    if peso >= 100:
        print("ADULTO")
    else:
        print("JOVEM")
else:
    print("OUTRAESPECIE")
```

**Casos de teste públicos:**

Entrada:
```text
PIRARUCU
100
```
Saída:
```text
ADULTO
```

Entrada:
```text
PIRARUCU
99
```
Saída:
```text
JOVEM
```

Entrada:
```text
TAMBAQUI
150
```
Saída:
```text
OUTRAESPECIE
```

**Casos de teste privados:**

Entrada:
```text
pirarucu
120
```
Saída:
```text
OUTRAESPECIE
```

Entrada:
```text
TAMBAQUI
5
```
Saída:
```text
OUTRAESPECIE
```

Entrada:
```text
PIRARUCU
200
```
Saída:
```text
ADULTO
```
