**Título:** M3A Senha da Vila da Folha

**Enunciado:**

O guarda da Vila da Folha só deixa entrar quem diz o nome do ninja registrado, naruto, e a senha da vila, rasengan, ambos em letras minúsculas. O guarda confere primeiro o nome. O programa deve informar NINJADESCONHECIDO se o nome dito não for naruto (sem olhar a senha), PORTAABERTA se o nome for naruto e a senha estiver correta, e SENHAINCORRETA se o nome for naruto mas a senha estiver errada.

Entrada:
1. nome do ninja (string).
2. senha dita pelo ninja (string).

Saída:
1. resposta do guarda.

**Solução de referência:**

```python
ninja = input("ninja: ")
senha = input("senha: ")
if ninja != "naruto":
    print("NINJADESCONHECIDO")
else:
    if senha == "rasengan":
        print("PORTAABERTA")
    else:
        print("SENHAINCORRETA")
```

**Casos de teste públicos:**

Entrada:
```text
naruto
rasengan
```
Saída:
```text
PORTAABERTA
```

Entrada:
```text
naruto
chidori
```
Saída:
```text
SENHAINCORRETA
```

Entrada:
```text
sasuke
rasengan
```
Saída:
```text
NINJADESCONHECIDO
```

**Casos de teste privados:**

Entrada:
```text
sasuke
chidori
```
Saída:
```text
NINJADESCONHECIDO
```

Entrada:
```text
Naruto
rasengan
```
Saída:
```text
NINJADESCONHECIDO
```

Entrada:
```text
naruto
Rasengan
```
Saída:
```text
SENHAINCORRETA
```
