## 1. Título: Vendas de Stardew Valley

## 2. Enunciado:
Um fazendeiro vai vender sua colheita. O lucro depende do preço base do vegetal multiplicado pela qualidade da
safra. Por fim, uma taxa municipal (imposto) é descontada conforme o lucro bruto.
Escreva um programa que calcule o ganho real.
Fórmula: \[ total = preco\_base imes qualidade \]

**Entrada:** o preco base, em número decimal.
**Entrada 2:** o multiplicador de qualidade em decimal.
**Regras de imposto:** Se o lucro for 500.0 ou maior, abate 50.0 e imprime Safra de iridio. Se for entre 200.0(inclusos) e 499.9, reduz 10.0 e imprime Safra de ouro. Caso contrário, o desconto é zero, e imprime Safra comum.
**Saída:** exiba a mensagem Lucro final: seguida pelo valor arredondado para duas casas decimais.

**Tópico:** Estruturas condicionais encadeadas com operações aritméticas.


```python
preco = float(input("Preco base: "))
qualidade = float(input("Qualidade: "))
total = preco * qualidade
if total >= 500.0:
final = total - 50.0
print("Safra de iridio.")
elif total >= 200.0:
final = total - 10.0
print("Safra de ouro.")
else:
final = total
print("Safra comum.")
arredondado = round(final, 2)
print("Lucro final:")
print(arredondado)
```


## 5. Casos de teste:
### Públicos:

Entrada: 400.0 / 2.0 -> Saída: Safra de iridio. Lucro final: 750.0 (ramo if)

Entrada: 150.0 / 2.0 -> Saída: Safra de ouro. Lucro final: 290.0 (ramo elif)

Entrada: 50.0 / 1.5 -> Saída: Safra comum. Lucro final: 75.0 (ramo else)

### Privados:

Entrada: 250.0 / 2.0 -> Saída: Safra de iridio. Lucro final: 450.0 (borda inferior do if)

Entrada: 100.0 / 2.0 -> Saída: Safra de ouro. Lucro final: 190.0 (borda inferior do elif)

Entrada: 199.9 / 1.0 -> Saída: Safra comum. Lucro final: 199.9 (borda superior do else)

## 6. Distratores:

```python
if total >= 200.0: # DISTRATOR do fragmento "if total >= 500.0:" |
Concepção 6: Ordem das condições cria ramo morto
elif total >= 200.0 # DISTRATOR do fragmento "elif total >= 200.0:" |
Concepção 3: Ausência dos dois-pontos após a condição
```
## 7. Dicas de resolução:

Sempre trate os cálculos de maior grandeza no topo da sua cadeia de verificação. A função nativa
round(numero, casas) mantém precisão de decimais, ideal para valores monetários.

## 8. Tópicos abordados: 
Expressões aritméticas, Estruturas condicionais encadeadas.

