# ME3 Classificacao de Exoplaneta

## Enunciado

Cientistas classificam exoplanetas com base em sua densidade média relativa, calculada dividindo-se a massa pelo cubo do raio do planeta.

Escreva um programa que leia a massa e o raio de um exoplaneta, calcule sua densidade e imprima a classificação correspondente e a densidade.

A classificação deve seguir as seguintes regras:

* densidade maior ou igual a 5: `Rochoso`
* densidade maior ou igual a 2 e menor que 5: `Gasoso`
* densidade menor que 2: `Gelado`

A densidade deve ser calculada pela fórmula:

`densidade = massa / (raio ** 3)`

### Entrada

1. massa (float): massa do exoplaneta em relação à Terra.
2. raio (float): raio do exoplaneta em relação à Terra.

### Saída

1. A classificação do exoplaneta (`Rochoso`, `Gasoso` ou `Gelado`).
2. A densidade do exoplaneta arredondada para 2 casas decimais.

## Solução de Referência (Python)

```python
massa = float(input("massa: "))
raio = float(input("raio: "))

densidade = massa / (raio ** 3)

if densidade >= 5:
    print("Rochoso")
elif densidade >= 2:
    print("Gasoso")
else:
    print("Gelado")

print(round(densidade, 2))
```

## Observação

O programa pressupõe entradas válidas com raio estritamente positivo (raio > 0).

## Casos de Teste

### Públicos

| Entrada      | Saída            |
| ------------ | ---------------- |
| `10.0` `1.0` | `Rochoso` `10.0` |
| `2.5` `1.0`  | `Gasoso` `2.5`   |
| `5.0` `1.5`  | `Gelado` `1.48`  |

### Privados

| Entrada       | Saída           |
| ------------- | --------------- |
| `5.0` `1.0`   | `Rochoso` `5.0` |
| `4.999` `1.0` | `Gasoso` `5.0`  |
| `2.0` `1.0`   | `Gasoso` `2.0`  |
| `1.999` `1.0` | `Gelado` `2.0`  |

---

## 7. Distratores (Erros Comuns)

```python
# DISTRATOR 1: Omissão do arredondamento requisitado
densidade = massa / (raio * 3)  # faltou um asterisco para o calculo da potência.

# DISTRATOR 2: Utilização de operador relacional incorreto (estritamente maior)
if densidade > 5:  # Erro nos valores limite (ex: 5.0 será classificado incorretamente como Gasoso)
    print("Rochoso")
```

---

## 8. Dicas de Resolução

- O operador `**` em Python executa a operação de potenciação (ex.: `raio ** 3` calcula $	{raio}^3$).
- A função embutida `round(valor, 2)` realiza o arredondamento numérico para duas casas decimais.
- Utilize operadores relacionais inclusivos (`>=`) quando os pontos limite pertencerem ao intervalo da condição em questão.

---

## 9. Tópicos Abordados

- Entrada e Saída de Dados (`input`, `print`)
- Variáveis e Tipos de Dados (`float`)
- Conversão de Tipos
- Expressões Aritméticas e Operadores (`/`, `**`)
- Operadores Relacionais (`>=`)
- Estrutura Condicional Aninhada/Composta (`if`, `elif`, `else`)
- Função embutida `round()`
