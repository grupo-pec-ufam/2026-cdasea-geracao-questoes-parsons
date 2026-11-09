**Título:** M3E Ferramenta no Minecraft

**Enunciado:**

No Minecraft, antes de sair para minerar, o jogador escolhe a ferramenta digitando um número. O programa deve informar PICARETA se o número for 1, MACHADO se o número for 2 e PA para qualquer outro número.

Entrada:
1. número da ferramenta escolhida pelo jogador (inteiro).

Saída:
1. ferramenta escolhida pelo jogador.

**Solução de referência:**

```python
ferramenta = int(input("ferramenta: "))
if ferramenta == 1:
    print("PICARETA")
elif ferramenta == 2:
    print("MACHADO")
else:
    print("PA")
```

**Casos de teste públicos:**

Entrada:
```text
1
```
Saída:
```text
PICARETA
```

Entrada:
```text
2
```
Saída:
```text
MACHADO
```

Entrada:
```text
3
```
Saída:
```text
PA
```

**Casos de teste privados:**

Entrada:
```text
0
```
Saída:
```text
PA
```

Entrada:
```text
9
```
Saída:
```text
PA
```

Entrada:
```text
-4
```
Saída:
```text
PA
```
