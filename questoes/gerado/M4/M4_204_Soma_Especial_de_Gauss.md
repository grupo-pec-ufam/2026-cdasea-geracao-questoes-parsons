**Título:** M4 Soma Especial de Gauss

**Enunciado:**

O matemático Gauss, ainda criança, ficou famoso por somar números com rapidez. Para treinar, ele soma os números de 1 até um limite, mas apenas os que são múltiplos de um certo número (um número é múltiplo de outro quando a divisão entre eles tem resto zero). O programa deve mostrar essa soma.

Entrada:
1. limite da soma (inteiro, maior que zero).
2. número do qual os valores somados devem ser múltiplos (inteiro, maior que zero).

Saída:
1. soma dos múltiplos (inteiro).

**Solução de referência:**

```python
limite = int(input("limite: "))
numero = int(input("numero: "))
soma = 0
i = 1
while i <= limite:
    if i % numero == 0:
        soma = soma + i
    i = i + 1
print(soma)
```

**Casos de teste públicos:**

Entrada:
```text
10
3
```
Saída:
```text
18
```

Entrada:
```text
20
5
```
Saída:
```text
50
```

Entrada:
```text
6
7
```
Saída:
```text
0
```

**Casos de teste privados:**

Entrada:
```text
100
10
```
Saída:
```text
550
```

Entrada:
```text
15
1
```
Saída:
```text
120
```

Entrada:
```text
30
4
```
Saída:
```text
112
```
