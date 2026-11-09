**Título:** M3A Observacao de Galileu

**Enunciado:**

Galileu só observa o céu quando as nuvens permitem. Se as nuvens cobrirem mais de 30% do céu, ele desiste da noite. Com o céu limpo o bastante, ele aponta o telescópio para a Lua se ela estiver visível, ou para as estrelas se ela não estiver. O programa deve informar CEUFECHADO se a cobertura de nuvens for maior que 30%, OBSERVARLUA se a cobertura for 30% ou menos e a Lua estiver visível, e OBSERVARESTRELAS se a cobertura for 30% ou menos e a Lua não estiver visível.

Entrada:
1. cobertura de nuvens no céu, em porcentagem (inteiro).
2. visibilidade da Lua (inteiro; 1 significa que a Lua está visível e qualquer outro valor significa que não está).

Saída:
1. decisão de Galileu para a noite.

**Solução de referência:**

```python
cobertura = int(input("cobertura: "))
lua = int(input("lua: "))
if cobertura > 30:
    print("CEUFECHADO")
else:
    if lua == 1:
        print("OBSERVARLUA")
    else:
        print("OBSERVARESTRELAS")
```

**Casos de teste públicos:**

Entrada:
```text
10
1
```
Saída:
```text
OBSERVARLUA
```

Entrada:
```text
10
0
```
Saída:
```text
OBSERVARESTRELAS
```

Entrada:
```text
31
1
```
Saída:
```text
CEUFECHADO
```

**Casos de teste privados:**

Entrada:
```text
30
1
```
Saída:
```text
OBSERVARLUA
```

Entrada:
```text
30
2
```
Saída:
```text
OBSERVARESTRELAS
```

Entrada:
```text
100
0
```
Saída:
```text
CEUFECHADO
```
