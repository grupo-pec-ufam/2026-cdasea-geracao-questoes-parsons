## 1. Título: Frete promocional

## 2. Enunciado:
Uma loja online deseja incentivar compras maiores e oferece custo zero no envio para os clientes
que ultrapassarem uma meta de gastos. Compras abaixo dessa meta pagam uma taxa fixa.
Leia o valor total da compra. Se o valor for igual ou maior que 150.00, informe que o frete é
gratuito. Caso contrário, informe que será cobrado o frete padrão.

**Entrada:** Um valor decimal.

**Saída:** Imprima Frete gratuito se o requisito for atendido, ou Frete padrão se não for.

**Tópico:** Condicional composta com if/else.

## 3. Solução:

```python
valor = float(input("Valor (R$): "))
if valor >= 150.00:
print("Frete gratuito")
else:
print("Frete padrao")
```
## 5. Casos de teste:
## Públicos

Caso 1: Entrada: 200.0 | Saída: Frete gratuito (Cobre ramo if)
Caso 2: Entrada: 150.0 | Saída: Frete gratuito (Cobre borda do if)
Caso 3: Entrada: 149.9 | Saída: Frete padrao (Cobre ramo else, borda inferior)

## Privados:

Caso 1: Entrada: 10.5 | Saída: Frete padrao (Cobre ramo else)
Caso 2: Entrada: 150.1 | Saída: Frete gratuito (Cobre ramo if)
Caso 3: Entrada: 0.0 | Saída: Frete padrao (Cobre ramo else)

## 6. Fragmentos de Parsons:
```python
if valor >= 150.00:
valor = float(input("Valor (R$): "))
else:
print("Frete padrao")
print("Frete gratuito")
```

## 7. Distratores:
```python
else valor < 150.00: (Relativo à linha 4 | Concepção: else tratado como se aceitasse
condição)
if valor > 150.00: (Relativo à linha 2 | Concepção: Operador de comparação com erro
de borda)
```
## 8. Dicas de resolução
Estruturas if/else são usadas para decisões mutuamente exclusivas. O else funciona como o
"caso contrário" e nunca recebe uma verificação matemática própria, devendo possuir apenas os :.