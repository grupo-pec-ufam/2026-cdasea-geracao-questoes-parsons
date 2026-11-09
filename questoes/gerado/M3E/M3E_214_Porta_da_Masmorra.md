**Título:** M3E Porta da Masmorra

**Enunciado:**

Para abrir a porta do chefe de uma masmorra de Zelda, Link precisa ter pelo menos 3 chaves e pelo menos 5 corações de vida. O programa deve informar ENTRAR se Link tiver as duas coisas, FALTAUM se ele tiver apenas uma delas, e FALTAAMBOS se ele não tiver nenhuma das duas.

Entrada:
1. quantidade de chaves que Link possui (inteiro).
2. quantidade de corações de vida que Link possui (inteiro).

Saída:
1. situação de Link diante da porta.

**Solução de referência:**

```python
chaves = int(input("chaves: "))
coracoes = int(input("coracoes: "))
if chaves >= 3 and coracoes >= 5:
    print("ENTRAR")
elif chaves >= 3 or coracoes >= 5:
    print("FALTAUM")
else:
    print("FALTAAMBOS")
```

**Casos de teste públicos:**

Entrada:
```text
3
5
```
Saída:
```text
ENTRAR
```

Entrada:
```text
3
4
```
Saída:
```text
FALTAUM
```

Entrada:
```text
2
4
```
Saída:
```text
FALTAAMBOS
```

**Casos de teste privados:**

Entrada:
```text
2
5
```
Saída:
```text
FALTAUM
```

Entrada:
```text
10
10
```
Saída:
```text
ENTRAR
```

Entrada:
```text
0
0
```
Saída:
```text
FALTAAMBOS
```
