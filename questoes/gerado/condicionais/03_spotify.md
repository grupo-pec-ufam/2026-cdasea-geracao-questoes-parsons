### 1. Título: Limite de Pulos no Spotify

Controle de restrição de reprodução em contas gratuitas.

---

### 2. Enunciado:

Um usuário está ouvindo uma playlist misturando os maiores sucessos de Armandinho e Tarcísio do Acordeon no Spotify. Em contas gratuitas, o aplicativo impõe um limite restrito: o ouvinte pode pular no máximo 6 músicas a cada hora. Escreva um programa que leia a quantidade de pulos já realizados pelo usuário nessa hora e determine o que acontecerá quando ele tentar pular de faixa novamente.

Entrada: um número inteiro representando a quantidade de pulos já realizados.

Saída: Proxima faixa. se a quantidade de pulos for menor que 6; Limite atingido. se a quantidade de pulos for maior ou igual a 6.

Tópico: Estrutura condicional composta (if/else).

---

### 3. Solução:

```python
pulos = int(input("Pulos realizados: "))
if pulos < 6:
    print("Proxima faixa.")
else:
    print("Limite atingido.")
````

---

### 4. Explicação:
Para resolver esse problema, o sistema precisa verificar se o usuário já esgotou a sua cota de pulos.    
A função `input()` faz a leitura do dado, e a função `int()` converte esse texto em um número inteiro, guardando-o na variável `pulos`.  
A estrutura condicional `if` testa se o número de pulos registrados é estritamente menor que `<` 6. Como o limite máximo é 6, se o usuário já pulou 6 vezes, ele não tem mais o direito de pular novamente naquela hora. Portanto, se ele tiver 5 pulos ou menos, a condição é verdadeira e o programa exibe "Proxima faixa.". Se ele tiver 6 pulos ou mais, a condição do `if` falha e o fluxo do código cai automaticamente no `else` (senão), imprimindo "Limite atingido.".

---

### 5. Casos de teste:

**Públicos:**
* **Entrada:** `3` ➔ **Saída:** `Proxima faixa.` *(ramo if, limite ainda não foi atingido)*
* **Entrada:** `8` ➔ **Saída:** `Limite atingido.` *(ramo else, ultrapassou o limite)*
* **Entrada:** `6` ➔ **Saída:** `Limite atingido.` *(ramo else, borda exata, cota esgotada)*

**Privados:**
* **Entrada:** `5` ➔ **Saída:** `Proxima faixa.` *(ramo if, limite superior do bloco verdadeiro)*
* **Entrada:** `7` ➔ **Saída:** `Limite atingido.` *(ramo else, primeiro valor falso além da borda)*
* **Entrada:** `0` ➔ **Saída:** `Proxima faixa.` *(ramo if, nenhum pulo realizado ainda)*
---

6. Distratores:

```python
if pulos <= 6:    # DISTRATOR do fragmento 'if pulos < 6:' | Concepção 1: erro de borda (<= no lugar de <). Se o aluno já tiver 6 pulos, o programa autoriza o sétimo pulo incorretamente.
```

---

### 7. Dicas de resolução:
Lembre-se de usar a função `int()` para converter a entrada, pois comparações matemáticas exigem tipos numéricos, e não texto.  

Preste muita atenção ao limite: se a regra diz "pular no máximo 6 músicas", ao atingir o número 6 a ação já deve ser bloqueada. Use o operador `<` para permitir apenas valores inferiores ao limite.

---

### 8. Tópicos abordados:
Condicional composta (if/else), Operadores relacionais, Conversão de tipos (int), Lógica de restrição de borda.
