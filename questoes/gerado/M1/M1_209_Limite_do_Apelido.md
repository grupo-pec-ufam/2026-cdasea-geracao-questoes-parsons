**Título:** M1 Limite do Apelido

**Enunciado:**

Em um jogo online, o apelido do jogador pode ter no máximo 20 caracteres (letras e números). O programa deve mostrar a quantidade de caracteres do apelido digitado, quantos caracteres ainda poderiam ser acrescentados até chegar ao limite de 20, o apelido escrito em letras maiúsculas e quantas vezes uma letra escolhida aparece no apelido.

Fórmula: `restantes = 20 - quantidade de caracteres do apelido`

Entrada:
1. apelido do jogador, em letras minúsculas, sem espaços e com no máximo 20 caracteres (string).
2. letra a ser procurada, em minúscula (string).

Saída:
1. quantidade de caracteres do apelido (inteiro).
2. quantidade de caracteres que ainda podem ser acrescentados (inteiro).
3. apelido em letras maiúsculas.
4. quantidade de vezes que a letra aparece no apelido (inteiro).

**Solução de referência:**

```python
apelido = input("apelido: ")
letra = input("letra: ")
tamanho = len(apelido)
restantes = 20 - tamanho
print(tamanho)
print(restantes)
print(apelido.upper())
print(apelido.count(letra))
```

**Casos de teste públicos:**

Entrada:
```text
dragonslayer
a
```
Saída:
```text
12
8
DRAGONSLAYER
2
```

Entrada:
```text
zeus
e
```
Saída:
```text
4
16
ZEUS
1
```

Entrada:
```text
sacipereresaci
s
```
Saída:
```text
14
6
SACIPERERESACI
2
```

**Casos de teste privados:**

Entrada:
```text
aranha
x
```
Saída:
```text
6
14
ARANHA
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
15
EEVEE
4
```

Entrada:
```text
nome
n
```
Saída:
```text
4
16
NOME
1
```
