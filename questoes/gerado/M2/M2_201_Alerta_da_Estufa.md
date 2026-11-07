**Título:** M2 Alerta da Estufa

**Enunciado:**

Em uma estufa de pesquisa de biologia, as plantas sensíveis sofrem quando a temperatura passa de 35 graus Celsius. O programa deve mostrar ALERTA somente se a temperatura lida for maior que 35. Em qualquer caso, o programa deve mostrar também a temperatura lida.

Entrada:
1. temperatura da estufa, em graus Celsius (inteiro).

Saída:
1. aviso de temperatura alta, mostrado apenas quando necessário.
2. temperatura registrada, em graus Celsius (inteiro).

**Solução de referência:**

```python
temperatura = int(input("temperatura: "))
if temperatura > 35:
    print("ALERTA")
print(temperatura)
```

**Casos de teste públicos:**

Entrada:
```text
40
```
Saída:
```text
ALERTA
40
```

Entrada:
```text
35
```
Saída:
```text
35
```

Entrada:
```text
20
```
Saída:
```text
20
```

**Casos de teste privados:**

Entrada:
```text
36
```
Saída:
```text
ALERTA
36
```

Entrada:
```text
28
```
Saída:
```text
28
```

Entrada:
```text
50
```
Saída:
```text
ALERTA
50
```
