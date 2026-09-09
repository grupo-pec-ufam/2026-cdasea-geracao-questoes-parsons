### 1. Título: Validação do Tempero

Verificação de ingredientes para o sistema de cozinha inteligente.

---

### 2. Enunciado:

Maria está preparando um prato e o sistema da cozinha inteligente precisa verificar se o tempero principal inserido foi a páprica, para garantir o sabor ideal da receita. Escreva um programa que leia o nome do tempero, compare a palavra inserida e informe o status da receita.

Entrada: um texto representando o nome do tempero.

Saída: Receita salva. se o tempero for igual a "paprica"; Falta sabor. se o tempero for diferente.

Tópico: Estrutura condicional composta (if/else).

---

### 3. Solução:

```python
tempero = input("Tempero: ")
if tempero == "paprica":
    print("Receita salva.")
else:
    print("Falta sabor.")
````

---

### 4. Explicação:
Para resolver este problema, o programa precisa tomar uma decisão com base no texto que o usuário digitar.
Primeiro, o programa usa a função input() para ler o nome do tempero e guarda esse texto na variável tempero.
Em seguida, a estrutura condicional if verifica se o conteúdo dessa variável é perfeitamente igual à palavra "paprica". Para fazer essa comparação, é obrigatório utilizar o operador de igualdade dupla == (lembre-se: um único = serve apenas para atribuir/guardar um valor na variável, não para comparar).
Se a palavra for exatamente igual, o programa entra no bloco do if e imprime "Receita salva.". Caso o usuário digite qualquer outra palavra (ou até mesmo "Paprica" com letra maiúscula), a condição do if será falsa. Quando isso acontece, o bloco else (senão) entra em ação automaticamente, imprimindo "Falta sabor.".

---

### 5. Casos de teste:
Públicos:

Entrada: paprica  
Saída: Receita salva. (ramo if, igualdade exata)

Entrada: sal  
Saída: Falta sabor. (ramo else, palavra diferente)

Entrada: oregano   
Saída: Falta sabor. (ramo else, palavra diferente)

Privados:

Entrada: Paprica  
Saída: Falta sabor. (ramo else, case sensitive)

Entrada: paprica  
Saída: Falta sabor. (ramo else, espaço extra no final)

Entrada: pimenta  
Saída: Falta sabor. (ramo else)

---

### 6. Distratores:

```python
if tempero = "paprica":    # DISTRATOR do fragmento 'if tempero == "paprica":' | Concepção 1: atribuição (=) no lugar de ==
````

---

### 7. Dicas de resolução:
Use == para comparar igualdade exata.

Lembre-se de que letras maiúsculas e minúsculas são tratadas como caracteres diferentes em Python.

---

### 8. Tópicos abordados:
Condicional composta (if/else), Operadores relacionais, Comparação de strings.
