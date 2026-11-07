**Título:** M2 Portao do Olimpo

**Enunciado:**

Os portões do Olimpo só se abrem para quem disser a palavra secreta, que é ambrosia, escrita exatamente assim, em letras minúsculas. O programa deve informar ABERTO se a palavra dita for exatamente a palavra secreta, e FECHADO caso contrário.

Entrada:
1. palavra dita diante do portão (string).

Saída:
1. situação do portão.

**Solução de referência:**

```python
palavra = input("palavra: ")
if palavra == "ambrosia":
    print("ABERTO")
else:
    print("FECHADO")
```

**Casos de teste públicos:**

Entrada:
```text
ambrosia
```
Saída:
```text
ABERTO
```

Entrada:
```text
nectar
```
Saída:
```text
FECHADO
```

Entrada:
```text
Ambrosia
```
Saída:
```text
FECHADO
```

**Casos de teste privados:**

Entrada:
```text
ambrosi
```
Saída:
```text
FECHADO
```

Entrada:
```text
AMBROSIA
```
Saída:
```text
FECHADO
```

Entrada:
```text
olimpo
```
Saída:
```text
FECHADO
```
