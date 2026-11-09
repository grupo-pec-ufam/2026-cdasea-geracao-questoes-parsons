**Título:** M3A Pouso da Apollo 11

**Enunciado:**

O controle da missão, em Houston, confere primeiro o código da missão, que deve ser apollo11. Só se o código estiver certo, ele confere a autorização de pouso, que deve ser eagle. Os dois textos devem estar em letras minúsculas. O programa deve informar MISSAODESCONHECIDA se o código for diferente de apollo11 (sem olhar a autorização), POUSOAUTORIZADO se o código e a autorização estiverem corretos, e AUTORIZACAONEGADA se o código estiver correto mas a autorização estiver errada.

Entrada:
1. código da missão (string).
2. autorização de pouso (string).

Saída:
1. resposta do controle da missão.

**Solução de referência:**

```python
codigo = input("codigo: ")
autorizacao = input("autorizacao: ")
if codigo != "apollo11":
    print("MISSAODESCONHECIDA")
else:
    if autorizacao == "eagle":
        print("POUSOAUTORIZADO")
    else:
        print("AUTORIZACAONEGADA")
```

**Casos de teste públicos:**

Entrada:
```text
apollo11
eagle
```
Saída:
```text
POUSOAUTORIZADO
```

Entrada:
```text
apollo11
columbia
```
Saída:
```text
AUTORIZACAONEGADA
```

Entrada:
```text
apollo13
eagle
```
Saída:
```text
MISSAODESCONHECIDA
```

**Casos de teste privados:**

Entrada:
```text
apollo13
columbia
```
Saída:
```text
MISSAODESCONHECIDA
```

Entrada:
```text
Apollo11
eagle
```
Saída:
```text
MISSAODESCONHECIDA
```

Entrada:
```text
apollo11
Eagle
```
Saída:
```text
AUTORIZACAONEGADA
```
