### 1. Título: Carga do Mjolnir

Verificação de energia acumulada para o ataque especial do Thor.

---

### 2. Enunciado:
Durante a Batalha de Nova York, Thor está canalizando os raios da tempestade para dentro do seu martelo, o Mjolnir. O ataque especial em área só pode ser desferido se a quantidade de energia acumulada for estritamente maior que 5000 unidades. Escreva um programa que leia o valor de energia canalizada e informe ao Deus do Trovão se ele já pode realizar o ataque.

**Entradas:**
 Energia acumulada:
   1. Grandeza: Energia
   2. Unidade de medida: Unidades
   3. Tipo: Inteiro

**Saídas:**
 Status do golpe:
   1. Grandeza: Mensagem de estado
   2. Unidade de medida: N/A
   3. Tipo: String

Tópico: Estrutura condicional composta (if/else).

---

### 3. Solução:

```python
energia = int(input("Energia: "))
if energia > 5000:
    print("Golpe liberado.")
else:
    print("Carregando.")
```

---

### 4. Casos de teste:

**Públicos:**
* **Entrada:** `8000` ➔ **Saída:** `Golpe liberado.` *(ramo if, energia muito acima do limite necessário)*
* **Entrada:** `3000` ➔ **Saída:** `Carregando.` *(ramo else, energia insuficiente)*
* **Entrada:** `5000` ➔ **Saída:** `Carregando.` *(ramo else, borda exata não permite o ataque)*

**Privados:**
* **Entrada:** `5001` ➔ **Saída:** `Golpe liberado.` *(ramo if, limite superior logo acima da borda)*
* **Entrada:** `4999` ➔ **Saída:** `Carregando.` *(ramo else, limite inferior logo abaixo da borda)*
* **Entrada:** `0` ➔ **Saída:** `Carregando.` *(ramo else, nenhuma energia canalizada)*

---

### 5. Distratores:
```python
if energia >= 5000:
# DISTRATOR do fragmento 'if energia > 5000:' | Concepção 1: erro de borda (>= no lugar de >), liberando o golpe precocemente quando a energia está exatamente em 5000.
```
