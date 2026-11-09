**Título:** M3A Aneis do Sonic

**Enunciado:**

No jogo Sonic, quem junta 50 anéis ou mais pode entrar em uma fase bônus. Se, além disso, o jogador tiver coletado as 7 esmeraldas, Sonic se transforma em Super Sonic. O programa deve informar SUPERSONIC se o jogador tiver 50 anéis ou mais e as 7 esmeraldas, FASEBONUS se tiver 50 anéis ou mais, mas menos de 7 esmeraldas, e SEGUEFASE se tiver menos de 50 anéis.

Entrada:
1. quantidade de anéis coletados (inteiro).
2. quantidade de esmeraldas coletadas (inteiro, de 0 a 7).

Saída:
1. situação do jogador na fase.

**Solução de referência:**

```python
aneis = int(input("aneis: "))
esmeraldas = int(input("esmeraldas: "))
if aneis >= 50:
    if esmeraldas == 7:
        print("SUPERSONIC")
    else:
        print("FASEBONUS")
else:
    print("SEGUEFASE")
```

**Casos de teste públicos:**

Entrada:
```text
50
7
```
Saída:
```text
SUPERSONIC
```

Entrada:
```text
80
3
```
Saída:
```text
FASEBONUS
```

Entrada:
```text
20
7
```
Saída:
```text
SEGUEFASE
```

**Casos de teste privados:**

Entrada:
```text
49
7
```
Saída:
```text
SEGUEFASE
```

Entrada:
```text
50
6
```
Saída:
```text
FASEBONUS
```

Entrada:
```text
120
7
```
Saída:
```text
SUPERSONIC
```
