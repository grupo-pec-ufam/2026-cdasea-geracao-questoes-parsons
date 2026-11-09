**Título:** M3A Teias do Aranha

**Enunciado:**

No jogo do Homem-Aranha, Peter Parker precisa de cartuchos de teia para balançar pela cidade. Se não tiver nenhum cartucho, ele não consegue lançar teias. Se tiver cartuchos, a força do lançamento depende da energia dele: com 50% ou mais o lançamento é forte, e com menos de 50% é fraco. O programa deve informar SEMTEIA se a quantidade de cartuchos for zero, TEIAFORTE se houver cartuchos e a energia for 50% ou mais, e TEIAFRACA se houver cartuchos e a energia for menor que 50%.

Entrada:
1. quantidade de cartuchos de teia (inteiro, zero ou mais).
2. energia de Peter, em porcentagem (inteiro).

Saída:
1. situação do lançamento de teia.

**Solução de referência:**

```python
cartuchos = int(input("cartuchos: "))
energia = int(input("energia: "))
if cartuchos == 0:
    print("SEMTEIA")
else:
    if energia >= 50:
        print("TEIAFORTE")
    else:
        print("TEIAFRACA")
```

**Casos de teste públicos:**

Entrada:
```text
0
80
```
Saída:
```text
SEMTEIA
```

Entrada:
```text
3
50
```
Saída:
```text
TEIAFORTE
```

Entrada:
```text
3
49
```
Saída:
```text
TEIAFRACA
```

**Casos de teste privados:**

Entrada:
```text
5
100
```
Saída:
```text
TEIAFORTE
```

Entrada:
```text
1
0
```
Saída:
```text
TEIAFRACA
```

Entrada:
```text
2
20
```
Saída:
```text
TEIAFRACA
```
