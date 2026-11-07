**Título:** M2 Chamada Alfabetica

**Enunciado:**

Na chamada de uma turma da UFAM, o professor lê os nomes em ordem alfabética, como em um dicionário. O programa deve mostrar os dois nomes lidos, um por linha, começando pelo que vem antes na ordem alfabética.

Entrada:
1. primeiro nome, em uma só palavra, começando com letra maiúscula e sem acentos (string).
2. segundo nome, diferente do primeiro, em uma só palavra, começando com letra maiúscula e sem acentos (string).

Saída:
1. nome que vem primeiro na ordem alfabética.
2. nome que vem depois na ordem alfabética.

**Solução de referência:**

```python
nome1 = input("nome 1: ")
nome2 = input("nome 2: ")
if nome1 < nome2:
    print(nome1)
    print(nome2)
else:
    print(nome2)
    print(nome1)
```

**Casos de teste públicos:**

Entrada:
```text
Ana
Bruno
```
Saída:
```text
Ana
Bruno
```

Entrada:
```text
Bruno
Ana
```
Saída:
```text
Ana
Bruno
```

Entrada:
```text
Carlos
Carla
```
Saída:
```text
Carla
Carlos
```

**Casos de teste privados:**

Entrada:
```text
Ana
Ananias
```
Saída:
```text
Ana
Ananias
```

Entrada:
```text
Zeus
Atena
```
Saída:
```text
Atena
Zeus
```

Entrada:
```text
Maria
Mario
```
Saída:
```text
Maria
Mario
```
