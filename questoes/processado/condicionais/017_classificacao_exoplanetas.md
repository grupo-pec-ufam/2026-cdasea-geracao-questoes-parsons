
## 1. Título
`Classificacao de Exoplaneta`

---

## 2. Enunciado

Cientistas classificam exoplanetas com base em sua densidade média relativa, calculada dividindo-se a massa pelo cubo do raio do planeta. 
Escreva um programa que leia a massa e o raio  de um exoplaneta, calcule sua densidade e imprima a classificação correspondente e a densidade.

**cassificação:**

* **densidade maior ou igual a 5**: `Rochoso`
* **densidade maior ou igual a 2 e menor que 5**: `Gasoso`
* **caso contrário (menor que 2)**: `Gelado`

### Fórmula
$$ densidade = \frac{massa}{raio^3}$$

**Entradas:**
1. `massa` (float): Massa do exoplaneta em relação à Terra.
2. `raio` (float): Raio do exoplaneta em relação à Terra.

**Saída:**
* A classificação do exoplaneta (`Rochoso`, `Gasoso` ou `Gelado`).
* A densidade do exoplaneta arredondada para 2 casas decimais

## 4. Solução de Referência (Python)

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

print(round(densidade,2))
```

## 4. *Observação:* 
O programa pressupõe entradas válidas com raio estritamente positivo (raio>0).

---

## 6. Casos de Teste

### Públicos
| Entrada (`massa` / `raio`) | Densidade Calculada | Saída Esperada | Ramo Executado |
| :--- | :--- | :--- | :--- |
| `10.0` / `1.0` | $10.000$  | `Rochoso` / $10.00$ | `if` ($\ge 5$) |
| `2.5` / `1.0` | $2.500$ | `Gasoso` / $2.50$ | `elif` ($\ge 2$) |
| `5.0` / `1.5` | $1.481$ | `Gelado` / $1.48$ | `else` ($< 2$) |

### Privados (Testes de Borda)
| Entrada (`massa` / `raio`) | Densidade Calculada | Saída Esperada | Observação / Limite |
| :--- | :--- | :--- | :--- |
| `5.0` / `1.0` | $5.000$ | `Rochoso` / $5.00$ | Limite exato superior ($\ge 5$) |
| `4.999` / `1.0` | $4.999$ | `Gasoso` / $4.99$ | Logo abaixo do limite superior ($< 5$) |
| `2.0` / `1.0` | $2.000$ | `Gasoso`  / $2.00$| Limite exato inferior ($\ge 2$) |
| `1.999` / `1.0` | $1.999$ | `Gelado` / $1.99$ | Logo abaixo do limite inferior ($< 2$) |

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
