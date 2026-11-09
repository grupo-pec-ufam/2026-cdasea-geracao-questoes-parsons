**Título:** M4 Ano da Maquina do Tempo

**Enunciado:**

Doc Brown precisa programar a máquina do tempo para o ano de 1985. Enquanto o ano digitado não for 1985, a máquina rejeita o valor e pede o ano novamente. O programa deve continuar pedindo o ano até que 1985 seja digitado e, então, informar VIAGEM INICIADA.

Entrada:
1. anos digitados, um por vez, até que 1985 seja digitado (inteiro).

Saída:
1. situação da máquina do tempo.

**Solução de referência:**

```python
ano = int(input("ano: "))
while ano != 1985:
    ano = int(input("ano: "))
print("VIAGEM INICIADA")
```

**Casos de teste públicos:**

Entrada:
```text
1985
```
Saída:
```text
VIAGEM INICIADA
```

Entrada:
```text
1955
1985
```
Saída:
```text
VIAGEM INICIADA
```

Entrada:
```text
2015
1885
1985
```
Saída:
```text
VIAGEM INICIADA
```

**Casos de teste privados:**

Entrada:
```text
0
1985
```
Saída:
```text
VIAGEM INICIADA
```

Entrada:
```text
1984
1986
1985
```
Saída:
```text
VIAGEM INICIADA
```

Entrada:
```text
-1985
1985
```
Saída:
```text
VIAGEM INICIADA
```
