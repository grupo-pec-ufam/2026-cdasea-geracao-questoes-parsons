### 1. Título: Validação do Tempero

Verificação de ingredientes para o sistema de cozinha inteligente.

---

### 2. Enunciado:

Zabelê está preparando um prato e o sistema da cozinha inteligente precisa verificar se o tempero principal inserido foi a páprica, para garantir o sabor ideal da receita. Escreva um programa que leia o nome do tempero, compare a palavra inserida e informe o status da receita.

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
