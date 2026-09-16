**1. Título:** `M3E O Chakra de Naruto`

**2. Enunciado:**

Naruto está prestes a enfrentar um adversário e precisa verificar quanto chakra ainda possui para decidir qual jutsu pode usar.

* Se o chakra for maior ou igual a 80, imprima `Rasengan liberado!`.
* Se o chakra for maior ou igual a 40, imprima `Kage Bunshin liberado!`.
* Caso contrário, imprima `Chakra insuficiente.`.

Escreva um programa que leia o chakra disponível e informe qual jutsu é liberado, encerrando sempre com uma mensagem de fim de turno.

**Entrada:**

1. Quantidade inteira de chakra disponível.

**Saída:**

1. Jutsu disponível ou mensagem de chakra insuficiente.
2. `Fim do turno de Naruto.`

**3. Solução de referência:**

```python
chakra = int(input("Chakra: "))

if chakra >= 80:
    print("Rasengan liberado!")

elif chakra >= 40:
    print("Kage Bunshin liberado!")

else:
    print("Chakra insuficiente.")

print("Fim do turno de Naruto.")
```

**4. Casos de teste:**

**Públicos:**

Entrada:

```text
10
```

Saída:

```text
Chakra insuficiente.
Fim do turno de Naruto.
```

Entrada:

```text
40
```

Saída:

```text
Kage Bunshin liberado!
Fim do turno de Naruto.
```

Entrada:

```text
80
```

Saída:

```text
Rasengan liberado!
Fim do turno de Naruto.
```

**Privados:**

Entrada:

```text
79
```

Saída:

```text
Kage Bunshin liberado!
Fim do turno de Naruto.
```

Entrada:

```text
1
```

Saída:

```text
Chakra insuficiente.
Fim do turno de Naruto.
```

Entrada:

```text
99
```

Saída:

```text
Rasengan liberado!
Fim do turno de Naruto.
```
