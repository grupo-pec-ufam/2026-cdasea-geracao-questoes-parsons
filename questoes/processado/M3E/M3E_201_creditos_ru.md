# M3E Créditos do RU

## Enunciado

Um estudante da UFAM chega ao RU e quer saber se seus créditos são suficientes para retirar as refeições desejadas.

Escreva um programa que leia os créditos disponíveis e a quantidade de refeições desejadas e informe o status da tentativa de compra e o custo total das refeições.

Cada refeição custa 2 créditos. O custo total deve ser calculado pela fórmula:

`custo = quantidade * 2`

Se o custo total for igual a zero, imprima `Nenhuma refeição selecionada.`

Se os créditos forem suficientes para cobrir o custo, imprima `Compra autorizada.`

Caso contrário, imprima `Créditos insuficientes.`

### Entrada

1. Créditos disponíveis.
2. Quantidade de refeições desejadas.

### Saída

1. O status da compra.
2. O custo total da compra.

## Solução de Referência (Python)

```python
creditos = int(input("Créditos: "))

quantidade = int(input("Quantidade: "))

custo = quantidade * 2

if custo == 0:
    print("Nenhuma refeição selecionada.")
elif creditos >= custo:
    print("Compra autorizada.")
else:
    print("Créditos insuficientes.")

print(custo)
```

## Casos de Teste

### Públicos

| Entrada  | Saída                               |
| -------- | ----------------------------------- |
| `20` `0` | `Nenhuma refeição selecionada.` `0` |
| `20` `5` | `Compra autorizada.` `10`           |
| `5` `5`  | `Créditos insuficientes.` `10`      |

### Privados

| Entrada  | Saída                               |
| -------- | ----------------------------------- |
| `10` `5` | `Compra autorizada.` `10`           |
| `9` `5`  | `Créditos insuficientes.` `10`      |
| `0` `0`  | `Nenhuma refeição selecionada.` `0` |

**6. Tópicos abordados:**

Estrutura condicional composta (if/elif/else); Expressões aritméticas.
