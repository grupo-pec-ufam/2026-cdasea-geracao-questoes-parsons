**Título:** M1 Ficha do Aprendiz

**Enunciado:**

Na forja do Olimpo, Hefesto cadastra seus aprendizes e, todo ano, reajusta o pagamento deles em 10%. O programa deve mostrar, em uma única linha e separados por espaço, o nome do aprendiz, a idade e o pagamento já reajustado. O pagamento reajustado deve ser arredondado para duas casas decimais com `round()`.

Fórmula: `reajuste = pagamento * 1.1`

Entrada:
1. nome do aprendiz, em uma só palavra (string).
2. idade do aprendiz, em anos (inteiro).
3. pagamento atual, em dracmas (real).

Saída:
1. nome do aprendiz.
2. idade do aprendiz (inteiro).
3. pagamento reajustado, com duas casas decimais (real).

**Solução de referência:**

```python
nome = input("nome: ")
idade = int(input("idade: "))
pagamento = float(input("pagamento: "))
reajuste = round(pagamento * 1.1, 2)
print(nome, idade, reajuste)
```

**Casos de teste públicos:**

Entrada:
```text
Icaro
17
100
```
Saída:
```text
Icaro 17 110.0
```

Entrada:
```text
Dedalo
45
250.5
```
Saída:
```text
Dedalo 45 275.55
```

Entrada:
```text
Atena
22
80
```
Saída:
```text
Atena 22 88.0
```

**Casos de teste privados:**

Entrada:
```text
Hermes
19
1000
```
Saída:
```text
Hermes 19 1100.0
```

Entrada:
```text
Eros
16
33.33
```
Saída:
```text
Eros 16 36.66
```

Entrada:
```text
Pan
25
1234.56
```
Saída:
```text
Pan 25 1358.02
```
