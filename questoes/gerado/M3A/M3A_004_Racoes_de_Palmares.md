## 1. Título: Racoes de Palmares - Versao A

## 2. Enunciado:

Zumbi dos Palmares organiza o abastecimento de rações do Quilombo dos Palmares e precisa verificar se os lotes recebidos estão completos. Sabe-se que a quantidade informada nunca é negativa.

Escreva um programa que leia a quantidade de rações recebidas e informe se o lote é redondo (múltiplo exato de 10) ou quebrado.

**Entrada:** a quantidade de rações recebidas, valor inteiro maior ou igual a zero.

**Saída:** se a quantidade for múltiplo de 10, imprima Lote redondo; caso contrário, imprima Lote quebrado.

*8Tópico:** Condicional aninhada (if dentro de if).

## 3. Solução de referência:

```python
qtd = int(input("Racoes: "))
if qtd >= 0:
    if qtd % 10 == 0:
        print("Lote redondo")
    else:
        print("Lote quebrado")
```

## 5. Casos de teste:

Públicos:

Entrada: 50 → Saída: Lote redondo (ramo if interno)
Entrada: 53 → Saída: Lote quebrado (ramo else interno)
Entrada: 0 → Saída: Lote redondo (borda zero)

Privados:

Entrada: 10 → Saída: Lote redondo (múltiplo mínimo positivo)
Entrada: 99 → Saída: Lote quebrado (borda logo abaixo de múltiplo)
Entrada: 100 → Saída: Lote redondo (múltiplo maior)

## 6. Distratores (marcados):

```python
    if qtd % 10 = 0:              # DISTRATOR do fragmento "if qtd % 10 == 0:" | Concepção 1: atribuição (=) no lugar de igualdade (==)
```

```python
    else qtd % 10 != 0:           # DISTRATOR do fragmento "else:" | Concepção 5: else tratado como se aceitasse condição
```

## 7. Tópicos abordados: Condicional aninhada (if/if), operador de resto (%), operadores relacionais.