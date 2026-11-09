**Título:** M3A Guardiao da Floresta

**Enunciado:**

O Curupira, protetor da floresta, só deixa passar pela trilha quem se apresenta como explorador e diz a palavra secreta, jatoba, ambos em letras minúsculas. Ele confere primeiro a apresentação. O programa deve informar DESCONHECIDO se o viajante não se apresentar como explorador (sem olhar a palavra), TRILHALIBERADA se ele for explorador e disser a palavra correta, e PALAVRAERRADA se ele for explorador mas disser a palavra errada.

Entrada:
1. apresentação do viajante (string).
2. palavra secreta dita pelo viajante (string).

Saída:
1. resposta do Curupira.

**Solução de referência:**

```python
viajante = input("viajante: ")
palavra = input("palavra: ")
if viajante != "explorador":
    print("DESCONHECIDO")
else:
    if palavra == "jatoba":
        print("TRILHALIBERADA")
    else:
        print("PALAVRAERRADA")
```

**Casos de teste públicos:**

Entrada:
```text
explorador
jatoba
```
Saída:
```text
TRILHALIBERADA
```

Entrada:
```text
explorador
sapucaia
```
Saída:
```text
PALAVRAERRADA
```

Entrada:
```text
viajante
jatoba
```
Saída:
```text
DESCONHECIDO
```

**Casos de teste privados:**

Entrada:
```text
viajante
sapucaia
```
Saída:
```text
DESCONHECIDO
```

Entrada:
```text
Explorador
jatoba
```
Saída:
```text
DESCONHECIDO
```

Entrada:
```text
explorador
Jatoba
```
Saída:
```text
PALAVRAERRADA
```
