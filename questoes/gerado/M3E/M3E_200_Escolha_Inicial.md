**Título:** M3E Escolha Inicial

**Enunciado:**

No início de Pokémon, o Professor Carvalho pede que o treinador escolha seu primeiro companheiro digitando um número. O programa deve informar PLANTA se o número for 1, FOGO se o número for 2 e INVALIDA para qualquer outro número.

Entrada:
1. número digitado pelo treinador (inteiro).

Saída:
1. resultado da escolha do treinador.

**Solução de referência:**

```python
numero = int(input("numero: "))
if numero == 1:
    print("PLANTA")
elif numero == 2:
    print("FOGO")
else:
    print("INVALIDA")
```

**Casos de teste públicos:**

Entrada:
```text
1
```
Saída:
```text
PLANTA
```

Entrada:
```text
2
```
Saída:
```text
FOGO
```

Entrada:
```text
3
```
Saída:
```text
INVALIDA
```

**Casos de teste privados:**

Entrada:
```text
0
```
Saída:
```text
INVALIDA
```

Entrada:
```text
10
```
Saída:
```text
INVALIDA
```

Entrada:
```text
-4
```
Saída:
```text
INVALIDA
```
