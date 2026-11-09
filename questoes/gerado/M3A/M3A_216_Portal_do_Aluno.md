**Título:** M3A Portal do Aluno

**Enunciado:**

O portal do aluno da UFAM confere primeiro a matrícula. Só se ela for a cadastrada, 20260001, o portal confere a senha, que deve ser ufam (em letras minúsculas). O programa deve informar MATRICULAINVALIDA se a matrícula for diferente da cadastrada (sem olhar a senha), ACESSOLIBERADO se a matrícula e a senha estiverem corretas, e SENHAINCORRETA se a matrícula estiver correta mas a senha estiver errada.

Entrada:
1. matrícula digitada (string).
2. senha digitada (string).

Saída:
1. resposta do portal.

**Solução de referência:**

```python
matricula = input("matricula: ")
senha = input("senha: ")
if matricula != "20260001":
    print("MATRICULAINVALIDA")
else:
    if senha == "ufam":
        print("ACESSOLIBERADO")
    else:
        print("SENHAINCORRETA")
```

**Casos de teste públicos:**

Entrada:
```text
20260001
ufam
```
Saída:
```text
ACESSOLIBERADO
```

Entrada:
```text
20260001
UFAM
```
Saída:
```text
SENHAINCORRETA
```

Entrada:
```text
20250002
ufam
```
Saída:
```text
MATRICULAINVALIDA
```

**Casos de teste privados:**

Entrada:
```text
20250002
teste
```
Saída:
```text
MATRICULAINVALIDA
```

Entrada:
```text
2026001
ufam
```
Saída:
```text
MATRICULAINVALIDA
```

Entrada:
```text
20260001
ufam2
```
Saída:
```text
SENHAINCORRETA
```
