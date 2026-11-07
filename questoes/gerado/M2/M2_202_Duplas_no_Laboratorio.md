**Título:** M2 Duplas no Laboratorio

**Enunciado:**

Na aula de laboratório de Física da UFAM, os alunos trabalham sempre em duplas. O programa deve informar COMPLETAS se for possível formar duplas com todos os alunos presentes, sem sobrar ninguém, e SOBRAUM caso contrário.

Entrada:
1. quantidade de alunos presentes na aula (inteiro, maior que zero).

Saída:
1. situação da formação das duplas.

**Solução de referência:**

```python
alunos = int(input("alunos: "))
if alunos % 2 == 0:
    print("COMPLETAS")
else:
    print("SOBRAUM")
```

**Casos de teste públicos:**

Entrada:
```text
20
```
Saída:
```text
COMPLETAS
```

Entrada:
```text
21
```
Saída:
```text
SOBRAUM
```

Entrada:
```text
2
```
Saída:
```text
COMPLETAS
```

**Casos de teste privados:**

Entrada:
```text
1
```
Saída:
```text
SOBRAUM
```

Entrada:
```text
35
```
Saída:
```text
SOBRAUM
```

Entrada:
```text
36
```
Saída:
```text
COMPLETAS
```
