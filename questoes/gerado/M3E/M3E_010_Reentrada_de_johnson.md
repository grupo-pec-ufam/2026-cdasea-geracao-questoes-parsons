## 1. Título: Reentrada de Johnson 

## 2. Enunciado:

Katherine Johnson calcula o combustível necessário para a reentrada de uma cápsula espacial, com base na distância restante e no consumo por quilômetro da nave.

Escreva um programa que leia a distância restante e o consumo por km, calcule o combustível necessário (arredondado a 2 casas decimais) e informe o nível de alerta.

$$combustivel = distancia \times consumo$$

**Entrada 1:** distância restante, em km (real). **Entrada 2:** consumo, em litros por km (real).

**Saída:** se o combustível for maior ou igual a 500, imprima Reabastecer; se estiver entre 200 e 500, imprima Nivel alerta; caso contrário, imprima Nivel seguro.

**Tópico:** Condicional encadeada com cálculo e arredondamento.

## 3. Solução de referência:

```python
distancia = float(input("Distancia km: "))
consumo = float(input("Consumo l/km: "))
combustivel = round(distancia * consumo, 2)
if combustivel >= 500:
    print("Reabastecer")
elif combustivel >= 200:
    print("Nivel alerta")
else:
    print("Nivel seguro")
```

## 5. Casos de teste:

Públicos:

Entrada: 100 / 6 → Saída: Reabastecer (combustivel=600.0, ramo if)
Entrada: 50 / 5 → Saída: Nivel alerta (combustivel=250.0, ramo elif)
Entrada: 10 / 5 → Saída: Nivel seguro (combustivel=50.0, ramo else)

Privados:

Entrada: 100 / 5 → Saída: Reabastecer (combustivel=500.0, borda exata do if)
Entrada: 40 / 5 → Saída: Nivel alerta (combustivel=200.0, borda exata do elif)
Entrada: 1 / 1 → Saída: Nivel seguro (combustivel=1.0, valor mínimo)

## 6. Distratores (marcados):

```python
if combustivel > 500:              # DISTRATOR do fragmento "if combustivel >= 500:" | Concepção 2: erro de borda (> no lugar de >=)
```

```python
elif combustivel >= 200                 # DISTRATOR do fragmento "elif combustivel >= 200:" | Concepção 3: ausência dos dois-pontos
```

## 7. Tópicos abordados: Condicional encadeada (elif), conversão de tipos, arredondamento com round(), operadores aritméticos.