# logica_de_programacao2

Repositório do 2° Termo de Análise e Desenvolvimento de Sistemas (ADS), contendo atividades e exercícios de Lógica de Programação 2, abordando conceitos de Banco de Dados (BCD), Linguagem de Marcação (LIMA) e Programação Back-End (PBE).

## Descrição do projeto

Este projeto reúne exercícios, desafios e mini atividades desenvolvidas durante as aulas de:

- BCD: banco de dados, modelagem e SQL;
- LIMA: HTML, estrutura de páginas web e elementos de marcação;
- PBE: JavaScript, lógica de programação, entrada/saída, condicionais e arrays.

A organização foi feita por módulos e aulas, com foco em prática e desenvolvimento progressivo das competências da disciplina.

## Tecnologias utilizadas

- JavaScript
- Node.js
- npm
- HTML
- SQL
- Python
- Git e GitHub
- Biblioteca `readline-sync` para interação no terminal

## Estrutura de pastas

```text
logica_de_programacao2/
├── BCD/
│   ├── aula1.py
│   ├── cafeteria.sql
│   └── clinica_medica/
│       └── clinica.sql
├── LIMA/
│   ├── da.html
│   ├── aula1/
│   │   ├── Projeto/
│   │   │   ├── cardapio.html
│   │   │   ├── equipe.html
│   │   │   ├── estoque.html
│   │   │   ├── funcionarios.htm
│   │   │   ├── index.htm
│   │   │   ├── index.html
│   │   │   ├── pedidos.html
│   │   │   └── programa.htm
│   └── aula2/
│       ├── index.html
│       ├── index2.html
│       └── imagens/
├── PBE/
│   ├── aula1/
│   │   ├── atividade_final.js
│   │   ├── aula1.js
│   │   ├── aula2.js
│   │   ├── aula3.js
│   │   ├── aula4.js
│   │   ├── desafio1.js
│   │   └── desafio2.js
│   ├── aula2/
│   │   ├── package.json
│   │   ├── desafio/
│   │   │   ├── desafio1.js
│   │   │   ├── desafio2.js
│   │   │   ├── desafio3.js
│   │   │   ├── desafio4.js
│   │   │   └── desafio5.js
│   │   └── EX/
│   │       ├── ex1.js
│   │       ├── ex2.js
│   │       ├── ex3.js
│   │       └── ex4.js
│   ├── aula3/
│   │   ├── teste.js
│   │   ├── array/
│   │   │   ├── array.js
│   │   │   ├── array2.js
│   │   │   └── package.json
│   │   └── EX/
│   │       ├── ex5.js
│   │       └── package.json
│   ├── aula4/
│   │   ├── js.js
│   │   ├── desafio/
│   │   │   ├── desafio1.js
│   │   │   ├── desafio2.js
│   │   │   ├── desafio3.js
│   │   │   └── desafio4.js
│   │   └── EX/
│   │       ├── Ex1.js
│   │       ├── Ex2.js
│   │       └── Ex3.js
│   └── aula5_sistemas/
│       ├── d.js
│       ├── Logistica/
│       │   ├── app.js
│       │   ├── calculadoraFrete.js
│       │   └── package.json
│       └── oficina/
│           ├── app.js
│           ├── funcoesOficina.js
│           └── package.json
├── README.md
├── texto_para_gerar_readme
└── .git/
```

## Resumo dos exercícios por aula

### BCD

- `BCD/aula1.py`: atividade relacionada à modelagem de clientes e definição de atributos, com foco em noções de chave primária e estrutura de entidades.
- `BCD/cafeteria.sql`: script SQL para criação de tabela de cafeteria, com exemplo de dados e organização de banco de dados.

### LIMA

- `LIMA/aula1/index.htm`: introdução ao HTML, estruturas básicas e uso de tags.
- `LIMA/aula1/equipe.html`: página de equipe com marcação em HTML.
- `LIMA/aula1/Projeto/`: conjunto de páginas para um projeto de cafeteria, incluindo `index.html`, `cardapio.html`, `estoque.html`, `funcionarios.htm`, `pedidos.html` e `programa.htm`.

### PBE

#### Aula 1

- `aula1.js`: primeiro contato com JavaScript e mensagens no terminal.
- `aula2.js`: continuação da lógica básica em JavaScript.
- `aula3.js` e `aula4.js`: exercícios de aprendizagem e desenvolvimento de scripts.
- `atividade_final.js`: atividade integradora da aula.
- `desafio1.js` e `desafio2.js`: desafios propostos para prática.

#### Aula 2

- `EX/ex1.js` a `ex4.js`: exercícios de leitura de dados e validação de crédito/entrada de usuário.
- `desafio/`: desafios extra com lógica e condicionais.
- `package.json`: arquivo de dependências com `readline-sync`.

#### Aula 3

- `array/array.js` e `array2.js`: atividades com arrays e manipulação de dados.
- `EX/ex5.js`: exercício final da aula 3.
- `teste.js`: arquivo de teste e prática adicional.

#### Aula 4

- `js.js`: exercícios gerais de JavaScript.
- `desafio/`: desafios avançados com 4 exercícios (desafio1.js a desafio4.js).
- `EX/Ex1.js`, `Ex2.js`, `Ex3.js`: exercícios práticos da aula.

#### Aula 5 - Sistemas

- `Logistica/`: projeto de sistema de logística com cálculo de frete.
  - `app.js`: aplicação principal do sistema de logística.
  - `calculadoraFrete.js`: módulo para cálculo de frete.
  - `package.json`: dependências do projeto.
- `oficina/`: projeto de sistema de oficina.
  - `app.js`: aplicação principal do sistema de oficina.
  - `funcoesOficina.js`: módulo com funções específicas da oficina.
  - `package.json`: dependências do projeto.

## Como executar os arquivos com Node.js

Certifique-se de ter o Node.js instalado no computador.

1. Verifique a instalação:

```bash
node -v
npm -v
```

2. Navegue até a pasta do exercício:

```bash
cd PBE/aula1
```

3. Execute o arquivo JavaScript:

```bash
node aula1.js
```

4. Para arquivos que usam dependências externas, instale os pacotes primeiro:

```bash
npm install
```

Exemplo de execução em uma pasta com `readline-sync`:

```bash
cd PBE/aula2
npm install
node EX/ex1.js
```

## Instruções de Git

Inicialize o repositório (se necessário):

```bash
git init
```

Adicione os arquivos:

```bash
git add .
```

Crie um commit:

```bash
git commit -m "Primeiro commit do projeto"
```

Conecte ao GitHub:

```bash
git remote add origin <URL_DO_REPOSITORIO>
```

Envie as alterações:

```bash
git push -u origin main
```

Se o branch padrão for `master`, use:

```bash
git branch -M master
git push -u origin master
```

## Autor

- Keynan Fellipe dos santos

## Observação

Este repositório foi montado como material de estudo e prática acadêmica, com foco em exercícios de lógica, desenvolvimento web e introdução ao backend com JavaScript.
