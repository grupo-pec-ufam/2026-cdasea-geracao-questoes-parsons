# Dados

## Organização

- **`raw/`** guarda os dados **brutos**, exatamente como foram obtidos. Nunca edite estes arquivos à mão. Se precisar corrigir algo, faça por script e salve a saída em `processed/`.
- **`processed/`** guarda os dados **tratados**, sempre gerados por um script versionado. A regra é: apagar tudo em `processed/` e rodar os scripts deve reconstruir esta pasta.

## Regra de ouro: dados não vão para o Git

Por padrão, o `.gitignore` impede o envio de arquivos de dados. Motivos:

1. Arquivos grandes incham o repositório e deixam o `clone` lento.
2. Dados podem conter informação sensível (ver abaixo).

Para versionar dados de forma controlada, use **DVC** (Data Version Control), que se integra ao Git mas mantém os arquivos fora dele. Enquanto isso, guarde os dados em uma pasta compartilhada combinada com o orientador.

## Privacidade e ética (leia antes de mexer nos dados)

Alguns dados deste grupo envolvem **pessoas** (por exemplo, logs de interação de estudantes no CodeBench ou microdados educacionais). Isso significa:

- Nunca commitar dados que identifiquem estudantes, nem em `raw/` nem em `processed/`.
- Trabalhar sempre com dados anonimizados ou pseudonimizados quando o projeto exigir.
- Respeitar os termos do parecer do Comitê de Ética (CEP) associado ao projeto, quando houver.
- Em caso de dúvida sobre o que pode ou não ser compartilhado, **pergunte ao orientador antes**, não depois.

## Dicionário de dados

*Descreva aqui cada arquivo/variável relevante, para que outra pessoa entenda os dados sem adivinhar.*

| Arquivo | Descrição | Origem | Observações |
|---------|-----------|--------|-------------|
| {{arquivo.csv}} | {{o que contém}} | {{de onde veio}} | {{restrições}} |
