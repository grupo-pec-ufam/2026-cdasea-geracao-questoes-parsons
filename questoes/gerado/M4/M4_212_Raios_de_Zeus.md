**Título:** M4 Raios de Zeus

**Enunciado:**

Zeus lança raios sobre as ilhas numeradas de 1 até um limite, mas poupa as ilhas cujo número é múltiplo de um certo número (um número é múltiplo de outro quando a divisão entre eles tem resto zero), pois elas são consagradas a Atena. O programa deve mostrar a soma dos números das ilhas atingidas pelos raios, isto é, das que não foram poupadas.

Entrada:
1. número da última ilha (inteiro, maior que zero).
2. número cujos múltiplos são poupados (inteiro, maior que zero).

Saída:
1. soma dos números das ilhas atingidas (inteiro).

**Solução de referência:**

```python
limite = int(input("limite: "))
multiplo = int(input("multiplo: "))
soma = 0
i = 1
while i <= limite:
    if i % multiplo != 0:
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
37
```

Entrada:
```text
10
2
```
Saída:
```text
25
```

Entrada:
```text
5
6
```
Saída:
```text
15
```

**Casos de teste privados:**

Entrada:
```text
12
4
```
Saída:
```text
54
```

Entrada:
```text
1
1
```
Saída:
```text
0
```

Entrada:
```text
20
5
```
Saída:
```text
160
```
