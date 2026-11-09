**Título:** M4 PIN do Laboratorio

**Enunciado:**

O laboratório de robótica exige um PIN para liberar o acesso, e o PIN correto é 2026. Enquanto o PIN digitado estiver errado, o sistema pede o PIN novamente. O programa deve continuar pedindo o PIN até que o correto seja digitado e, então, informar ACESSO LIBERADO.

Entrada:
1. PINs digitados, um por vez, até que o PIN correto seja digitado (inteiro).

Saída:
1. situação do acesso ao laboratório.

**Solução de referência:**

```python
pin = int(input("pin: "))
while pin != 2026:
    pin = int(input("pin: "))
print("ACESSO LIBERADO")
```

**Casos de teste públicos:**

Entrada:
```text
2026
```
Saída:
```text
ACESSO LIBERADO
```

Entrada:
```text
1234
2026
```
Saída:
```text
ACESSO LIBERADO
```

Entrada:
```text
0
1
2026
```
Saída:
```text
ACESSO LIBERADO
```

**Casos de teste privados:**

Entrada:
```text
2025
2027
2026
```
Saída:
```text
ACESSO LIBERADO
```

Entrada:
```text
-1
2026
```
Saída:
```text
ACESSO LIBERADO
```

Entrada:
```text
20260
2026
```
Saída:
```text
ACESSO LIBERADO
```
