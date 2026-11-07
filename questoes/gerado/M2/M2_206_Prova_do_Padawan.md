**Título:** M2 Prova do Padawan

**Enunciado:**

No Templo Jedi, cada padawan faz uma prova que vale até 100 pontos. O programa deve mostrar o nome do aluno e, na linha seguinte, a palavra JEDI se ele fez 70 pontos ou mais (foi aprovado na prova) ou a palavra PADAWAN se fez menos de 70 pontos (continua em treinamento).

Entrada:
1. nome do aluno, em uma só palavra (string).
2. pontos obtidos na prova (inteiro).

Saída:
1. nome do aluno.
2. situação do aluno após a prova.

**Solução de referência:**

```python
nome = input("nome: ")
pontos = int(input("pontos: "))
if pontos >= 70:
    print(nome)
    print("JEDI")
else:
    print(nome)
    print("PADAWAN")
```

**Casos de teste públicos:**

Entrada:
```text
Obi
70
```
Saída:
```text
Obi
JEDI
```

Entrada:
```text
Anakin
69
```
Saída:
```text
Anakin
PADAWAN
```

Entrada:
```text
Yoda
100
```
Saída:
```text
Yoda
JEDI
```

**Casos de teste privados:**

Entrada:
```text
Ahsoka
45
```
Saída:
```text
Ahsoka
PADAWAN
```

Entrada:
```text
Luke
85
```
Saída:
```text
Luke
JEDI
```

Entrada:
```text
Leia
0
```
Saída:
```text
Leia
PADAWAN
```
