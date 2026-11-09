**Título:** M3A Livros da Biblioteca

**Enunciado:**

Na biblioteca da UFAM, cada livro tem uma quantidade de exemplares, e alguns deles ficam reservados. Os exemplares disponíveis para empréstimo são os que sobram depois das reservas. Uma turma de 20 estudantes quer pegar um exemplar para cada pessoa. O programa deve informar ESGOTADO se não houver exemplar disponível (zero ou menos), ATENDIDO se houver 20 exemplares disponíveis ou mais, e PARCIAL se houver exemplares disponíveis, mas menos de 20.

Fórmula: `disponiveis = exemplares - reservados`

Entrada:
1. quantidade total de exemplares do livro (inteiro).
2. quantidade de exemplares reservados (inteiro).

Saída:
1. situação do empréstimo para a turma.

**Solução de referência:**

```python
exemplares = int(input("exemplares: "))
reservados = int(input("reservados: "))
disponiveis = exemplares - reservados
if disponiveis <= 0:
    print("ESGOTADO")
else:
    if disponiveis >= 20:
        print("ATENDIDO")
    else:
        print("PARCIAL")
```

**Casos de teste públicos:**

Entrada:
```text
30
10
```
Saída:
```text
ATENDIDO
```

Entrada:
```text
30
11
```
Saída:
```text
PARCIAL
```

Entrada:
```text
5
5
```
Saída:
```text
ESGOTADO
```

**Casos de teste privados:**

Entrada:
```text
3
5
```
Saída:
```text
ESGOTADO
```

Entrada:
```text
50
0
```
Saída:
```text
ATENDIDO
```

Entrada:
```text
21
2
```
Saída:
```text
PARCIAL
```
