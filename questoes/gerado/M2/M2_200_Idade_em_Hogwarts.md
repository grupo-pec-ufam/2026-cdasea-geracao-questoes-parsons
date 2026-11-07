**Título:** M2 Idade em Hogwarts

**Enunciado:**

A escola de Hogwarts só aceita novos alunos a partir dos 11 anos de idade. O programa deve informar ADMITIDO se a idade da criança for 11 anos ou mais, e AGUARDE caso contrário. Em ambos os casos, ao final, o programa deve mostrar a mensagem de encerramento FIM.

Entrada:
1. idade da criança, em anos (inteiro).

Saída:
1. situação da criança na escola.
2. mensagem de encerramento do programa.

**Solução de referência:**

```python
idade = int(input("idade: "))
if idade >= 11:
    print("ADMITIDO")
else:
    print("AGUARDE")
print("FIM")
```

**Casos de teste públicos:**

Entrada:
```text
11
```
Saída:
```text
ADMITIDO
FIM
```

Entrada:
```text
10
```
Saída:
```text
AGUARDE
FIM
```

Entrada:
```text
18
```
Saída:
```text
ADMITIDO
FIM
```

**Casos de teste privados:**

Entrada:
```text
5
```
Saída:
```text
AGUARDE
FIM
```

Entrada:
```text
12
```
Saída:
```text
ADMITIDO
FIM
```

Entrada:
```text
1
```
Saída:
```text
AGUARDE
FIM
```
