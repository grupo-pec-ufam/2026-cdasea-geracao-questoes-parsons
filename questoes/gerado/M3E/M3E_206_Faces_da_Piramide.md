**Título:** M3E Faces da Piramide

**Enunciado:**

Um arquiteto do antigo Egito mede os três lados do triângulo de uma das faces de uma pirâmide. Os três valores sempre formam um triângulo de verdade. O programa deve informar EQUILATERO se os três lados forem iguais, ISOSCELES se exatamente dois lados forem iguais, e ESCALENO se os três lados forem diferentes.

Entrada:
1. medida do primeiro lado, em metros (inteiro).
2. medida do segundo lado, em metros (inteiro).
3. medida do terceiro lado, em metros (inteiro).

Saída:
1. tipo do triângulo.

**Solução de referência:**

```python
lado1 = int(input("lado 1: "))
lado2 = int(input("lado 2: "))
lado3 = int(input("lado 3: "))
if lado1 == lado2 and lado2 == lado3:
    print("EQUILATERO")
elif lado1 == lado2 or lado1 == lado3 or lado2 == lado3:
    print("ISOSCELES")
else:
    print("ESCALENO")
```

**Casos de teste públicos:**

Entrada:
```text
5
5
5
```
Saída:
```text
EQUILATERO
```

Entrada:
```text
5
5
8
```
Saída:
```text
ISOSCELES
```

Entrada:
```text
3
4
5
```
Saída:
```text
ESCALENO
```

**Casos de teste privados:**

Entrada:
```text
8
5
5
```
Saída:
```text
ISOSCELES
```

Entrada:
```text
5
8
5
```
Saída:
```text
ISOSCELES
```

Entrada:
```text
7
9
12
```
Saída:
```text
ESCALENO
```
