**Título:** M3E Selecao de Astronautas

**Enunciado:**

Para ser escolhido para uma missão espacial, o candidato faz dois exames, o físico e o técnico, cada um com nota de 0 a 100. O programa deve informar SELECIONADO se as duas notas forem 70 ou mais, RESERVA se apenas uma delas for 70 ou mais, e ELIMINADO se nenhuma das duas for 70 ou mais.

Entrada:
1. nota do exame físico (inteiro).
2. nota do exame técnico (inteiro).

Saída:
1. situação do candidato na seleção.

**Solução de referência:**

```python
fisico = int(input("fisico: "))
tecnico = int(input("tecnico: "))
if fisico >= 70 and tecnico >= 70:
    print("SELECIONADO")
elif fisico >= 70 or tecnico >= 70:
    print("RESERVA")
else:
    print("ELIMINADO")
```

**Casos de teste públicos:**

Entrada:
```text
80
90
```
Saída:
```text
SELECIONADO
```

Entrada:
```text
70
50
```
Saída:
```text
RESERVA
```

Entrada:
```text
30
40
```
Saída:
```text
ELIMINADO
```

**Casos de teste privados:**

Entrada:
```text
70
70
```
Saída:
```text
SELECIONADO
```

Entrada:
```text
69
70
```
Saída:
```text
RESERVA
```

Entrada:
```text
69
69
```
Saída:
```text
ELIMINADO
```
