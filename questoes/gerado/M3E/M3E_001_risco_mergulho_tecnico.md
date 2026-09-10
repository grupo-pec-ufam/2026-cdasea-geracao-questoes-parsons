git# Questão M3E_001 — Elaborada

## 1. Título

`Risco de Mergulho Tecnico`

## 2. Enunciado

Uma equipe de mergulho técnico monitora o risco de descompressão de um mergulhador durante uma expedição em cavernas submersas. O risco depende da profundidade atingida e do tempo total de permanência submerso.

Escreva um programa que leia a profundidade atingida e o tempo de mergulho, calcule o índice de risco de descompressão e classifique a situação do mergulhador.

**A fórmula é:**

$$risco = profundidade \times \frac{tempo}{60}$$

**Classificação:**

- risco maior ou igual a 300: `Critico`
- risco maior ou igual a 100 e menor que 300: `Atencao`
- caso contrário (menor que 100): `Seguro`

**O programa deve ler:**

1. A profundidade atingida, em metros (número real).
2. O tempo total de mergulho, em minutos (número real).

**Como saída, o programa deve imprimir:**

1. A classificação do mergulho (`Critico`, `Atencao` ou `Seguro`).
2. O risco calculado, arredondado em duas casas decimais.

**Tópico:** Estrutura condicional encadeada (`if`/`elif`/`else`).

## 3. Solução de referência

```python
profundidade = float(input("profundidade: "))
tempo = float(input("tempo: "))
risco = profundidade * (tempo / 60)
if risco >= 300:
    print("Critico")
elif risco >= 100:
    print("Atencao")
else:
    print("Seguro")
print(round(risco, 2))
```

## 4. Explicação passo a passo

1. `profundidade = float(...)`: converte a profundidade lida para número real.
2. `tempo = float(...)`: converte o tempo de mergulho para número real.
3. `risco = profundidade * (tempo / 60)`: aplica a fórmula, convertendo o tempo de minutos para horas antes de multiplicar pela profundidade.
4. `if risco >= 300:`: testa o ramo mais crítico primeiro.
5. `elif risco >= 100:`: avaliado apenas se o `if` anterior for falso, evitando sobreposição de ramos.
6. `else:`: cobre todos os valores restantes (risco menor que 100).
7. `print(round(risco, 2))`: imprime o índice calculado, fora do condicional.

O programa pressupõe entradas numéricas não negativas e não trata valores inválidos.

## 5. Casos de teste

**Públicos:**

| Profundidade | Tempo | Risco | Saída esperada | Observação |
|---|---|---|---|---|
| 60 | 300 | 300.0 | `Critico` / `300.0` | ramo if |
| 30 | 200 | 100.0 | `Atencao` / `100.0` | ramo elif |
| 10 | 60 | 10.0 | `Seguro` / `10.0` | ramo else |

**Privados:**

| Profundidade | Tempo | Risco | Saída esperada | Observação |
|---|---|---|---|---|
| 30 | 600 | 300.0 | `Critico` / `300.0` | borda ≥300 |
| 30 | 599 | 299.5 | `Atencao` / `299.5` | logo abaixo de 300 |
| 20 | 300 | 100.0 | `Atencao` / `100.0` | borda ≥100 |
| 20 | 299 | 99.67 | `Seguro` / `99.67` | logo abaixo de 100 |

## 6. Distratores (marcados)

```python
if risco > 300:                  # DISTRATOR de "if risco >= 300:" | Concepção 2: erro de borda (> no lugar de >=)
elif risco >= 100                # DISTRATOR de "elif risco >= 100:" | Concepção 3: ausência dos dois-pontos
```

## 7. Dicas de resolução

Use `>=` quando o valor limite pertence ao próprio ramo da condição. Toda linha de `if`/`elif`/`else` precisa terminar com dois-pontos (`:`).

## 8. Tópicos abordados

- M3E – Estruturas condicionais encadeadas (elif)
- M1 – Variáveis e programação sequencial
