**Título:** M1 Nome do Pokemon

**Enunciado:**

O Professor Carvalho está cadastrando os Pokémon que encontrou. Para cada um, o programa deve mostrar quantas letras tem o nome, o nome escrito em letras maiúsculas e quantas vezes uma letra escolhida aparece nesse nome.

Entrada:
1. nome do Pokémon, em letras minúsculas e sem espaços (string).
2. letra a ser procurada, em minúscula (string).

Saída:
1. quantidade de letras do nome (inteiro).
2. nome em letras maiúsculas.
3. quantidade de vezes que a letra aparece no nome (inteiro).

**Solução de referência:**

```python
nome = input("nome: ")
letra = input("letra: ")
print(len(nome))
print(nome.upper())
print(nome.count(letra))
```

**Casos de teste públicos:**

Entrada:
```text
pikachu
a
```
Saída:
```text
7
PIKACHU
1
```

Entrada:
```text
bulbasaur
u
```
Saída:
```text
9
BULBASAUR
2
```

Entrada:
```text
charmander
r
```
Saída:
```text
10
CHARMANDER
2
```

**Casos de teste privados:**

Entrada:
```text
squirtle
z
```
Saída:
```text
8
SQUIRTLE
0
```

Entrada:
```text
eevee
e
```
Saída:
```text
5
EEVEE
4
```

Entrada:
```text
mew
w
```
Saída:
```text
3
MEW
1
```
